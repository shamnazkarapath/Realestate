<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Realestate.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 603px;
            margin-bottom: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JRassociatedb %>" SelectCommand="SELECT * FROM [img_tb]"></asp:SqlDataSource>
            <table>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>
                    Images
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
<td>              <asp:Image ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.images") %>' Height="269px" Width="218px" />
    
                        </tr></ItemTemplate>
            </asp:Repeater>
 
                </table>
          
        </div>
    
    </form>
</body>
</html>
