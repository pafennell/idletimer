<%@ Master Language="C#" AutoEventWireup="true" CodeBehind="Site.master.cs" Inherits="$rootnamespace$.Site" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title><%: Page.Title %> - Bootstrap</title>
	<asp:PlaceHolder runat="server">
		<%: Scripts.Render("~/bundles/modernizr") %>
	</asp:PlaceHolder>
	<webopt:BundleReference runat="server" Path="~/Content/css" />
	<webopt:BundleReference runat="server" Path="~/Content/themes/base/css" />
	<link href="Content/bootstrap.css" rel="stylesheet" />
	<link href="Content/bootstrap-theme.css" rel="stylesheet" />
	<asp:ContentPlaceHolder ID="HeadContent" runat="server" />
</head>
<body role="document">
	<form id="form1" runat="server">
		<asp:ScriptManager runat="server">
			<Scripts>
				<asp:ScriptReference Name="MsAjaxBundle" />
				<asp:ScriptReference Name="jquery" />
				<asp:ScriptReference Name="jquery.ui.combined" />
				<asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
				<asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
				<asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
				<asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
				<asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
				<asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
				<asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
				<asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
				<asp:ScriptReference Name="WebFormsBundle" />
				<%--Site Scripts--%>
				<asp:ScriptReference Path="~/Scripts/bootstrap.js" />
			</Scripts>
		</asp:ScriptManager>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Bootstrap theme</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Nav header</li>
								<li><a href="#">Separated link</a></li>
								<li><a href="#">One more separated link</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<div class="container theme-showcase" role="main">
			<asp:ContentPlaceHolder ID="BodyContent" runat="server" />
		</div>
		<!-- /container -->
	</form>
</body>
</html>