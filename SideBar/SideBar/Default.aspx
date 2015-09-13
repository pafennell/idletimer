<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SideBar.Default" %>
<%@ Register Src="~/FormControle.ascx" TagName="frm" TagPrefix="ctr" %>
<%@ Register Src="~/TabPanelControle.ascx" TagName="b" TagPrefix="l" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Css.css" rel="stylesheet" />
 <style type="text/css">
     .jumbotron{
         padding-left: 300px;
         background-color: #ff6a00;
     }
     
    .modal-header{
        background-color:ActiveBorder;
    }
 

 </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <form id="controle" runat="server">
            <div class="jumbotron">
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <a href="/Books.aspx" runat="server">BookList</a>
                <ctr:frm ID="fr" runat="server"></ctr:frm>
               <l:b runat="server" />
                </div>
        </form>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="EndContent" runat="server">
</asp:Content>