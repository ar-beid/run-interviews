using System;
using Framework;

namespace Runner
{
    public static class Run
    {
        private static void Main(string[] args)
        {
            Arguments.Get(args);

            WriteConsole("Start interviews"); 

            // do interviews
            Interviews.Answer(CsvReader.Interviews);

            // shut it down
            WriteConsole("Shut down");

            InterviewPage.Quit();

            WriteConsole("Done");
        }

        private static void WriteConsole(string msg)
        {
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(DateTime.Now);
            Console.WriteLine(msg);
            Console.ResetColor();
        }
    }
}
