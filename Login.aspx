<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MAGOBARY.ADMIN.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 35px"></td>
            <td style="height: 35px">
                <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman'; font-weight: bold; font-size: large" Text="LOGIN"></asp:Label>
            </td>
            <td style="height: 35px"></td>
        </tr>
        <tr>
            <td style="height: 43px">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="height: 43px">
                <asp:TextBox ID="txtuname" runat="server" Width="217px"></asp:TextBox>
            </td>
            <td style="height: 43px"></td>
        </tr>
        <tr>
            <td style="height: 39px">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="height: 39px">
                <asp:TextBox ID="txtpassword" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td style="height: 39px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsignin" runat="server" Text="Sign in" Width="122px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
