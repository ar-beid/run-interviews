using System.Collections.Generic;
using System.Linq;
using Framework;
using System;
using static System.Threading.Thread;

namespace Runner
{
    public static class Interviews        
    {

        const int SLEEP = 300;

        public static void Answer(IEnumerable<string[]> interviews)
        {
            // should contain one line
            var questionTypes = CsvReader.Questionnaire.ToArray();

            var interview = 1;

            foreach (var answers in interviews)
            {
                InterviewPage.Goto(Arguments.InterviewingUrl);

                // wait a bit to answer 1th question
                Sleep(SLEEP);

                for (var i = 0; i < answers.Length; i++)
                {
                    var questionType = questionTypes[0][i];
                    var answer = answers[i];
                    AnswerQuestion(questionType, answer);

                    // wait a bit to load next page
                    Sleep(SLEEP);
                    InterviewPage.Next();
                }

                WriteConsole(interview);
                interview++;
            }
        }

        private static void AnswerQuestion(string questionType, string answer)
        {
            answer = answer.Trim();

            switch (questionType)
            {
                case "SINGLE":
                    InterviewPage.SelectCategory(answer);
                    break;
                case "MULTI":
                    ProcessMultiCode(answer);
                    break;
                case "NUM":
                    InterviewPage.AnswerNumeric(int.Parse(answer));
                    break;
                case "OPEN":
                    InterviewPage.AnswerOpen(answer);
                    break;
                case "ALPHA":
                    InterviewPage.AnswerAlpha(answer);
                    break;
            }
        }

        private static void ProcessMultiCode(string multiAnswer)
        {
            var answers = multiAnswer.Split('|').ToList();

            foreach (var answer in answers)
            {
                InterviewPage.SelectCategory(answer.Trim());
            }
        }

        private static void WriteConsole(int interview)
        {
            Console.ForegroundColor = ConsoleColor.DarkGreen;
            Console.WriteLine($"{DateTime.Now.TimeOfDay} - {interview}");
            Console.ResetColor();
        }

    }
}
