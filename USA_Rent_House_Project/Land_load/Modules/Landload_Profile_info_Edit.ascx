﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Profile_info_Edit.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Profile_info_Edit" %>
<div id="div_register_User">
    <h2 class="form_heading">
    Land Load Profile info
    </h2>
    <asp:HyperLink ID="HyperLinkChangePassword" runat="server"  CssClass="loginlinks" NavigateUrl="~/Change_Password.aspx">Change Password</asp:HyperLink>  <asp:HyperLink ID="HyperLinkChangeQuestion"  CssClass="loginlinks"  NavigateUrl="~/Change_Secret_Question.aspx" runat="server">Change Seacret Question</asp:HyperLink> 
      <div id="formwrapper">
      <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="RegisterLand_lordValidationGroup" />
            <div id="forminner">
           
           <p>
                <asp:Label ID="LabelGender" runat="server" AssociatedControlID="DrpGender" CssClass="form_label">Gender:</asp:Label>
                <asp:DropDownList ID="DrpGender" runat="server" CssClass="dropDownEntry">
                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="GenderRequired" runat="server" ErrorMessage="Please select Gender"  CssClass="failureNotification" ControlToValidate="DrpGender" ValidationGroup="RegisterLand_lordValidationGroup" InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName"
                    CssClass="form_label">First Name:</asp:Label>
                <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
                    CssClass="failureNotification" ErrorMessage="First Name is required."
                    ToolTip="First Name is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>
             <p>
                <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName"
                    CssClass="form_label">Middle Name:</asp:Label>
                <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
          
            </p>
             <p>
                <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName"
                    CssClass="form_label">Last Name:</asp:Label>
                <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
                    CssClass="failureNotification" ErrorMessage="Last Name is required."
                    ToolTip="Last Name is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>

              <p >
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                <asp:Label ID="Email" runat="server" CssClass="form_label"></asp:Label>
            
            </p>
            
            <p>
                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Contact Address:</asp:Label>
                <asp:TextBox ID="Address" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AddressRequiredField" runat="server" ControlToValidate="Address"
                    CssClass="failureNotification" ErrorMessage="Address is required." ToolTip="Address is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">City:</asp:Label>
                <asp:TextBox ID="City" runat="server" CssClass="textEntry textbox_w2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CityRequiredField" runat="server" ControlToValidate="City"
                    CssClass="failureNotification" ErrorMessage="City is required." ToolTip="City is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="Drpstate" CssClass="form_label">State:</asp:Label>
                <asp:DropDownList ID="Drpstate" runat="server" CssClass="dropDownEntry">
                   <asp:ListItem Value="AL"> Alabama </asp:ListItem>
                    <asp:ListItem Value="AK"> Alaska </asp:ListItem>
                    <asp:ListItem Value="AZ"> Arizona </asp:ListItem>
                    <asp:ListItem Value="AR"> Arkansas  </asp:ListItem>
                    <asp:ListItem Value="CA"> California </asp:ListItem>
                    <asp:ListItem Value="CO"> Colorado </asp:ListItem>
                    <asp:ListItem Value="CT"> Connecticut </asp:ListItem>
                    <asp:ListItem Value="DE"> Delaware  </asp:ListItem>
                    <asp:ListItem Value="FL"> Florida  </asp:ListItem>
                    <asp:ListItem Value="GA"> Georgia </asp:ListItem>
                    <asp:ListItem Value="HI"> Hawaii </asp:ListItem>
                    <asp:ListItem Value="ID"> Idaho  </asp:ListItem>
                    <asp:ListItem Value="IL"> Illinois  </asp:ListItem>
                    <asp:ListItem Value="IN"> Indiana  </asp:ListItem>
                    <asp:ListItem Value="IA"> Iowa </asp:ListItem>
                    <asp:ListItem Value="KS"> Kansas  </asp:ListItem>
                    <asp:ListItem Value="KY"> Kentucky  </asp:ListItem>
                    <asp:ListItem Value="LA"> Louisiana </asp:ListItem>
                    <asp:ListItem Value="ME"> Maine </asp:ListItem>
                    <asp:ListItem Value="MD"> Maryland </asp:ListItem>
                    <asp:ListItem Value="MA"> Massachusetts  </asp:ListItem>
                    <asp:ListItem Value="MI"> Michigan  </asp:ListItem>
                    <asp:ListItem Value="MN"> Minnesota </asp:ListItem>
                    <asp:ListItem Value="MS"> Mississippi </asp:ListItem>
                    <asp:ListItem Value="MO"> Missouri </asp:ListItem>
                    <asp:ListItem Value="MT"> Montana </asp:ListItem>
                    <asp:ListItem Value="NE"> Nebraska </asp:ListItem>
                    <asp:ListItem Value="NV"> Nevada </asp:ListItem>
                    <asp:ListItem Value="NH"> New Hampshire  </asp:ListItem>
                    <asp:ListItem Value="NJ"> New Jersey  </asp:ListItem>
                    <asp:ListItem Value="NM"> New Mexico  </asp:ListItem>
                    <asp:ListItem Value="NY"> New York  </asp:ListItem>
                    <asp:ListItem Value="NC"> North Carolina </asp:ListItem>
                    <asp:ListItem Value="ND"> North Dakota </asp:ListItem>
                    <asp:ListItem Value="OH"> Ohio </asp:ListItem>
                    <asp:ListItem Value="OK"> Oklahoma  </asp:ListItem>
                    <asp:ListItem Value="OR"> Oregon  </asp:ListItem>
                    <asp:ListItem Value="PA"> Pennsylvania </asp:ListItem>
                    <asp:ListItem Value="RI"> Rhode Island  </asp:ListItem>
                    <asp:ListItem Value="SC"> South Carolina  </asp:ListItem>
                    <asp:ListItem Value="SD"> South Dakota </asp:ListItem>
                    <asp:ListItem Value="TN"> Tennessee  </asp:ListItem>
                    <asp:ListItem Value="TX"> Texas </asp:ListItem>
                    <asp:ListItem Value="UT"> Utah </asp:ListItem>
                    <asp:ListItem Value="VT"> Vermont </asp:ListItem>
                    <asp:ListItem Value="VA"> Virginia </asp:ListItem>
                    <asp:ListItem Value="WA"> Washington </asp:ListItem>
                    <asp:ListItem Value="WV"> West Virginia </asp:ListItem>
                    <asp:ListItem Value="WI"> Wisconsin </asp:ListItem>
                    <asp:ListItem Value="WY"> Wyoming  </asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                <asp:TextBox ID="Zip" runat="server" CssClass="textEntry textbox_w3" MaxLength="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="Zip"
                    CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ErrorMessage="Zip must be 5 numbers"
                    ControlToValidate="Zip" CssClass="failureNotification"
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:CompareValidator>

         
            </p>
            <p>
                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Best Contact #:</asp:Label>
                <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry" MaxLength="15"></asp:TextBox>

                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobile"
                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."

                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" CssClass="failureNotification"
                    ErrorMessage="Invalid Best Contact No." ToolTip="Invalid Best Contact No." ControlToValidate="Mobile"
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:CompareValidator>

           
            </p>

      </div>
        <p class="submitButton">
            <asp:Button ID="EditUserButton" runat="server" 
                CssClass="actionbutton" CommandName="MoveNext"
                Text="Edit Landlord" ValidationGroup="RegisterLand_lordValidationGroup" 
                onclick="EditUserButton_Click"  />
                 <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>
    </div>
</div>
