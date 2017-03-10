<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="434px">
        <asp:Label ID="Label1" runat="server" Font-Size="12pt" Text="Username:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Size="12pt" Text="Password:"></asp:Label>
        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" Width="318px" OnClick="Button1_Click" />
    </asp:Panel>
</asp:Content>
