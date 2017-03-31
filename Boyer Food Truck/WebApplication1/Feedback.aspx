<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication1.WebForm3" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="356px">
        <asp:TextBox ID="TextBox1" runat="server" Height="303px" Width="420px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="51px" OnClick="Button1_Click" Text="Submit" Width="114px" />
        <asp:Label ID="Label1" runat="server" Text="Comments"></asp:Label>
    </asp:Panel>
</asp:Content>
