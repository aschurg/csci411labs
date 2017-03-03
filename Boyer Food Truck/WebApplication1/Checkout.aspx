<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="WebApplication1.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 394px;
        }
    </style>
</head>
<body style="height: 400px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" Text="Thanks for ordering!"></asp:Label>
    
    </div>
        <asp:Image ID="Image1" runat="server" Height="320px" ImageUrl="Images/roll.png" Width="180px" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="contact.aspx">Order more items</asp:HyperLink>
&nbsp;or
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="orders.aspx">view all orders!</asp:HyperLink>
    </form>
</body>
</html>
