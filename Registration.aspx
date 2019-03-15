<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MAGOBARY.ADMIN.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 48px"></td>
            <td style="height: 48px">
                <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman'; font-weight: bold; font-size: large" Text="REGISTATION"></asp:Label>
            </td>
            <td style="height: 48px"></td>
        </tr>
        <tr>
            <td style="height: 50px">
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            </td>
            <td style="height: 50px">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="height: 51px">
                <asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label>
            </td>
            <td style="height: 51px">
                <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
            </td>
            <td style="height: 51px"></td>
        </tr>
        <tr>
            <td style="height: 53px">
                <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td style="height: 53px">
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            </td>
            <td style="height: 53px"></td>
        </tr>
        <tr>
            <td style="height: 41px">
                <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td style="height: 41px">
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
            </td>
            <td style="height: 41px"></td>
        </tr>
        <tr>
            <td style="height: 42px">
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="height: 42px">
                <asp:RadioButton ID="radiomale" runat="server" Text="Male" />
                <asp:RadioButton ID="radiofemale" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Female" />
            </td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td style="height: 46px">
                <asp:Label ID="Label7" runat="server" Text="Course"></asp:Label>
            </td>
            <td style="height: 46px">
                <asp:TextBox ID="txtcourse" runat="server" Width="122px"></asp:TextBox>
            </td>
            <td style="height: 46px"></td>
        </tr>
        <tr>
            <td style="height: 52px">
                <asp:Label ID="Label8" runat="server" Text="Batch"></asp:Label>
            </td>
            <td style="height: 52px">
                <asp:TextBox ID="txtbatch" runat="server"></asp:TextBox>
            </td>
            <td style="height: 52px"></td>
        </tr>
        <tr>
            <td style="height: 31px">
                <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 31px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td style="height: 31px"></td>
        </tr>
        <tr>
            <td style="height: 38px">
                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="height: 38px">
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
            <td style="height: 38px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
