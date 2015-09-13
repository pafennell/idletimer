<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Baloon.ascx.cs" Inherits="SideBar.Baloon" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
    TagPrefix="ccl" %>

<div>
<i>TextBox:</i> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <asp:Panel ID="Panel1" runat="server">
     <b>SEARCH</b>
    </asp:Panel>
<div>
    <ccl:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ccl:ToolkitScriptManager>

    <asp:TextBox ID="TextBox2" runat="server" />
    <ccl:BalloonPopupExtender ID="BalloonPopupExtender2" TargetControlID="TextBox2" UseShadow="true" DisplayOnFocus="true"
    Position="BottomRight" BalloonPopupControlID="Panel2" BalloonStyle="Cloud" runat="server" />
    <asp:Panel ID="Panel2" runat="server">
    This is a Cloud Balloon Popup
</asp:Panel>
</div>
</div>
 
