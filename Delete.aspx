<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="MAGOBARY.ADMIN.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 53px"></td>
            <td style="height: 53px">
                <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman'; font-weight: bold; font-size: large" Text="Delete"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 54px">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 54px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 62px"></td>
            <td style="height: 62px">
                <asp:Button ID="btndelete" runat="server" Text="Delete" />
            </td>
        </tr>
    </table>
</asp:Content>
