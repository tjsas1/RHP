﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RHP.SessionManager;
using RHP.Common;
using RHP.LandlordManagement;
using System.Web.Security;
using RHP.Photos;

namespace USA_Rent_House_Project.Land_load.Modules
{
    public partial class House_List : System.Web.UI.UserControl
    {
        House house = new House();

        private DataSet dsHouseList
        {
            get
            {
                DataSet ds;
                ds = SessionManager.GetSession<DataSet>(Constants.SESSION_HOUSELIST);

                if (ds == null)
                {
                    ds = new HouseDAO().SelectAllDataset(house.LandlordId);
                    ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };
                    Session[Constants.SESSION_HOUSELIST] = ds;
                }

                return ds;
            }

            set
            {
                DataSet ds;
                ds = new HouseDAO().SelectAllDataset(house.LandlordId);
                ds.Tables[0].PrimaryKey = new DataColumn[] { ds.Tables[0].Columns["HouseId"] };
                Session[Constants.SESSION_HOUSELIST] = ds;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            LoadHouse();
        }

        public void LoadHouse()
        {
            house.LandlordId = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            DataListHouseList.DataSource = dsHouseList;
            DataListHouseList.DataBind();

        }

        protected void DataListHouseList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DataListHouseList.SelectedIndex = e.Item.ItemIndex;

            Guid HouseId = Guid.Parse(((HiddenField)DataListHouseList.SelectedItem.FindControl("hdnHouseId")).Value);

            //Session[Constants.SESSION_HOUSE] = RHP.Utility.Generic.GetByGUID<House>(HouseId);

            string arg = e.CommandArgument.ToString();
            string name = e.CommandName.ToString();

            if (name == "ViewHouse")
            {
                Response.Redirect(string.Format("~/Land_load/Land_Load_House_info_Add .aspx?{0}={1}", Constants.QUERYSTRING_HOUSE_ID, HouseId.ToString()));
            }
            if (name == "ViewOptions")
            {
                Response.Redirect(string.Format("~/Land_load/Land_Load_House_Option_Add.aspx?{0}={1}", Constants.QUERYSTRING_HOUSE_ID, HouseId.ToString()));
            }
        }

        protected void ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Photo photo = new Photo();
            HiddenField HiddenField_ = (HiddenField)e.Item.FindControl("hdnHouseId");

            HyperLink Image_ = (HyperLink)e.Item.FindControl("HyperLinkimage");

           // Image_.ImageUrl = photo.LoadImage(Guid.Parse(HiddenField_.Value.ToString()), Enums.PhotoCategory.Profile_Picture);

            Image_.ImageUrl = photo.LoadHouseImage(Guid.Parse(Membership.GetUser().ProviderUserKey.ToString()), Guid.Parse(HiddenField_.Value.ToString()), Enums.ContextSubType.House, Enums.PhotoCategory.House_Picture);
        }
    }
}