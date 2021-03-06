﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RHP.SessionManager;
using RHP.Common;
using RHP.UserManagement;
using System.Web.Security;
using RHP.LandlordManagement;
using RHP.Photos;
using RHP.Utility;
using System.Data;

namespace USA_Rent_House_Project.Student.Modules
{
    public partial class Student_Profile_Update_Current_House_Details : System.Web.UI.UserControl
    {
        public bool IsFromWizard = false;

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
        }

        public void LoadUserData()
        {
            UserDAO userDAO = new UserDAO();
            if (Membership.GetUser() == null)
            {
                return;
            }
            user = RHP.UserManagement.User.Select(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()));

            if (user.HouseId != null || user.BaseHouseRoomId != null)
            {
                LoadLandlordData(user);
                LoadHouseData(user);
                LoadStudentData(user);
            }
            else
            {
                if (!IsFromWizard)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "window.onload = function(){ alert('" + Messages.CurrentHouseNoRecords + "'); window.location = '/Student/Student_Profile_Current_House.aspx';}", true);    
                }
            }
        }

        public void LoadLandlordData(User user_)
        {
            UserDAO userDAO = new UserDAO();

            if (user_.HouseId != null)
            {
                DataSet LandlordData = userDAO.SelectLandlordByHouseId(user.HouseId.Value);

                if (LandlordData != null && LandlordData.Tables[0].Rows.Count > 0)
                {
                    string FirstName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim();
                    string MiddleName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim();
                    string LastName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim();

                    Name.Text = FirstName + " " + MiddleName + " " + LastName;

                    Email.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim();
                    Mobile.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim();

                }

            }
            else if (user_.BaseHouseRoomId != null)
            {
                DataSet LandlordData = userDAO.SelectLandlordByBaseHouseRoomId(user.BaseHouseRoomId.Value);

                if (LandlordData != null && LandlordData.Tables[0].Rows.Count > 0)
                {
                    string FirstName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["FirstName"].ToString().Trim();
                    string MiddleName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["MiddleName"].ToString().Trim();
                    string LastName = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["LastName"].ToString().Trim();

                    Name.Text = FirstName + " " + MiddleName + " " + LastName;
                    Email.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["PersonalEmail"].ToString().Trim();
                    Mobile.Text = string.IsNullOrEmpty(LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim()) ? string.Empty : LandlordData.Tables[0].Rows[0]["BestContactNumber"].ToString().Trim();

                }
            }
        }

        public void LoadHouseData(User user_)
        {
            House house = null;
            if (user_.HouseId != null)
            {
                house = House.Select(user_.HouseId.Value);
            }
            else if (user_.BaseHouseRoomId != null)
            {
                house = House.SelectByRoomId(user_.BaseHouseRoomId.Value);
            }

            if (house != null)
            {
                if (house.StateId.HasValue)
                {
                    State state;
                    state = Generic.Get<State>(house.StateId.Value);
                    if (state != null)
                    {
                        State.Text = state.StateName;
                    }
                }
                //State.Text = house.StateId.ToString().ToLower();                     
                Address.Text = house.StreetAddress;
                City.Text = house.City;
                Zip.Text = house.Zip;
            }
        }

        public void LoadStudentData(User user_)
        {
            if (user_.HouseId.HasValue)
            {
                List<User> userList = RHP.UserManagement.User.SelectUserByHouseId("HouseId", user_.HouseId.Value, "RoleName", "student");
                DataListStudentList.DataSource = userList;
                DataListStudentList.DataBind();
            }
            else if (user_.BaseHouseRoomId.HasValue)
            {
                List<User> userList = RHP.UserManagement.User.SelectUserByBaseHouseRoomId("BaseHouseRoomId", user_.BaseHouseRoomId.Value, "RoleName", "student");
                DataListStudentList.DataSource = userList;
                DataListStudentList.DataBind();
            }
        }

        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdUserId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

            Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);
        }
    }
}