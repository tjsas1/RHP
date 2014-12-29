﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.UserManagement;
using RHP.SessionManager;
using RHP.Common;
using System.Web.Security;
using RHP.Photos;
using RHP.Utility;
using RHP.CommunicationManagement;
using System.Collections;
using System.Data;
using RHP.StudentManagement;
using RHP.LandlordManagement;

namespace USA_Rent_House_Project.Student
{
    public partial class Student_Profile_Update_Current_House : System.Web.UI.Page
    {
        StudentHouse studentHouse = new StudentHouse();
        House house = new House();

        private User _user;

        public User user
        {
            get
            {
                _user = SessionManager.GetSession<User>(Constants.SESSION_LOGGED_USER);
                if (_user == null)
                {
                    _user = new User(); // _user = User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));
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
            LoadUserData();

            if (hdroommatestatus.Value == "Add" )
            {
                RoommateEdit.Visible = true;
            }
            else if (hdroommatestatus.Value == "Edit")
            {
                RoommateEdit.Visible = true;
                CurrentDetails.Visible = true;
            }
            
        }

        public void LoadUserData()
        {
            UserDAO userDAO = new UserDAO();

            user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null)
            {
                ViewCurrentHouseButton.Visible = true;
                UpdateCurrentHouseButton.Visible = true;

                LoadStudent(user.HouseId.Value);

                hdnLandlordId.Value = "";
                hdHouseId.Value = user.HouseId.Value.ToString();
            }
            else
            {
                CreateCurrentHouseButton.Visible = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);

            }
        }

        public void LoadStudent(Guid HouseId)
        {
            List<User> userList = RHP.UserManagement.User.SelectUserByHouseId("HouseId", HouseId, "RoleName", "student");

            DataListStudentList.DataSource = userList;
            DataListStudentList.DataBind();

        }

        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);

            HiddenField HdIsPartialUser = (HiddenField)e.Item.FindControl("hdIsPartialUser");
            HiddenField hdAspnetUserId_ = (HiddenField)e.Item.FindControl("hdAspnetUserId");
            LinkButton EditPartialUser_ = (LinkButton)e.Item.FindControl("EditPartialUser");

            bool IsPartialUser = bool.Parse(HdIsPartialUser.Value);

            if (IsPartialUser == true && (hdAspnetUserId_.Value == string.Empty || hdAspnetUserId_.Value == null))
            {
                 EditPartialUser_.Visible = true;
            }
            else
            {
                EditPartialUser_.Visible = false;
            }
        }

        protected void EditPartialUser_Command(object sender, CommandEventArgs args)
        {
            string userid = (string)args.CommandArgument;
            hdroommatestatus.Value = "Edit";
            CurrentDetails.Visible = true;
            RoomMateInfoHeader.Text = "Room-Mate Info - Edit";
            RHP.UserManagement.User _user = new RHP.UserManagement.User();
            hdUserID.Value = userid;

            _user = RHP.UserManagement.User.Select(Guid.Parse(userid));

            if (_user.IsPartialUser == true && (_user.AspnetUserId == null || _user.AspnetUserId == Guid.Empty))
            {
                

                EditPartialUserName.Text = (string.IsNullOrEmpty(_user.FirstName) ? string.Empty : _user.FirstName) + " " + (string.IsNullOrEmpty(_user.LastName) ? string.Empty : _user.LastName);
                hdEditPartialUserName.Value = EditPartialUserName.Text;

                EditPartialUserEmail.Text = string.IsNullOrEmpty(_user.PersonalEmail) ? string.Empty : _user.PersonalEmail;
                hdEditPartialUserEmail.Value = EditPartialUserEmail.Text;

                EditPartialUserCurrent.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber;
                hdEditPartialUserCurrent.Value = EditPartialUserCurrent.Text;

                RoommateEdit.Visible = true;

                Email.Text = string.IsNullOrEmpty(_user.PersonalEmail) ? string.Empty : _user.PersonalEmail;
                FirstName.Text = string.IsNullOrEmpty(_user.FirstName) ? string.Empty : _user.FirstName;
                MiddleName.Text = string.IsNullOrEmpty(_user.MiddleName) ? string.Empty : _user.MiddleName;
                LastName.Text = string.IsNullOrEmpty(_user.LastName) ? string.Empty : _user.LastName;

                MobileArea.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber.Substring(0, 3);
                Mobile1.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber.Substring(3, 3);
                Mobile2.Text = string.IsNullOrEmpty(_user.BestContactNumber) ? string.Empty : _user.BestContactNumber.Substring(6, 4);

                FirstName.Enabled = true;
                MiddleName.Enabled = true;
                LastName.Enabled = true;
                MobileArea.Enabled = true;
                Mobile1.Enabled = true;
                Mobile2.Enabled = true;
            }
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

                strMsgContent = strMsgContent + "'<b>Student housing made simple, reliable, most of all accountable..</b>' <br/><br/>";

                strMsgContent = strMsgContent + "if your are happy to join with us, Please click on the link below to create your account. it's 100% free.<br/><br/>";

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

        public bool validateemail()
        {
            bool isexist = false;
            Labelmessage.Text = "";
            if (Email.Text.Trim() != "")
            {
                User user_ = new User();

                if (user_.IsUserEmailExist(Email.Text.Trim().ToLower()))
                {
                    isexist = true;

                    if (user_.IsPartialUserEmailExist(Email.Text.Trim().ToLower()))
                    {
                        Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with Partial Account. Please enter another email.";
                    }
                    else
                    {
                        Labelmessage.Text = "Email Address : " + Email.Text.Trim().ToLower() + ", is already Registed with another Account. Please enter another email.";
                    }

                   // Labelmessage.Text = "landlord or student allready registerd for email : " + Email.Text.Trim().ToLower() + ". Please enter new details to continue..";
                  
                   
                }
                else
                {
                    isexist = false;
                    //  Labelmessage.Text = "student verified for email : " + Email.Text.Trim().ToLower();
                }
            }
            else
            {
                isexist = false;
            }

            return isexist;
        }

        protected void ButtonVerify_Click(object sender, EventArgs e)
        {
            Labelmessage.Text = "";
            if (Email.Text.Trim() != "")
            {
                User user_ = RHP.UserManagement.User.SelectUserByEmail("Email", Email.Text.Trim().ToLower(), "RoleName", "student");

                if (user_ != null)
                {

                    FirstName.Enabled = false;
                    MiddleName.Enabled = false;
                    LastName.Enabled = false;
                    MobileArea.Enabled = false;
                    Mobile1.Enabled = false;
                    Mobile2.Enabled = false;

                    if (validateemail())
                    {
                        Labelmessage.Text = "landlord or student allready registerd for email : " + Email.Text.Trim().ToLower() + ". Please enter new details to continue..";
                    }
                    else
                    {
                        Labelmessage.Text = "student verified for email : " + Email.Text.Trim().ToLower();

                        FirstName.Text = user_.FirstName;
                        MiddleName.Text = user_.MiddleName;
                        LastName.Text = user_.LastName;

                        MobileArea.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(0, 3);
                        Mobile1.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(3, 3);
                        Mobile2.Text = string.IsNullOrEmpty(user_.BestContactNumber) ? string.Empty : user_.BestContactNumber.Substring(6, 4);

                    }
                    
                }
                else
                {
                    FirstName.Text = "";
                    MiddleName.Text = "";
                    LastName.Text = "";
                    MobileArea.Text = "";
                    Mobile1.Text = "";
                    Mobile2.Text = "";

                    User user_check = new User();

                    if (validateemail())
                    {
                        FirstName.Enabled = false;
                        MiddleName.Enabled = false;
                        LastName.Enabled = false;
                        MobileArea.Enabled = false;
                        Mobile1.Enabled = false;
                        Mobile2.Enabled = false;
                    }
                    else
                    {
                        Labelmessage.Text = "can not find registered landload for email : " + Email.Text.Trim().ToLower() + ". Please enter details to continue..";
                        FirstName.Enabled = true;
                        MiddleName.Enabled = true;
                        LastName.Enabled = true;
                        MobileArea.Enabled = true;
                        Mobile1.Enabled = true;
                        Mobile2.Enabled = true;
                    }

                   
                    
                }
            }
            else
            {
                clear();

            }
        }
        
        public void clear()
        {
            Email.Text = "";
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text = "";
            MobileArea.Text = "";
            Mobile1.Text = "";
            Mobile2.Text = "";
        }

        protected void EditRommateButton_Click(object sender, EventArgs e)
        {
            if (Email.Text.Trim() == EditPartialUserEmail.Text.Trim())
            {
                if (hdroommatestatus.Value == "Edit")
                {
                    Save();
                }
                else
                {
                    Labelmessage.Text = "Please Try Again..";
                }


            }
            else if (validateemail())
            {
                Labelmessage.Text = "landlord or student allready registerd for email : " + Email.Text.Trim().ToLower() + ". Please enter new details to continue..";
            }
            else
            {
                if (hdroommatestatus.Value == "Add")
                {
                    SaveNewstudent();
                }
                else if (hdroommatestatus.Value == "Edit")
                {
                    Save();
                }
            }
           
        }

        public bool Save()
        {
            bool result = true;

            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("student");

            User user_ = new User();

            user_ = RHP.UserManagement.User.Select(Guid.Parse(hdUserID.Value));

                user_.PersonalEmail = Email.Text.Trim();
                user_.FirstName = FirstName.Text.Trim();
                user_.MiddleName = MiddleName.Text.Trim();
                user_.LastName = LastName.Text.Trim();
                user_.BestContactNumber = MobileArea.Text.Trim() + Mobile1.Text.Trim() + Mobile2.Text.Trim();

                user_.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user_.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

                if (result = user_.Save())
                {

                    //string strMsgContent = message(user_.UserId.Value, user_);

                    //string strMsgTitle = "www.ratemystudenthome.com is Requesting you to join with Us.";

                    //int rtn = SendEmail(user_.PersonalEmail, strMsgTitle, strMsgContent);

                    //if (rtn == 1)
                    //{
                    //}
                }
            

            if (result)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx';}", true);
            }
            return result;
        }

        protected void LBAddStudent_Click(object sender, EventArgs e)
        {
            hdroommatestatus.Value = "Add";
            RoomMateInfoHeader.Text = "Room-Mate Info - Add";
            RoommateEdit.Visible = true;
        }

        public bool SaveNewstudent()
        {
            bool result = true;

            aspnet_Roles aspnet_Roles_ = new aspnet_Roles();

            aspnet_Roles_ = aspnet_Roles.Select("student");

            User user_ = new User();

            user_.PersonalEmail = Email.Text.Trim();
            user_.FirstName = FirstName.Text.Trim();
            user_.MiddleName = MiddleName.Text.Trim();
            user_.LastName = LastName.Text.Trim();
            user_.BestContactNumber = MobileArea.Text.Trim() + Mobile1.Text.Trim() + Mobile2.Text.Trim();

                user_.UserId = Guid.NewGuid();
                user_.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user_.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                user_.IsPartialUser = true;
                user_.HouseId = Guid.Parse(hdHouseId.Value);
                user_.RoleId = aspnet_Roles_.RoleId;

                if (result = user_.Save())
                {
                    Save_Student_House(user_);

                    string strMsgContent = message(user_.UserId.Value, user_);

                    string strMsgTitle = "www.ratemystudenthome.com is Requesting you to join with Us.";

                    int rtn = SendEmail(user_.PersonalEmail, strMsgTitle, strMsgContent);

                    if (rtn == 1)
                    {
                    }


                }
           
            if (result)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.Save_Success + "'); window.location = '/Student/Student_Profile.aspx';}", true);
            }
            return result;
        }

        public void Save_Student_House(User user_)
        {
            // save current house for student
            user_.HouseId = Guid.Parse(hdHouseId.Value);
            user_.UpdateHouse();

            // log house details for futer use
            studentHouse.HouseId = Guid.Parse(hdHouseId.Value);
            studentHouse.UserId = user_.UserId.Value;
            studentHouse.CreatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            studentHouse.UpdatedBy = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            studentHouse.Save();


        }

    }
}