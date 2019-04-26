<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="MAGOBARY.USER.FeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center"><strong>
                <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman'; font-size: x-large" Text="FEED BACK"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:TextBox ID="txtmessg" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="btnsd" runat="server" OnClick="btnsd_Click" Text="SEND" />
                <asp:Button ID="btncan" runat="server" OnClick="btncan_Click" style="margin-left: 36px" Text="CANCEL" />
            </td>
        </tr>
        <tr>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Label ID="lbmsg3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
