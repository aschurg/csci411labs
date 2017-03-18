<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="WebApplication1.Menu" %>


<asp:Button ID="showButton" runat="server" Height="50px" Text="Show Menu" Width="100px" BorderStyle="Groove" OnClick="showButton_Click" />
    <asp:Panel ID="Panel1" runat="server" Height="711px" Width="885px" Visible="false">
        <asp:Panel ID="Panel2" runat="server" Height="495px" Width="879px">
            <asp:Label ID="Label1" runat="server" Font-Size="30pt" Text="Our delicious menu"></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="431px" ImageUrl="Images/menu.png" Width="835px" />
            <asp:Button ID="Button1" runat="server" Height="71px" Text="Submit order" Width="123px" BorderStyle="Double" OnClick="Button1_Click" />
            <asp:Label ID="Label2" runat="server" Text="Enter name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="178px"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
            Please select an option then press &quot;Submit order.&quot;</asp:Panel>
    </asp:Panel>
<asp:Xml ID="Xml1" runat="server" DocumentSource="~/App_Data/Stories.xml" TransformSource="~/App_Data/Stories.xslt"></asp:Xml>


