namespace Runner
{
    public static class Arguments
    {
        public static string InterviewsFile { get; private set; } =
            @"E:\kit\test\vs\run-interviews\example\reporting-test-interviews.csv";
        public static string QuestionnaireFile { get; private set; } =
            @"E:\kit\test\vs\run-interviews\example\reporting-test-questionnaire.csv";
        public static string InterviewingUrl { get; private set; } =
            @"https://red-interviewing.niposoftware-dev.com/Interviews/pjD8e/BurNU5AwxwxaXyqerHsb";

        public static void Get(string[] args)
        {
            try
            {
                InterviewingUrl = args[0];
                QuestionnaireFile = args[1];
                InterviewsFile = args[2];
            }
            catch
            {
                // do nothing
            }
        }

    }
}
