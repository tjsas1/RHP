﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Header.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Header" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>

<div id="StidentProfileHeader" runat="server">
    <div id="HeaderImage" runat="server">
        <asp:Image ID="jmgHeaderImage" runat="server" ImageUrl="~/Images/Sample/Bannerimage.jpg" Width="970px" />
    </div>
    <div id="StudentProfileImage" runat="server">
     
         <asp:HyperLink ID="imgStudentProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px" ></asp:HyperLink> 

          <%--  <asp:Image ID="imgStudentProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px" />--%>
<%--        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="loginlinks_img" NavigateUrl="~/Student/Student_Profile_Image.aspx">View House</asp:HyperLink>  --%> 
          <asp:HyperLink ID="ProfileUserName" runat="server"></asp:HyperLink>
    </div>
    <div id="CurrentHouseImage" runat="server">
        <%--<asp:Image ID="imgCurrentHouseImage" runat="server" ImageUrl="~/Images/Sample/House.jpg" Width="100px"  />--%>
            <asp:HyperLink ID="imgCurrentHouseImage" runat="server" ImageUrl="~/Images/Sample/House.jpg" Width="100px"></asp:HyperLink> <%-- CssClass="loginlinks_img"--%>
             <asp:HyperLink ID="ProfileLandlordName" runat="server"></asp:HyperLink>
    </div>
    <div class="clear"></div>
    
    <div id="StudentRating" runat="server"  class="publicrating" >
            <h2>
                My Ratings  <dx:ASPxRatingControl ID="ASPxRating" runat="server" Enabled="false">
    </dx:ASPxRatingControl> </h2>
        </div>

</div>