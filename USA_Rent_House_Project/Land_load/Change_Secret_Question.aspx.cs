﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace USA_Rent_House_Project.Land_load
{
    public partial class Change_Secret_Question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
               // HyperLinkPublicView.NavigateUrl = "~/Student/Student_Public_Profile.aspx?AccessCode=" + Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            }
        }
    }
}