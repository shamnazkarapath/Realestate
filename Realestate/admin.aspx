<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Realestate.Admin.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 586px">
            <asp:Panel ID="Panel2" runat="server" BackColor="White" Height="69px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="LogOut" BackColor="Black" OnClick="Button3_Click" Height="51px" ForeColor="White" />
            </asp:Panel>
            
            <asp:Panel ID="Panel1" runat="server" BackColor="#CC6699" Height="354px" >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JRassociatedb %>" SelectCommand="SELECT * FROM [Customer_tb]"></asp:SqlDataSource>
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
           
            
                &nbsp;&nbsp;
                <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="New Homes"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="Btn_Upload" runat="server" Text="Upload" OnClick="Btn_Upload_Click" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Interiors"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:Button ID="btnintr" runat="server" OnClick="btnintr_Click" Text="Upload" />
            <br />
               <asp:Label ID="btn_list" runat="server" Text="Listing"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload3" runat="server" />
            <asp:Button ID="btn_lst" runat="server" OnClick="btn_lst_Click" Text="Upload" />

               
               </div> </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCFF" Height="893px">
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JRassociatedb %>" SelectCommand="SELECT * FROM [Img_tb]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JRassociatedb %>" SelectCommand="SELECT * FROM [Img_listing]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:JRassociatedb %>" SelectCommand="SELECT * FROM [interiors]"></asp:SqlDataSource>
               <table border="1">
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater2_ItemCommand"><HeaderTemplate><tr><td>Homes</td></tr></HeaderTemplate>
                   <HeaderTemplate><tr><td>New Homes</td><td>Delete Item</td></tr></HeaderTemplate>
                    <ItemTemplate><tr><td><asp:Image ID="images10" runat="server" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.images") %>' Height="40px" Width="40px" /></td><td> <asp:Button ID="Button2" runat="server" Text="Delete" />
                                     
                                       
                                       <asp:HiddenField ID="HiddenField3"  runat="server" Value='<%# DataBinder.Eval(Container,"DataItem.id") %>' /></td>
                           </tr></ItemTemplate>
                </asp:Repeater></table>
                <table border="1">
                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="Repeater3_ItemCommand">
                     <HeaderTemplate><tr><td>New Listing</td><td>Delete Item</td></tr></HeaderTemplate>
                    <ItemTemplate><tr><td><asp:Image ID="images10" runat="server" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.listing") %>' Height="40px" Width="40px" /></td><td> <asp:Button ID="Button2" runat="server" Text="Delete" />
                                     
                                       
                                       <asp:HiddenField ID="HiddenField4"  runat="server" Value='<%# DataBinder.Eval(Container,"DataItem.id") %>' /></td>
                           </tr></ItemTemplate>
            

                </asp:Repeater></table>
                <table border="1">
                <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4" OnItemCommand="Repeater4_ItemCommand">
                     <HeaderTemplate><tr><td>New Interiors</td><td>Delete Item</td></tr></HeaderTemplate>
                    <ItemTemplate><tr><td><asp:Image ID="images10" runat="server" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.interiors") %>' Height="40px" Width="40px" /></td><td> <asp:Button ID="Button2" runat="server" Text="Delete" />
                                     
                                       
                                       <asp:HiddenField ID="HiddenField5"  runat="server" Value='<%# DataBinder.Eval(Container,"DataItem.id") %>' /></td>
                           </tr></ItemTemplate>
            
                </asp:Repeater>
                    </table>
        </asp:Panel>
       
    </form>
</body>
</html>
