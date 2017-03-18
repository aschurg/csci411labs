<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<%@ Register Src="~/Menu.ascx" TagPrefix="my" TagName="menu"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <my:menu runat="server"/>
    </asp:Content>
