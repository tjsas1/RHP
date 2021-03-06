﻿<%@ Page Title="Student Leave Current Residence" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Leave_Current_House.aspx.cs"
    Inherits="USA_Rent_House_Project.Student.Student_Profile_Leave_Current_House" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
    <%@ Register Src="~/Student/Modules/Current_House_Menu_Bar.ascx" TagName="Current_House_Menu_Bar" TagPrefix="uc3" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to Leave Current Residence?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

        function ConfirmRequest() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to Leave Current Residence?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
                <asp:HiddenField ID="hdnStepNumber" runat="server" Value="0" />
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current Residence
                </h2>
                <div id="formwrapper">
                     <uc3:Current_House_Menu_Bar ID="Current_House_Menu_Barid" runat="server" />
                    <div id="forminner">
                        <h1>
                            Leave My Current Residence</h1>
                        <p id="ButtonLeaveHouseID" runat="server" visible="false">
                            If You Want to Leave Current Residence Please
                            <asp:LinkButton ID="ButtonLeaveHouse" runat="server" OnClick="OnConfirm" OnClientClick="Confirm()">Click Here</asp:LinkButton>
                        </p>
                        <h1>
                            Request roommates to Leave Current Residence
                        </h1>
                        <div id="StudentListData" runat="server">
                            <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="2" DataKeyField="UserId"
                                OnItemDataBound="ItemDataBound">
                                <ItemTemplate>
                                    <div class="imagegallerycontainer">
                                        <div class="imagegallery">
                                            <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                                ImageUrl="~/Images/Sample/Noimage.jpg" NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                                        </div>
                                        <div>
                                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                                            <asp:HiddenField ID="hdHouseId" runat="server" Value='<%# Eval("HouseId") %>' />
                                            <asp:HiddenField ID="hdBaseHouseRoomId" runat="server" Value='<%# Eval("BaseHouseRoomId") %>' />
                                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
                                        </div>
                                        <div>
                                            <asp:LinkButton ID="RequestLeaveCurrentHouse" CommandName="RequestLeave" CommandArgument='<%# Eval("UserId") %>'
                                                OnCommand="RequestLeaveCurrentHouse_Command" runat="server">Request to Leave</asp:LinkButton>
                                            <asp:Label ID="LabelItsMe" runat="server" Text="" Visible="false"></asp:Label>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <h1>
                            Responde to Leave Current Residence By roommates
                        </h1>
                        <div id="RespondeToLeaveHouse" runat="server">
                            <p id="RespondeToLeaveHouseTrue" runat="server" visible="false">
                                You have a Request to Leave Current Residence from :
                                <asp:HyperLink ID="RequestedUser" runat="server" Visible="true"></asp:HyperLink>
                                <asp:Label ID="RequestedUserName" runat="server" Text="" Visible="false"></asp:Label><br />
                                If You Want to Response to Request, Please
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="OnConfirmRequest" OnClientClick="ConfirmRequest()">Click Here</asp:LinkButton>
                            </p>
                            <p id="RespondeToLeaveHouseFalse" runat="server" visible="false">
                                You have no Request to Leave Current Residence.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
