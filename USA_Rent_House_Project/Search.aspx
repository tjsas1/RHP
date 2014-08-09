﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true"
    CodeBehind="Search.aspx.cs" Inherits="USA_Rent_House_Project.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="div_Search" runat="server" visible="true">
        <p class="homeheadingsub">
            "find your next connection"</p>
        <p class="submitButton">
            <asp:Button ID="ButtonSearchHouse" runat="server" CssClass="homelargebuttons" Text="Search house"
                OnClick="ButtonSearchHouse_Click" />
        </p>
        <p class="submitButton">
            <asp:Button ID="ButtonSearchStudent" runat="server" CssClass="homelargebuttons" Text="Search student"
                OnClick="ButtonSearchStudent_Click" />
        </p>
    </div>
    <br />
    <div id="formwrapper">
        <div id="Div_Search_House" runat="server" visible="false">
            <h1>
                Search House</h1>
            <div id="forminner">
                <p>
                    <asp:Label ID="LabelGender" runat="server" AssociatedControlID="DrpGender" CssClass="form_label">Gender:</asp:Label>
                    <asp:DropDownList ID="DrpGender" runat="server" CssClass="dropDownEntry">
                        <asp:ListItem Value="male">Male</asp:ListItem>
                        <asp:ListItem Value="female">Female</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" CssClass="form_label"> School Name:</asp:Label>
                    <asp:TextBox ID="Name" runat="server" CssClass="textEntry textbox_w3"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="LabelZipcode" runat="server" AssociatedControlID="Zipcode" CssClass="form_label">Zip:</asp:Label>
                    <asp:TextBox ID="Zipcode" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="LabelDrpBedRooms" runat="server" AssociatedControlID="DrpBedRooms"
                        CssClass="form_label">Bed Rooms:</asp:Label>
                    <asp:DropDownList ID="DrpBedRooms" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="LabelBathRooms" runat="server" AssociatedControlID="DrpBathRooms"
                        CssClass="form_label">Bath Rooms:</asp:Label>
                    <asp:DropDownList ID="DrpBathRooms" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                </p>
            </div>
            <p class="submitButton">
                <asp:Button ID="FindHome" runat="server" CssClass="actionbutton" Text="Find House"
                    OnClick="FindHome_Click" />
            </p>
        </div>
        <div id="Div_Search_Student" runat="server" visible="false">
            <h1>
                Search Student</h1>
            <div id="forminner">
                <p>
                    <asp:Label ID="Label5" runat="server" AssociatedControlID="DrpGender" CssClass="form_label">Gender:</asp:Label>
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropDownEntry">
                        <asp:ListItem Value="male">Male</asp:ListItem>
                        <asp:ListItem Value="female">Female</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="LabelSchoolName" runat="server" AssociatedControlID="studentname"
                        CssClass="form_label"> Name:</asp:Label>
                    <asp:TextBox ID="studentname" runat="server" CssClass="textEntry textbox_w3"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                    <asp:TextBox ID="Zip" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="Status" CssClass="form_label">Status:</asp:Label>
                    <asp:DropDownList ID="Status" runat="server">
                        <asp:ListItem>Junior</asp:ListItem>
                    </asp:DropDownList>
                </p>
            </div>
            <p class="submitButton">
                <asp:Button ID="FindStudent" runat="server" CssClass="actionbutton" Text="Find Student"
                    OnClick="FindStudent_Click" />
            </p>
        </div>
    </div>
</asp:Content>