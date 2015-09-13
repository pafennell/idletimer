<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="SideBar.Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Xml ID="Xml1" runat="server" DocumentSource="books.xml" TransformSource="Transform.xslt"></asp:Xml>
    </div>
    </form>
</body>
</html>
