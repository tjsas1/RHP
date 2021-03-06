﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="USA_Rent_House_Project.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="div_Home">
        <h2 class="homeheading">
            www.ratestudenthousing.com</h2>

            
            <br /> <br />
        <div class="ContactUs-center-col">
            <h2 class="form_heading">
                Contact Us
            </h2>
            <table >
                <tr>
                    <td>
                        <b>Nirmal J Abeygunaratne - </b>
                    </td>
                    <td>
                        (Founder and President/CEO)
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Address - </b>
                    </td>
                    <td>
                        4685 Chicago Ave
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        Riverside
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        CA 92507
                    </td>
                </tr>
            </table>
            <div id="formwrapper">
                <asp:ValidationSummary ID="MessageValidationSummary" runat="server" CssClass="failureNotification"
                    ValidationGroup="MessageValidationGroup" />
                <div id="forminner">
                    <p >
                        <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="Name" CssClass="form_label">Name:</asp:Label>
                        <asp:TextBox ID="Name" runat="server" CssClass="textEntry textbox_w2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="Name"
                            CssClass="failureNotification" ErrorMessage="Name is required." ToolTip="Name is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p >
                        <asp:Label ID="LabelEmail" runat="server" AssociatedControlID="Email" CssClass="form_label">Email:</asp:Label>
                        <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                            CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="MessageValidationGroup"
                            ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
                    </p>
                    <p>
                        <asp:Label ID="LabelSubject" runat="server" AssociatedControlID="Subject" CssClass="form_label">Subject:</asp:Label>
                        <asp:TextBox ID="Subject" runat="server" CssClass="textEntry textbox_w1" TextMode="SingleLine"
                            Columns="50" Rows="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SubjectRequired" runat="server" ControlToValidate="Subject"
                            CssClass="failureNotification" ErrorMessage="Subject is required." ToolTip="Subject is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="LabelMessage" runat="server" AssociatedControlID="Message" CssClass="form_label">Message:</asp:Label>
                        <asp:TextBox ID="Message" runat="server" CssClass="textEntry textbox_w1" TextMode="MultiLine"
                            Columns="50" Rows="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MessageRequired" runat="server" ControlToValidate="Message"
                            CssClass="failureNotification" ErrorMessage="Message is required." ToolTip="Message is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                </div>
                <p class="submitButton">
                    <asp:Button ID="MessageButton" runat="server" CssClass="contact-btn" CommandName="MoveNext"
                        Text="Send Message" ValidationGroup="MessageValidationGroup" OnClick="MessageButton_Click" />
                    <asp:Label ID="lblError" runat="server" CssClass="actionbutton" Text=""></asp:Label>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
