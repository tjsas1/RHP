﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Profile_Comment_Add.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Profile_Comment_Add" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<div id="div_register_User">

   <div>
        <p>Please share</p>
  
          <!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
<a class="addthis_button_preferred_1"></a>
<a class="addthis_button_preferred_2"></a>
<a class="addthis_button_preferred_3"></a>
<a class="addthis_button_preferred_4"></a>
<a class="addthis_button_compact"></a>
<a class="addthis_counter addthis_bubble_style"></a>
</div>
<script type="text/javascript">    var addthis_config = { "data_track_addressbar": true };</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-51590e4634ef5a41"></script>
<!-- AddThis Button END -->

       <dx:ASPxRatingControl ID="ASPxRating" runat="server">
       </dx:ASPxRatingControl>
        <p>Comment on our page</p>
         <p>
                <asp:TextBox ID="CommentMessage" runat="server" CssClass="textEntry textbox_w1" Width="790px"  Rows="5" TextMode="MultiLine"></asp:TextBox>
              
            </p>
        </div>
        <div class="clear"></div>
         <p class="submitButton">
            <asp:Button ID="CommentButton" runat="server" CssClass="actionbutton" 
                 CommandName="MoveNext" Text="Post" onclick="CommentButton_Click"  />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>
    </div>
