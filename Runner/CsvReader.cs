using System.Collections.Generic;
using Microsoft.VisualBasic.FileIO;

namespace Runner
{
    public static class CsvReader
    {
        public static IEnumerable<string[]> Interviews => ProcessCsv(Arguments.InterviewsFile);
        public static IEnumerable<string[]> Questionnaire => ProcessCsv(Arguments.QuestionnaireFile);

        private static ICollection<string[]> ProcessCsv(string fileName)
        {
            ICollection<string[]> lines = new List<string[]>();

            using (var parser = new TextFieldParser(fileName))
            {
                parser.TextFieldType = FieldType.Delimited;
                parser.SetDelimiters(";");

                while (!parser.EndOfData)
                {
                    var line = parser.ReadFields();
                    lines.Add(line);
                }
            }

            return lines;
        }

    }
}

