using System.Linq;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using static System.Threading.Thread;

namespace Framework
{
    public static class InterviewPage
    {
        // ** driver **
        private static readonly ChromeDriverService Service =
            ChromeDriverService.CreateDefaultService();

        private static readonly IWebDriver Driver = new ChromeDriver(Service);

        public static void Goto(string url)
        {
            Driver.Url = url;
        }

        public static void Quit()
        {
            Driver.Quit();
        }

        // ** page **
        public static void SelectCategory(string label)
        {
            var elems = Driver.FindElements(By.CssSelector("div.category"));
            var target = elems.First(t => t.Text == label);
            target.Click();
        }

        public static void Next()
        {
            var button = Driver.FindElement(By.ClassName("button-next"));
            button.Click();
        }

        public static void AnswerNumeric(int value)
        {
            var box = Driver.FindElement(By.CssSelector("input.open"));
            box.SendKeys(value.ToString());
        }

        public static void AnswerOpen(string answer)
        {
            var box = Driver.FindElement(By.CssSelector("textarea.open"));
            box.SendKeys(answer);
        }

        public static void AnswerAlpha(string answer)
        {
            var box = Driver.FindElement(By.CssSelector("input.open.alpha"));
            box.SendKeys(answer);
        }
    }
}
