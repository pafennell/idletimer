<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TabPanelControle.ascx.cs" Inherits="SideBar.TabPanelControle" %>

<div class="container">
    <ul class="nav nav-tabs" role="tablist" id="myTab">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li> 
        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
        
        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
        
        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
    </ul>


    <div class="tab-content col-md-12 col-sm-12">
        <div role="tabpanel" class="tab-pane fade in active" id="home">
            <table class="tb1">

                <tr>
                  <td>
                      <asp:GridView ID="GridView1" runat="server">

                      </asp:GridView>
                  </td>
                </tr>
            </table>
           </div> 
        <div role="tabpanel" class="tab-pane fade" id="profile">
            <table class="tb1">

                <tr>
                  
                </tr>
            </table>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="messages">
            <table class="tb1">

                <tr>
                  
                </tr>
            </table>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="settings">
            <table class="tb1">

                <tr>
                  
                </tr>
            </table>
        </div>
    </div>
</div>

<style type="text/css">
     .tab-content{
         background-color:#ddd;
         border-left: 1px solid #000000;
         border-right: 1px solid #000000;
         border-bottom: 1px solid #000000;
         border-radius: 0 0 6px 6px;
         padding: 10px;
     }
     .nav-tabs {
    border-bottom: 1px solid #000;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus {
    color: #000;
    background-color:#ddd;
    border-radius: 6px 6px 0 0;
    border-bottom-color: transparent;
}


.nav-tabs>li>a {
    margin-right: 6px;
    line-height: 1.428571429;
    border-radius: 6px 6px 0 0;
    background-color: #ddd;
    border-bottom-color: #000000;
}

.tb1{
    background-color:#fff;
    width:100%;
    height:500px;
    border-radius: 8px;
}
.tb2{
    background-color:#ff0000;  
    width:90%;
}


</style>

<script>
  $(function () {
    $('#myTab a:last').tab('show')
  })
</script>