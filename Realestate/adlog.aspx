<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adlog.aspx.cs" Inherits="Realestate.adlog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/intro-bg.JPG.jpg" Height="622px">
                 <h5 class="pb-3">
                    Log In
                </h5>
                <asp:Label ID="Txt_UserNam" runat="server" Text="UserName"></asp:Label>&nbsp;<asp:TextBox ID="Txt_UserName" runat="server" autocomplete="off"></asp:TextBox>
                 <br />
                 <asp:Label ID="Label1" runat="server" Text="Password" autocomplete="off"></asp:Label>
                 &nbsp; <asp:TextBox ID="Txt_Password" runat="server" autocomplete="off" TextMode="Password"></asp:TextBox>

              
             
                &nbsp;&nbsp;&nbsp;

              
             
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                
            </asp:Panel>
        </div>
    </form>
</body>
</html>
