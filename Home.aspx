<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MAGOBARY.ADMIN.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 70px"></td>
            <td style="height: 70px; width: 275px"><strong>
                <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman'; font-size: xx-large" Text="HOME"></asp:Label>
                </strong></td>
            <td style="height: 70px"></td>
        </tr>
        <tr>
            <td style="height: 79px"></td>
            <td style="font-size: 11pt; width: 275px; height: 79px">
                <asp:Button ID="Button4" runat="server" style="font-family: 'Times New Roman'; font-weight: bold; font-size: large" Text="REGISTRATION" Width="211px" />
            </td>
            <td style="height: 79px"></td>
        </tr>
        <tr>
            <td style="height: 80px"></td>
            <td style="height: 80px; width: 275px">
                <asp:Button ID="Button2" runat="server" style="font-family: 'Times New Roman'; font-weight: bold; font-size: large" Text="DELETE" Width="217px" />
            </td>
            <td style="height: 80px"></td>
        </tr>
        <tr>
            <td style="height: 77px"></td>
            <td style="height: 77px; width: 275px">
                <asp:Button ID="Button3" runat="server" style="font-family: 'Times New Roman'; font-weight: bold; font-size: large" Text="LOGOUT" Width="225px" />
            </td>
            <td style="height: 77px"></td>
        </tr>
    </table>
</asp:Content>
