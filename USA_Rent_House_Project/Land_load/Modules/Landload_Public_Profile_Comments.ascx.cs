﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.SessionManager;
using RHP.Common;
using RHP.Comments;
using System.Web.Security;
using RHP.Utility;


namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class Landload_Public_Profile_Comments : System.Web.UI.UserControl
    {

        //private DataSet dsComments
        //{
        //    get
        //    {
        //        DataSet ds;
        //        ds = SessionManager.GetSession<DataSet>(Constants.SESSION_HOUSE_COMMENTS);

        //        if (ds == null)
        //        {
        //            ds = new CommentDAO().SelectByContext(2, Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
        //            ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };
        //            Session[Constants.SESSION_HOUSE_COMMENTS] = ds;
        //        }

        //        return ds;
        //    }
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
           // if (HttpContext.Current.User.Identity.IsAuthenticated)
           // {
                 string AccessCode = Utility.GetQueryStringValueByKey(Request, "AccessCode");

                 if (AccessCode != null && AccessCode != string.Empty)
                 {
                     try
                     {
                         LoadComments(Guid.Parse(AccessCode));
                     }
                     catch (Exception ex)
                     {

                     }
                     
                 }
               
           // }
        }

        public void LoadComments(Guid AccessCode)
        {
            DataSet ds;
            ds = new CommentDAO().SelectByContext(2, AccessCode);
            ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["CommentId"] };

            DataListStudentComments.DataSource = ds.Tables[0];
            DataListStudentComments.DataBind();

        }

        //public void LoadComments(Guid AccessCode)
        //{

        //    DataListStudentComments.DataSource = dsComments.Tables[0];
        //    DataListStudentComments.DataBind();

        //}
    }
}