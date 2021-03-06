﻿<%@ Page Title="Student Public Profile" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Student_Public_Profile.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Public_Profile" %>

<%@ Register src="Modules/Student_Public_Profile_Header.ascx" tagname="Student_Public_Profile_Header" tagprefix="uc1" %>
<%@ Register src="Modules/Student_Public_Profile_Banner.ascx" tagname="Student_Public_Profile_Banner" tagprefix="uc2" %>
<%@ Register src="Modules/Student_Public_Profile_Data.ascx" tagname="Student_Public_Profile_Data" tagprefix="uc3" %>
<%@ Register src="Modules/Student_Profile_Comment_Add.ascx" tagname="Student_Profile_Comment_Add" tagprefix="uc5" %>
<%@ Register src="Modules/Student_Public_Profile_Comments.ascx" tagname="Student_Profile_Comments" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <uc1:Student_Public_Profile_Header ID="Student_Public_Profile_HeaderID" 
        runat="server" />
   
    <div id="RightPanel_public">
     <uc2:Student_Public_Profile_Banner ID="Student_Public_Profile_BannerID" 
        runat="server" />
    <uc3:Student_Public_Profile_Data ID="Student_Public_Profile_DataID" 
        runat="server" />
        <uc5:Student_Profile_Comment_Add ID="Student_Profile_Comment_Add1" Visible="false" runat="server" />
    <uc4:Student_Profile_Comments ID="Student_Profile_CommentsID" runat="server" />
</div>   
</asp:Content>
