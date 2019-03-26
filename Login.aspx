<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MAGOBARY.ADMIN.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 35px; width: 192px;"></td>
            <td style="height: 35px; width: 324px;">
                <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman'; font-weight: bold; font-size: x-large; color: #CC0000;" Text="LOGIN"></asp:Label>
            </td>
            <td style="height: 35px"></td>
        </tr>
        <tr>
            <td style="height: 59px; width: 192px;">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="height: 59px; width: 324px;">
                <asp:TextBox ID="txtaname" runat="server" Width="217px"></asp:TextBox>
            </td>
            <td style="height: 59px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 192px;">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="height: 65px; width: 324px;">
                <asp:TextBox ID="txtapassword" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="width: 192px; height: 65px"></td>
            <td style="width: 324px; height: 65px;">
                <asp:Button ID="btnsignin" runat="server" Text="Sign in" Width="122px" />
            </td>
            <td style="height: 65px">
            </td>
        </tr>
    </table>
</asp:Content>
