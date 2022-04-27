<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Realestate.Admin.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel2" runat="server" BackColor="Black" Height="69px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="LogOut" BackColor="White" OnClick="Button3_Click" Height="51px" />
            </asp:Panel>


            <asp:Panel ID="Panel1" runat="server" BackColor="White" BackImageUrl="~/Admin/intro-bg.JPG.jpg" Height="422px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JR_db %>" SelectCommand="SELECT * FROM [Customer_tb]"></asp:SqlDataSource>
                <br />
                <table border="1">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
<HeaderTemplate>
    <tr>
        <td>Id</td><td>Name</td><td>Email</td><td>Phone</td><td>Message</td><td>Delete</td>
    </tr>

</HeaderTemplate>
                
                    <ItemTemplate>
                        <tr>
                            <td><%#DataBinder.Eval(Container,"DataItem.Customer_Id") %></td>
                            <td><%#DataBinder.Eval(Container,"DataItem.Name") %></td>
                            <td><%#DataBinder.Eval(Container,"DataItem.Email") %></td>
                            <td><%#DataBinder.Eval(Container,"DataItem.Phone") %></td>
                            <td><%#DataBinder.Eval(Container,"DataItem.Message") %></td>
                            <td> <asp:Button ID="Button2" runat="server" Text="Delete" />
                                     
                                       
                                       <asp:HiddenField ID="HiddenField1"  runat="server" Value='<%# DataBinder.Eval(Container,"DataItem.Customer_Id") %>' /></td>
                            <td></td>
                        </tr>
</ItemTemplate>
                </asp:Repeater>
                    </table>
            </asp:Panel>

            <asp:Label ID="Label1" runat="server" Text="Image"></asp:Label>  <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="Btn_Upload" runat="server" Text="Upload" OnClick="Btn_Upload_Click" />
        </div>
    </form>
</body>
</html>
