﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RHP.Common
{
    public class Constants
    {
        public static readonly string CONNECTIONSTRING = "ApplicationServices";

        //public static readonly string ACTIVATIONEMAILSUBJECT = "Ratemystudenthome.com - Action required for account activation";
        //public static readonly string FROMEMAIL = "smtpemailsetup@gmail.Com";
        //public static readonly string FROMEMAILPASSWORD = "pwd4smtpemail";
        //public static readonly string TOEMAIL = "look2cool@gmail.com";
        //public static readonly string EMAILHOST = "smtp.gmail.com";
        //public static readonly string EMAILPORT = "587";

        #region Page Path's

        public static readonly string URL_LOGIN = "~/Login.aspx";

        #endregion

        #region Stored Procedures

        public static readonly string SP_HOUSESELECT = "usp_HouseSelect";

        #endregion

        #region Sessions

        public static readonly string SESSION_SCHOOL_LIST = "SESSION_SCHOOL_LIST";
        public static readonly string SESSION_LANDLOAD_LIST = "SESSION_LANDLOAD_LIST";
        public static readonly string SESSION_STUDENT_LIST = "SESSION_STUDENT_LIST";
        public static readonly string SESSION_LOGGED_USER = "SESSION_LOGGED_USER";
        public static readonly string SESSION_LOGGED_STUDENT = "SESSION_LOGGED_STUDENT";
        public static readonly string SESSION_FEATURE_LIST = "SESSION_FEATURE_LIST";
        public static readonly string SESSION_HOUSE_LIST = "SESSION_HOUSE_LIST";
        public static readonly string SESSION_COMMENTS = "SESSION_COMMENTS";
        public static readonly string SESSION_HOUSE_COMMENTS = "SESSION_HOUSE_COMMENTS";
        public static readonly string SESSION_FEATURE_ITEMS_LIST = "SESSION_FEATURE_ITEMS_LIST";
        public static readonly string SESSION_HOUSELIST = "SESSION_HOUSELIST";
        public static readonly string SESSION_STUDENT_SPOTLIGHT = "SESSION_STUDENT_SPOTLIGHT";

        public static readonly string SESSION_HOUSE = "SESSION_HOUSE";
        #endregion

        #region Dropdown values
        public static readonly ListItem[] STUDENT_SEX_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("Male", "Male"), new ListItem("Female", "Female") };
        public static readonly ListItem[] LANDLOAD_SEX_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("Male", "Male"), new ListItem("Female", "Female") };
        public static readonly ListItem[] STUDENT_STATUS_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("Freshman", "Freshman"), new ListItem("Sophomore", "Sophomore"), new ListItem("Junior", "Junior"), new ListItem("Senior", "Senior"), new ListItem("5th Year Senior", "5th Year Senior"), new ListItem("6th Year Senior", "6th Year Senior"), new ListItem("MA ", "MA "), new ListItem("Phd", "Phd"), new ListItem("Post Grad", "Post Grad") };

       // public static readonly ListItem[] STUDENT_STATUS_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("Junior", "Junior"), new ListItem("Senior", "Senior") };
        
        public static readonly ListItem[] PREVIOUS_SCHOOL_INFO_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("High school student", "High school student"), new ListItem("Transfer student", "Transfer student") };
        public static readonly ListItem[] CURENT_MAJOR_LIST = new ListItem[] { new ListItem("--Please Select--", "-1"), new ListItem("major 1", "major 1"), new ListItem("major 2", "major 2") };

        public static readonly ListItem[] SEARCH_STUDENT_STATUS_LIST = new ListItem[] { new ListItem("--ANY--", "-1"), new ListItem("Freshman", "Freshman"), new ListItem("Sophomore", "Sophomore"), new ListItem("Junior", "Junior"), new ListItem("Senior", "Senior"), new ListItem("5th Year Senior", "5th Year Senior"), new ListItem("6th Year Senior", "6th Year Senior"), new ListItem("MA ", "MA "), new ListItem("Phd", "Phd"), new ListItem("Post Grad", "Post Grad") };
        public static readonly ListItem[] SEARCH_STUDENT_SEX_LIST = new ListItem[] { new ListItem("--ANY--", "-1"), new ListItem("Male", "Male"), new ListItem("Female", "Female") };
       
        
        #endregion

        public static readonly string SEARCH_DROPDOWN_EMPTY_ITEM_TEXT = "--ANY--";
        public static readonly string SEARCH_DROPDOWN_EMPTY_ITEM_VALUE = "-1";

        public static readonly string DROPDOWN_EMPTY_ITEM_TEXT = "--Please Select--";
        public static readonly string DROPDOWN_EMPTY_ITEM_VALUE = "-1";

        public static readonly int STUDENT_PROFILE_STARTING_YEAR = 2006;
        public static readonly int STUDENT_PROFILE_NUMBER_OF_YEARS = 20;

        public static readonly int STUDENT_PROFILE_STARTING_MONTH = 1;
        public static readonly int STUDENT_PROFILE_NUMBER_OF_MONTHS = 11;

        public static readonly int LANDLORD_PROFILE_HOUSEBUILD_STARTING_YEAR = 1950;
        public static readonly int LANDLORD_PROFILE_HOUSEBUILD_NUMBER_OF_YEARS = 100;

        public static readonly int LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS = 25;
        public static readonly int LANDLORD_PROFILE_HOUSEBUILD_BATHROOMS_MIN = 0;

        public static readonly int LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS = 25;
        public static readonly int LANDLORD_PROFILE_HOUSEBUILD_BEDROOMS_MIN = 0;

        public static readonly string QUERYSTRING_HOUSE_ID = "HouseId";

        #region UserRoles

        public static readonly Guid USER_ROLE_LANDLORD = Guid.Parse("0A3FDA72-FC47-402D-817B-445D89C4C4DF");
        public static readonly Guid USER_ROLE_STUDENT = Guid.Parse("6E712B8E-3559-40C2-A170-5E08B194AA1A");


        #endregion

        public static readonly string GOOGLE_ANALYTICS_KEY = "GoogleAnalytics";
    }
}
