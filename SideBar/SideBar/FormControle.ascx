<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormControle.ascx.cs" Inherits="SideBar.FormControle" %>

<a data-toggle="modal" href="#myModal">Launch demo modal</a>
<div class="modal fade" id="myModal">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <h4 class="modal-title">Register</h4>
    </div>
    <div class="modal-body">
<table runat="server">
    <tr>
        <td>
            <span>Firstname&nbsp;&nbsp;</span>
        </td>
        <td>
            <div class="input-group-sm">
                <asp:TextBox ID="text" runat="server" CssClass="form-control">
                </asp:TextBox>
            </div>
        </td>
    </tr>
    <tr></tr>
    <tr>
        <td>
            <span>Surname&nbsp;&nbsp;</span>
        </td>
        <td>
            <div class="input-group-sm">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control">
                </asp:TextBox>
            </div>
        </td>
    </tr>
    <tr></tr>
    <tr>
        <td>
            <span>Email&nbsp;&nbsp;</span>
        </td>
        <td>
            <div class="input-group-sm">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control">
                </asp:TextBox>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <span>Password&nbsp;&nbsp;</span>
        </td>
       
        <td>
            <div class="input-group-sm">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control">
                </asp:TextBox>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
        </td>
        <td><asp:Button ID="Button1" runat="server" Text="Button"></asp:Button></td>
    </tr>
</table>

 </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<style type="text/css">

    table{
        border:1em solid #9f9c9c;
    }
    table tr, td{
        padding: 4px;
    }
</style>
