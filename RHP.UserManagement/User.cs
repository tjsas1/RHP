﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Web.Security;
using RHP.Common;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using RHP.SessionManager;

namespace RHP.UserManagement
{
    public class User : Base
    {

        //These properties are required to create the user in ASP Membership tables
        public Guid? UserId { get; set; }
        public Guid? AspnetUserId { get; set; }
        public bool IsPartialUser { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string AccountLocked { get; set; }
        public bool IsFBUser { get; set; }
        public string FBAccessToken { get; set; }
        public string FBUrl { get; set; }
        public string FBProfilePictureURL { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public int? StateId { get; set; }
        public string Zip { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public string BestContactNumber { get; set; }
        public string DriversLicenseNumber { get; set; }
        public string Status { get; set; }
        public string PersonalEmail { get; set; }
        public decimal RatingValue { get; set; }
        public string FBid { get; set; }
        public string Gender { get; set; }
        public Guid? HouseId { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
        public string ReferralCode { get; set; }
        public Guid? BaseHouseRoomId { get; set; }

        public Guid RoleId { get; set; }
        private List<string> rolesList;

        public List<string> RolesList 
        {
            get 
            {
                if (rolesList == null)
                {
                    rolesList = new List<string>();
                }
                
                rolesList = Roles.GetRolesForUser(UserName).ToList<string>();
                return rolesList;
            }
        }

        public static User Select(Guid UserId)
        {
            User user = Utility.Generic.GetByGUID<User>(UserId);
            return user;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="fieldName1">string of the name of the Field. e.g. Email</param>
        /// <param name="fieldValue1">string value of the Field. e.g. name@domain.com</param>
        /// <param name="fieldName2">string RoleName e.g. RoleName</param>
        /// <param name="fieldValue2">string value of the role, e.g. student</param>
        /// <returns></returns>
        public static User SelectUserByEmail(string fieldName1, string fieldValue1, string fieldName2, string fieldValue2)
        {
            User user = Utility.Generic.GetByFieldValue<User>(fieldName1, fieldValue1, fieldName2, fieldValue2);
            return user;
        }

        public static User SelectByRoleName(string fieldName1, string fieldValue1, string fieldName2, string fieldValue2)
        {
            User user = Utility.Generic.GetByFieldValue<User>(fieldName1, fieldValue1, fieldName2, fieldValue2);
            return user;
        }

        public static List<User> SelectUserByHouseId(string fieldName1, Guid fieldValue1, string fieldName2, string fieldValue2)
        {
            return Utility.Generic.GetAllByFieldValue<User>(fieldName1, fieldValue1, fieldName2, fieldValue2);
            
        }

        public static List<User> SelectUserByBaseHouseRoomId(string fieldName1, Guid fieldValue1, string fieldName2, string fieldValue2)
        {
            return Utility.Generic.GetAllByFieldValue<User>(fieldName1, fieldValue1, fieldName2, fieldValue2);

        }

        public object AddMembershipPartialUser(string strUserName, string strPassword, string strEmail, string strQuestion, string strAnswer, bool boolAllowLogon,Guid GuidUserId, string userRole)
        {
            object objMembershipUser = false;
            try
            {
                
                MembershipCreateStatus mcstatus = new MembershipCreateStatus();

                if (!strQuestion.EndsWith("?"))
                    strQuestion = strQuestion + "?";

                Membership.CreateUser(strUserName, strPassword, strEmail, strQuestion, strAnswer, boolAllowLogon, GuidUserId, out mcstatus); 
                switch (mcstatus)
                {
                    case (MembershipCreateStatus.Success):
                        {
                            objMembershipUser = true;
                            if (userRole == "student")
                            {
                                Roles.AddUserToRole(strUserName, "student");
                            }
                            if (userRole == "landlord")
                            {
                                Roles.AddUserToRole(strUserName, "landlord");
                            }

                            // FormsAuthentication.SetAuthCookie(UserName, false);

                            break;
                        }
                    case (MembershipCreateStatus.DuplicateProviderUserKey):
                        {
                            objMembershipUser = "Internal Error. Contact Administrator";
                            break;
                        }

                    case (MembershipCreateStatus.DuplicateUserName):
                        {
                            objMembershipUser = "User Name already in system.";
                            break;
                        }
                    case (MembershipCreateStatus.InvalidPassword):
                        {
                            objMembershipUser = "Invalid Password.";
                            break;
                        }
                    case (MembershipCreateStatus.InvalidUserName):
                        {
                            objMembershipUser = "Invalid User Name";
                            break;
                        }
                    case (MembershipCreateStatus.DuplicateEmail):
                        {
                            objMembershipUser = "Email already in system.";
                            break;
                        }
                    case (MembershipCreateStatus.InvalidEmail):
                        {
                            objMembershipUser = "Invalid Email.";
                            break;
                        }
                    default:
                        {
                            objMembershipUser = "Invalid User Name";
                            break;
                        }
                }
            }
            catch (Exception ex)
            {
                objMembershipUser = false;
            }
            return objMembershipUser;
        }

        public object AddMembershipUser(string strUserName, string strPassword, string strEmail, string strQuestion, string strAnswer, bool boolAllowLogon,string userRole)
        {
            object objMembershipUser = false;
            try
            {
                //UserId = Guid.NewGuid();
                MembershipCreateStatus mcstatus = new MembershipCreateStatus();

                if (!strQuestion.EndsWith("?"))
                    strQuestion = strQuestion + "?";

                Membership.CreateUser(strUserName, strPassword, strEmail, strQuestion, strAnswer, boolAllowLogon, out mcstatus); //UserId,
                switch (mcstatus)
                {
                    case (MembershipCreateStatus.Success):
                        {
                            objMembershipUser = true;
                            if (userRole == "student")
                            {
                                Roles.AddUserToRole(strUserName, "student");
                            }
                            if (userRole == "landlord")
                            {
                                Roles.AddUserToRole(strUserName, "landlord");
                            }

                           // FormsAuthentication.SetAuthCookie(UserName, false);

                            break;
                        }
                    case (MembershipCreateStatus.DuplicateProviderUserKey):
                        {
                            objMembershipUser = "Internal Error. Contact Administrator";
                            break;
                        }

                    case (MembershipCreateStatus.DuplicateUserName):
                        {
                            objMembershipUser = "User Name already in system.";
                            break;
                        }
                    case (MembershipCreateStatus.InvalidPassword):
                        {
                            objMembershipUser = "Invalid Password.";
                            break;
                        }
                    case (MembershipCreateStatus.InvalidUserName):
                        {
                            objMembershipUser = "Invalid User Name";
                            break;
                        }
                    case (MembershipCreateStatus.DuplicateEmail):
                        {
                            objMembershipUser = "Email already in system.";
                            break;
                        }
                    case (MembershipCreateStatus.InvalidEmail):
                        {
                            objMembershipUser = "Invalid Email.";
                            break;
                        }
                    default:
                        {
                            objMembershipUser = "Invalid User Name";
                            break;
                        }
                }
            }
            catch (Exception ex)
            {
                objMembershipUser = false;
            }
            return objMembershipUser;
        }

        public string GetSeacretQuestion(string UserName)
        {
             MembershipUser u = Membership.GetUser(UserName, false);

             if (u != null)
            {
                return u.PasswordQuestion.ToString();
            }
            else
            {
                 return "";
            }
        }

        public bool AuthenticateUser()
        {
            string success = "";
            bool boolAuthenticated = false;
            try
            {
                // Authenticate Credentials
                boolAuthenticated = Membership.ValidateUser(UserName, Password);
                
                if (boolAuthenticated)
                {
                    FormsAuthentication.SetAuthCookie(UserName, false);
                    success = "True";
                }
                else
                    success = "False";

                if (success == "True")
                {
                  
                    MembershipUser newUser;
                    newUser = Membership.GetUser(UserName);
                    UserId = Guid.Parse(newUser.ProviderUserKey.ToString());
                    
                    if (newUser.IsLockedOut)
                        AccountLocked = "Account Locked Out. Max Password Attempts Reached. Please Contact Admin";

                }
            }
            catch (Exception ex)
            {

            }
            return boolAuthenticated;
        }

        /// <summary>
        /// Logout user from the system
        /// </summary>
        public void LogOut()
        {
            FormsAuthentication.SignOut();
            HttpContext.Current.Response.Redirect("~/Default.aspx", false);
        }

        public void RedirectUserFromLogin(bool isUseDefault = true)
        {
            if (isUseDefault)
            {
               //User login attempt from Fb for first time, redirect to Student Wizzard if student
                HttpContext.Current.Response.Redirect(this.RedirectToHomePageByRole(), false);
            }
            else
            {
               // FormsAuthentication.SetAuthCookie(UserName, false);
                HttpContext.Current.Response.Redirect(this.RedirectToHomePageByRole(),false);
            }
        }

        public string RedirectToWizzardPageByRole()
        {
            string URL = string.Empty;

            string role = "";

            if (RolesList != null || rolesList.Count > 0)
            {
                role = RolesList[0].ToLower();
            }

            if (role.ToLower() == "landlord")
            {
                URL = String.Format("~/Land_load/Land_load_Profile_wizard.aspx?AccessKey={0}", this.UserId.ToString());
            }
            else if (role.ToLower() == "student")
            {
                URL = String.Format("~/Student/Student_Profile_Add.aspx?AccessKey={0}", this.UserId.ToString());
            }

            return URL;
        }

        /// <summary>
        /// Where to redirect after login depending on the user role
        /// </summary>
        /// <returns></returns>
        public string RedirectToHomePageByRole()
        {
            string URL = "";
            string role = "";

            if (RolesList != null || rolesList.Count > 0)
            {
                role = RolesList[0].ToLower();
            }

            if (role.ToLower() == "admin")
            {
                URL = "~/Administrator/Default.aspx";
            }
            else if (role.ToLower() == "landlord")
            {
                URL = "~/Land_load/Land_load_Profile.aspx";
            }
            else if (role.ToLower() == "student")
            {
                URL = "~/Student/Student_Profile.aspx";
            }
            else if (role.ToLower() == "systemadmin")
            {
                URL = "~/";
            }
            else
            {
                URL = "~/";
            }

            return URL;

        }

        /// <summary>
        /// Delete user from the database.
        /// This only marks the user as IsDeleted
        /// </summary>
        /// <returns></returns>
        public bool Delete()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = (new UserDAO().Delete(this, db, transaction) && Membership.DeleteUser(this.UserName, false));

            }
            catch (Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public bool Save()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                UserDAO userDao = new UserDAO();
                if (userDao.IsUserExist(this))
                {
                    result = (new UserDAO()).Update(this, db, transaction);
                }
                else
                {
                    result = userDao.Insert(this, db, transaction);
                }

                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }


        public bool UpdateHouse()
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                UserDAO userDao = new UserDAO();
                if (userDao.IsUserExist(this))
                {
                    result = (new UserDAO()).UpdateHouse(this, db, transaction);
                }
                else
                {
                    result = false;
                }

                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }



        public bool IsExistingFbUser(string fbid)
        {
            return new UserDAO().IsFBUserExist(fbid);
        }

        public bool IsPartialUserExist(User user)
        {
            return new UserDAO().IsPartialUserExist(user);
        }


        public string GetFBUsernameByFBId(string fbid)
        {
            return new UserDAO().GetUsernameByFBId(fbid);
        }

        public bool IsUserEmailExist(string Email)
        {
            return new UserDAO().IsUserEmailExist(Email);
        }

        public bool IsPartialUserEmailExist(string Email)
        {
            return new UserDAO().IsPartialUserEmailExist(Email);
        }
    }
}
