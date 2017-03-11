<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="Id,Id1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="itemNum" HeaderText="itemNum" SortExpression="itemNum" />
        <asp:BoundField DataField="itemName" HeaderText="itemName" SortExpression="itemName" />
        <asp:BoundField DataField="Id1" HeaderText="Id1" InsertVisible="False" ReadOnly="True" SortExpression="Id1" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
    </Columns>
</asp:GridView>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="contact.aspx">Back to menu!</asp:HyperLink>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * from orders INNER JOIN customer ON orders.Id = customer.Id;" DeleteCommand="DELETE FROM orders WHERE Id = @Id;" UpdateCommand="UPDATE orders
SET itemName = @itemName, itemNum = @itemNum
WHERE Id = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="itemName" />
        <asp:Parameter Name="itemNum" />
        <asp:Parameter Name="Id" />
    </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="DefaultConnection" runat="server"></asp:SqlDataSource>
</asp:Content>
