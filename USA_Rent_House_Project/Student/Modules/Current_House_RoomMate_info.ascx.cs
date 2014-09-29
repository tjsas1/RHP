﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using RHP.UserManagement;
using RHP.Common;
using RHP.SessionManager;
using System.Web.Security;
using RHP.StudentManagement;
using RHP.LandlordManagement;
using RHP.Utility;
using RHP.CommunicationManagement;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Current_House_RoomMate_info : System.Web.UI.UserControl
    {
      
        StudentHouse studentHouse = new StudentHouse();
        House house = new House();

        public Guid? LandlordId
        {
            get
            {
                if (string.IsNullOrEmpty(hdnLandlordId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdnLandlordId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdnLandlordId.Value = value.Value.ToString();
                }
                else
                {
                    hdnLandlordId.Value = string.Empty;
                }

            }
        }

        public Guid? HouseId
        {
            get
            {
                if (string.IsNullOrEmpty(hdHouseId.Value.Trim()))
                {
                    return null;
                }
                else
                {
                    return Guid.Parse(hdHouseId.Value.Trim());
                }
            }
            set
            {
                if (value.HasValue)
                {
                    hdHouseId.Value = value.Value.ToString();
                }
                else
                {
                    hdHouseId.Value = string.Empty;
                }

            }
        }

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User(); //_user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
                }
                else
                {
                   
                }
                Session[Constants.SESSION_LOGGED_USER] = _user;
                return _user;
            }
            set
            {
                _user = value;
                Session[Constants.SESSION_LOGGED_USER] = _user;
            }
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            LoadStudent();
        }

        public void LoadStudent()
        {

           
            if (HouseId.HasValue)
            {
               // HouseId = Guid.Parse("8313D02D-FA75-474A-A93B-0EFD3B817A88");

                List<User> userList = User.SelectUserByHouseId("HouseId", HouseId.Value, "RoleName", "student");

                DataListStudentList.DataSource = userList;
                DataListStudentList.DataBind();
            }
        }
      
        protected void CreateRommateButton_Click(object sender, EventArgs e)
        {
            GridviewRoommatelist.DataSource = CreateDataSource();
            GridviewRoommatelist.DataBind();

            clear();

            if (ViewState["CurrentTable"] != null)
            {
              //  SaveRommateButton.Enabled = true;

            }
            else
            {
              //  SaveRommateButton.Enabled = false;
               
            }
        }

        public void clear()
        {
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text= "";
            Mobile.Text = "";
        }

        ICollection CreateDataSource()
        {
            DataTable dt = null;
            DataRow dr;
            DataTable dtCurrentTable = null;

            if (ViewState["CurrentTable"] != null)
            {
                dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                dt = (DataTable)ViewState["CurrentTable"];

            }
            else
            {
                dtCurrentTable = new DataTable();
                dt = new DataTable();

                // Define the columns of the table.
                dt.Columns.Add(new DataColumn("Email", typeof(String)));
                dt.Columns.Add(new DataColumn("First Name", typeof(String)));
                dt.Columns.Add(new DataColumn("Middl eName", typeof(String)));
                dt.Columns.Add(new DataColumn("Last Name", typeof(String)));
                dt.Columns.Add(new DataColumn("Contact No", typeof(String)));
            }

            // Populate the table with sample values.
           
                dr = dt.NewRow();

                dr[0] = Email.Text.Trim();
                dr[1] = FirstName.Text.Trim();
                dr[2] = MiddleName.Text.Trim();
                dr[3] = LastName.Text.Trim();
                dr[4] = Mobile.Text.Trim();
                dt.Rows.Add(dr);
            
            DataView dv = new DataView(dt);

            ViewState["CurrentTable"] =  dt;
            return dv;
        }

        protected void RemoveRoommate_Click(object sender, EventArgs e)
        {

            LinkButton lb = (LinkButton)sender;

            GridViewRow gvRow = (GridViewRow)lb.NamingContainer;

            int rowID = gvRow.RowIndex; //+1;

            if (ViewState["CurrentTable"] != null)
            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count >= 1)
                {

                    if (gvRow.RowIndex <= dt.Rows.Count - 1)
                    {

                        //Remove the Selected Row data

                        dt.Rows.Remove(dt.Rows[rowID]);

                    }

                }

                //Store the current data in ViewState for future reference

                ViewState["CurrentTable"] = dt;

                //Re bind the GridView for the updated data

                GridviewRoommatelist.DataSource = dt;
                GridviewRoommatelist.DataBind();

            }

        }


        public bool Save()
        {
            bool result = true;

            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("student");

            foreach (GridViewRow row in GridviewRoommatelist.Rows)
            {
                user.PersonalEmail = row.Cells[1].Text;
                user.FirstName = row.Cells[2].Text;
                user.MiddleName = row.Cells[3].Text;
                user.LastName = row.Cells[4].Text;
                user.BestContactNumber = row.Cells[5].Text;

                user.UserId = Guid.NewGuid();
                user.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user.IsPartialUser = true;
                user.HouseId = HouseId.Value;
                user.RoleId = aspnet_Roles_.RoleId;

                if (result = user.Save())
                {
                    Save_Student_House();

                    string strMsgContent = message(user.UserId.Value, user);

                    string strMsgTitle = "www.ratemystudenthome.com - Request you to join with ratemystudenthome.com.";

                    int rtn = SendEmail(user.PersonalEmail, strMsgTitle, strMsgContent);

                    if (rtn == 1)
                    {
                    }

                    
                }
            }

            if (result)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile_Edit.aspx';}", true);
            }
            return result;
        }

        public void Save_Student_House()
        {
            // save current house for student
            user.HouseId = HouseId.Value;
            user.UpdateHouse();

            // log house details for futer use
            studentHouse.HouseId = HouseId.Value;
            studentHouse.UserId = user.UserId.Value;
            studentHouse.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            studentHouse.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            studentHouse.Save();


        }

        public bool Next(bool val)
        {
            if (val)
            {
                RoommateAdd.Visible = false;
            }
            return true;
        }


        protected int SendEmail(string To, string Subject, string Body)
        {

            try
            {
                string host = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_HOST);
                string fromEmail = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SMTP_FROM_EMAIL);

                EmailManager emailManager = new EmailManager(host, fromEmail);

                //Use the parameters where needed, if not required use empty
                emailManager.SendEmail(To, Subject, string.Empty, fromEmail, string.Empty, Body);

                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }

        }


        private string message(Guid ActivationKey, User _user)
        {
            string strMsgContent = string.Empty;

            try
            {
                string name = _user.FirstName + " " + _user.MiddleName + " " + _user.LastName;

                string RegisterUrl = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Student/Student_Profile_Add.aspx?ActivationKey=" + ActivationKey;
                strMsgContent = "<div style=\"border:solid 1px #efefef;\"><div style=\"width:800;border:solid " +
                                    "1px #efefef;font-weight:bold; font-family:Verdana;font-size:12px; text-align:left;" +
                                    " background-color:#efefef;\" >  <strong>Dear</strong>  <span >" + name + ", " + "</span></div>" +
                                    "<br />";

                string loginpath = SystemConfig.GetValue(RHP.Common.Enums.SystemConfig.SITEURL) + "Login.aspx?type=s";

                strMsgContent = strMsgContent + "One of your house Room-mate created account with ratemystudenthome.com, and Request you to join with ratemystudenthome.com,<br/><br/>";

                //strMsgContent = strMsgContent + "Your account details are as follows. <br/><br/>";

                //strMsgContent = strMsgContent + "Your Name:  " + name + " <br/>";

                //strMsgContent = strMsgContent + "Email : " + _user.PersonalEmail + " <br/>";

                //strMsgContent = strMsgContent + "Contact No : " + _user.BestContactNumber + " <br/>";

                //strMsgContent = strMsgContent + "Please keep these details safe for future use.<br/>";

                strMsgContent = strMsgContent + "ratemystudenthome.com is a fast growing online house rating system that support for property owener's and students to connecting with each others.<br/><br/>";

                strMsgContent = strMsgContent + "if your are happy to join with us, Please click on the link below to create your account. it's 100% free.<br/>";

                strMsgContent = strMsgContent + "<a href=" + RegisterUrl + "> Create Your www.ratemystudenthome.com Account </a>  <br/><br/>";

                strMsgContent = strMsgContent + "If you have any issues with creating your account, please email " + "<a href=\"mailto:support@ratemystudenthome.com?subject=I have issue with creating my account\">  support@ratemystudenthome.com </a><br/>";

                strMsgContent = strMsgContent + "If you have already Registred, " + "<a href=" + loginpath + "> click here </a> to login to ratemystudenthome.com. <br/>";

                strMsgContent = strMsgContent + "<br /> <strong>This is an automated response to activate your account. Please do not reply to this email.<br /><br />";

                strMsgContent = strMsgContent + "Sincerely yours,<br /> <a href=\"www.ratemystudenthome.com\">ratemystudenthome.com</a></strong><br /><br /></div>";

                strMsgContent = strMsgContent + "</br><span style=\"color:#818181; font-style:italic; font-size:12px;\">This email is confidential and is intended only for the individual named. Although reasonable precautions have been taken to ensure no viruses are present in this email, ratemystudenthome.com do not warrant that this e-mail is free from viruses or other corruptions and is not liable to the recipient or any other party should any virus or other corruption be present in this e-mail. If you have received this email in error please notify the sender.</span>";

            }
            catch (Exception ex)
            {
                strMsgContent = string.Empty;

            }
            return strMsgContent;
        }
    }
}