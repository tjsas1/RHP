﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="House_List.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.House_List" %>
<div id="HouseList" runat="server">
    <p>
        My Property List.
    </p>
    <div id="HouseListData" runat="server">
        <asp:DataList ID="DataListHouseList" runat="server" RepeatColumns="1" DataKeyField="HouseId"
            OnItemCommand="DataListHouseList_ItemCommand">
            <ItemTemplate>
                <div id="DivHouse" runat="server">
           
                    <asp:HiddenField ID="hdnHouseId" runat="server" Value='<%# Eval("HouseId") %>' />
                    <asp:Label ID="StreetAddress" runat="server" Text='<%# Eval("StreetAddress") %>'></asp:Label>,
                    <asp:Label ID="City" runat="server" Text='<%# Eval("City") %>'></asp:Label>,
                    <asp:Label ID="State" runat="server" Text='<%# Eval("State") %>'></asp:Label>,
                    <asp:Label ID="Zip" runat="server" Text='<%# Eval("Zip") %>'></asp:Label>
                    <asp:LinkButton ID="LB_view_house" CommandName="ViewHouse" CommandArgument='<%# Eval("HouseId") %>'
                        runat="server">View/Edit House</asp:LinkButton>
                    <asp:LinkButton ID="LB_view_options" CommandName="ViewOptions" CommandArgument='<%# Eval("HouseId") %>'
                        runat="server">View/Edit Options</asp:LinkButton>
                    <br />
                    House Rating:
                    <asp:Label ID="RatingValue" runat="server" Text='<%# Eval("RatingValue") %>'></asp:Label>
                    Price :
                    <asp:Label ID="Price" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    <br />
                    BedRooms :
                    <asp:Label ID="BedRooms" runat="server" Text='<%# Eval("BedRooms") %>'></asp:Label>
                    BathRooms :
                    <asp:Label ID="BathRooms" runat="server" Text='<%# Eval("BathRooms") %>'></asp:Label>
                    <br />
                    LotSquareFootage :
                    <asp:Label ID="LotSquareFootage" runat="server" Text='<%# Eval("LotSquareFootage") %>'></asp:Label>
                    UtilitiesIncludedInRent :
                    <asp:Label ID="UtilitiesIncludedInRent" runat="server" Text='<%# Eval("UtilitiesIncludedInRent") %>'></asp:Label>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>