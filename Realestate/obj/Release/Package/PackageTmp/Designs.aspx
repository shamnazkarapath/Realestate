<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Designs.aspx.cs" Inherits="Realestate.Designs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JR_db %>" SelectCommand="SELECT * FROM [img_tb]"></asp:SqlDataSource>
           <table>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                   <tr> <td><asp:Image ID="Images" runat="server" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.images") %>' Height=100px Width=100px /></td>
                       <td>
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.images") %>' Height=100px Width=100px /></td>
                   </tr>
                </ItemTemplate>
            </asp:Repeater>
           </table>
        </div>
    </form>
</body>
</html>
