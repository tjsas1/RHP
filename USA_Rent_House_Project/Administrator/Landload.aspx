﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Landload.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Landload" %>
<%@ Register src="Modules/LandloadList.ascx" tagname="LandloadList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:LandloadList ID="LandloadListID" runat="server" />
</asp:Content>
