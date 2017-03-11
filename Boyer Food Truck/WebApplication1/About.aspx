<%@ Page Title="About" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>
<%@ Register Src="~/Menu.ascx" TagPrefix="my" TagName="menu"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Get to know us!</h3>
    We are the Boyer food truck.&nbsp; The truck was founded in 2017 by Addison Boyer.&nbsp; The goal of the truck is to provide quality sushi late night in downtown Missoula.&nbsp; Our sushi is made from quality local ingredients, and a portion of the proceeds are donated to the local animal shelter.&nbsp; The food truck is parked across the street from Monks bar Friday and Saturday from 10 p.m - 2 p.m.<br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl="Images/truck.jpg" Width="600px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <my:menu runat="server"/>
</asp:Content>
