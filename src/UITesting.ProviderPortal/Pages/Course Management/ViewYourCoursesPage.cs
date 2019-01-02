using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UITesting.Framework.Helpers;

namespace UITesting.ProviderPortal.Pages.Course_Management
{
    
    public class ViewYourCoursesPage : TestSupport.BasePage 
    {
        private static String PAGE_TITLE = "Your Courses";
        public ViewYourCoursesPage(IWebDriver webDriver):base(webDriver)
        {
            SelfVerify();
        }
        protected override bool SelfVerify()
        {
            return PageInteractionHelper.VerifyPageHeading(this.GetPageHeading(), PAGE_TITLE);
        }
    }
}
