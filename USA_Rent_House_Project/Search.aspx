﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true"
    CodeBehind="Search.aspx.cs" Inherits="USA_Rent_House_Project.Search" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField ID="HiddenFieldCurrentStep" runat="server" />
    <div id="div_Search" runat="server" visible="true">
        <p class="homeheadingsub">
            "find your next connection"</p>
        <div class="searchbuttons">
            <asp:Button ID="ButtonSearchHouse" runat="server" CssClass="searchbuttonslarge" Text="Search house"
                OnClick="ButtonSearchHouse_Click" />
            <asp:Button ID="ButtonSearchStudent" runat="server" CssClass="searchbuttonslarge"
                Text="Search student" OnClick="ButtonSearchStudent_Click" />
            <div class="clear">
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="clear">
    </div>
    <div id="formwrapper">
        <div id="Div_Search_House" runat="server" visible="false">
            <h1>
                Search House</h1>
            <div id="forminner">
                <p>
                    <asp:Label ID="LabelName" runat="server" AssociatedControlID="DrpSchoolName" CssClass="form_label"> School Name:</asp:Label>
                    <%-- <asp:TextBox ID="Name" runat="server" CssClass="textEntry textbox_w3"></asp:TextBox>--%>
                    <dx:ASPxComboBox ID="DrpSchoolName" runat="server" Width="100%" AutoResizeWithContainer="True"
                        TextFormatString="{0} ({1}, {2})" DropDownRows="10" IncrementalFilteringMode="Contains"
                        Theme="DevEx" EnableDefaultAppearance="False" ShowShadow="False">
                        <Columns>
                            <dx:ListBoxColumn FieldName="Name" Name="Name" />
                            <dx:ListBoxColumn FieldName="StreetAddress" Name="Address" />
                            <dx:ListBoxColumn FieldName="City" Name="City" />
                        </Columns>
                        <ValidationSettings Display="Dynamic">
                        </ValidationSettings>
                    </dx:ASPxComboBox>
                </p>
                <p>
                    <asp:Label ID="LabelZipcode" runat="server" AssociatedControlID="Zipcode" CssClass="form_label">Zip:</asp:Label>
                    <asp:TextBox ID="Zipcode" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="LabelBedRooms" runat="server" AssociatedControlID="DrpBedRooms" CssClass="form_label">Bed Rooms:</asp:Label>
                    <asp:DropDownList ID="DrpBedRooms" runat="server">
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="LabelBathRooms" runat="server" AssociatedControlID="DrpBathRooms"
                        CssClass="form_label">Bath Rooms:</asp:Label>
                    <asp:DropDownList ID="DrpBathRooms" runat="server">
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
                <%--<p>
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="DrpSchoolName2" CssClass="form_label"> School Name:</asp:Label>
              

                     <dx:ASPxComboBox ID="DrpSchoolName2" runat="server"  Width="100%"
                    AutoResizeWithContainer="True" TextFormatString="{0} ({1}, {2})" DropDownRows="10" 
                    IncrementalFilteringMode="Contains" Theme="DevEx" 
                    EnableDefaultAppearance="False" ShowShadow="False">
                    <Columns>
                        <dx:ListBoxColumn FieldName="Name" Name="Name" />
                        <dx:ListBoxColumn FieldName="StreetAddress" Name="Address" />
                        <dx:ListBoxColumn FieldName="City" Name="City" />
                    </Columns>
                    <ValidationSettings Display="Dynamic">
                    </ValidationSettings>
                </dx:ASPxComboBox>
              
                </p>--%>
                <p>
                    <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName" CssClass="form_label">First Name:</asp:Label>
                    <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName" CssClass="form_label">Middle Name:</asp:Label>
                    <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName" CssClass="form_label">Last Name:</asp:Label>
                    <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="Zipcode2" CssClass="form_label">Zip:</asp:Label>
                    <asp:TextBox ID="Zipcode2" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                </p>
                <%-- <p>
                    <asp:Label ID="Labellandloadname" runat="server" AssociatedControlID="landloadname"
                        CssClass="form_label"> Name:</asp:Label>
                    <asp:TextBox ID="landloadname" runat="server" CssClass="textEntry textbox_w3"></asp:TextBox>
                </p>--%>
                <p>
                    <asp:Label ID="Label5" runat="server" AssociatedControlID="DrpGender" CssClass="form_label">Male Female:</asp:Label>
                    <asp:DropDownList ID="DrpGender" runat="server" CssClass="dropDownEntry">
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="DrpStatus" CssClass="form_label">Status:</asp:Label>
                    <asp:DropDownList ID="DrpStatus" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="StatusRequired" runat="server" ErrorMessage="Please select Status"
                        CssClass="failureNotification" ControlToValidate="DrpStatus" ValidationGroup="SaveSchoolValidationGroup"
                        InitialValue="-1">*</asp:RequiredFieldValidator>
                </p>
                <%-- <p>
                    <asp:Label ID="LabelDrpGrade" runat="server" AssociatedControlID="DrpGrade" CssClass="form_label">Grade:</asp:Label>
                    <asp:DropDownList ID="DrpGrade" runat="server" CssClass="dropDownEntry">
                        <asp:ListItem Value="male">Junior</asp:ListItem>
                      
                    </asp:DropDownList>
                </p>--%>
            </div>
            <p class="submitButton">
                <asp:Button ID="FindStudent" runat="server" CssClass="actionbutton" Text="Find Student"
                    OnClick="FindStudent_Click" />
            </p>
        </div>
    </div>
    <div id="Searchresults" runat="server" visible="false">
       
        <div id="StudentSearchresults" runat="server" visible="false">
            <%--  [User].UserId, 
    [User].AspnetUserId, 
    [User].IsPartialUser, 
    [User].IsFBUser, 
    [User].FBAccessToken, 
    [User].FBUrl, 
    [User].FBTokenTimeStamp, 
    [User].FBProfilePictureURL, 
    [User].StreetAddress, 
    [User].City, 
    [User].StateId, 
    [User].Zip, 
    [User].DateOfBirth, 
    [User].BestContactNumber, 
    [User].DriversLicenseNumber, 
    [User].Status, 
    [User].PersonalEmail, 
    [User].IsDeleted, 
    [User].CreatedBy, 
    [User].CreatedDate, 
    [User].UpdatedBy, 
    [User].UpdatedDate, 
    [User].RatingValue, 
    [User].FBid, 
    [User].Gender, 
    [User].FirstName, 
    [User].MiddleName, 
    [User].LastName, 
    [User].HouseId, 
    [User].RoleId, 
    Student.StudentId, 
    Student.Year, 
    Student.Status AS StudentStatus, 
    School.Name As SchoolName, 
    School.StreetAddress AS SchoolStreetAddress, 
    School.City AS SchoolCity, 
    School.State AS SchoolState, 
    School.Zip AS SchoolZip, 
    School.ContactNumber, 
    School.Email AS SchoolEmail, 
    School.WebsiteURL, 
    School.Location--%>
     <h1> Student - Search results</h1>
            <br /> <br />
            <asp:DataList ID="DataListStudentSearchresults" runat="server" RepeatColumns="1">
                <ItemTemplate>
                    <div id="DivComment" runat="server">
                        <asp:HiddenField ID="CommentMessageID" Value='<%# Eval("UserId") %>' runat="server" />
                        Name :
                        <asp:Label ID="FirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                        <asp:Label ID="MiddleName" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                        <asp:Label ID="LastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>

                        <asp:HyperLink ID="HyperLinkviewStudent" runat="server" NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'>View Profile</asp:HyperLink>
                        <br />Gender :
                        <asp:Label ID="Gender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        <br />
                        Location :
                        <asp:Label ID="StreetAddress" runat="server" Text='<%# Eval("StreetAddress") %>'></asp:Label>
                        <asp:Label ID="City" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        <asp:Label ID="Zip" runat="server" Text='<%# Eval("Zip") %>'></asp:Label>
                        <br />
                        <br />
                        School Name :
                        <asp:Label ID="SchoolName" runat="server" Text='<%# Eval("SchoolName") %>'></asp:Label>
                        <br />School Address :
                        <asp:Label ID="SchoolStreetAddress" runat="server" Text='<%# Eval("SchoolStreetAddress") %>'></asp:Label>,
                        <asp:Label ID="SchoolCity" runat="server" Text='<%# Eval("SchoolCity") %>'></asp:Label>,
                        <asp:Label ID="SchoolZip" runat="server" Text='<%# Eval("SchoolZip") %>'></asp:Label>
                        <br />
                        Year : <asp:Label ID="Year" runat="server" Text='<%# Eval("Year") %>'></asp:Label> ,
                        Student Status : <asp:Label ID="Label2" runat="server" Text='<%# Eval("StudentStatus") %>'></asp:Label> 
                        <br />
                        Website :
                        <asp:Label ID="WebsiteURL" runat="server" Text='<%# Eval("WebsiteURL") %>'></asp:Label>
                        <br />
                        -----------------------------------------------------------------------------------------------------------------------------------------------------------------
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>


        <div id="HouseSearchresults" runat="server" visible="false">
           
     <h1> House - Search results</h1>
            <br /> <br />
            <asp:DataList ID="DataListHouseSearchresults" runat="server" RepeatColumns="1">
                <ItemTemplate>
                    <div id="DivComment" runat="server">
                        <asp:HiddenField ID="CommentMessageID" Value='<%# Eval("UserId") %>' runat="server" />
                        Name :
                        <asp:Label ID="FirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                        <asp:Label ID="MiddleName" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                        <asp:Label ID="LastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>

                        <asp:HyperLink ID="HyperLinkviewStudent" runat="server" NavigateUrl='<%# Eval("UserId","~/Land_load/Land_load_Public_Profile.aspx?AccessCode={0}") %>'>View Profile</asp:HyperLink>
                        <br />Gender :
                        <asp:Label ID="Gender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        <br />
                        Location :
                        <asp:Label ID="StreetAddress" runat="server" Text='<%# Eval("StreetAddress") %>'></asp:Label>
                        <asp:Label ID="City" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        <asp:Label ID="Zip" runat="server" Text='<%# Eval("Zip") %>'></asp:Label>
                        <br />
                        <br />
                        School Name :
                        <asp:Label ID="SchoolName" runat="server" Text='<%# Eval("SchoolName") %>'></asp:Label>
                        <br />School Address :
                        <asp:Label ID="SchoolStreetAddress" runat="server" Text='<%# Eval("SchoolStreetAddress") %>'></asp:Label>,
                        <asp:Label ID="SchoolCity" runat="server" Text='<%# Eval("SchoolCity") %>'></asp:Label>,
                        <asp:Label ID="SchoolZip" runat="server" Text='<%# Eval("SchoolZip") %>'></asp:Label>
                        <br />
                        Year : <asp:Label ID="Year" runat="server" Text='<%# Eval("Year") %>'></asp:Label> ,
                        Student Status : <asp:Label ID="Label2" runat="server" Text='<%# Eval("StudentStatus") %>'></asp:Label> 
                        <br />
                        Website :
                        <asp:Label ID="WebsiteURL" runat="server" Text='<%# Eval("WebsiteURL") %>'></asp:Label>
                        <br />
                        -----------------------------------------------------------------------------------------------------------------------------------------------------------------
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
