<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="itemName" HeaderText="itemName" SortExpression="itemName" />
        <asp:BoundField DataField="itemNum" HeaderText="itemNum" SortExpression="itemNum" />
    </Columns>
</asp:GridView>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="contact.aspx">Back to menu!</asp:HyperLink>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT name, itemName, itemNum from orders INNER JOIN customer ON orders.Id = customer.Id;"></asp:SqlDataSource>
<asp:SqlDataSource ID="DefaultConnection" runat="server"></asp:SqlDataSource>
</asp:Content>
