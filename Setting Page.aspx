<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Setting Page.aspx.cs" Inherits="MAGOBARY.USER.Setting_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 56px"></td>
            <td style="height: 56px">
                <asp:Label ID="Label1" runat="server" Text="Personal Details" style="color: #CC0000; font-family: Arial; font-weight: bold; font-size: x-large"></asp:Label>
            </td>
            <td style="height: 56px"></td>
        </tr>
        <tr>
            <td style="height: 44px">
                <asp:Label ID="Label2" runat="server" Text="First Nmae"></asp:Label>
            </td>
            <td style="height: 44px">
                <asp:TextBox ID="txtftname" runat="server"></asp:TextBox>
            </td>
            <td style="height: 44px"></td>
        </tr>
        <tr>
            <td style="height: 43px">
                <asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label>
            </td>
            <td style="height: 43px">
                <asp:TextBox ID="txtmdname" runat="server"></asp:TextBox>
            </td>
            <td style="height: 43px"></td>
        </tr>
        <tr>
            <td style="height: 44px">
                <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td style="height: 44px">
                <asp:TextBox ID="txtltname" runat="server"></asp:TextBox>
            </td>
            <td style="height: 44px"></td>
        </tr>
        <tr>
            <td style="height: 44px">
                <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td style="height: 44px">
                <asp:TextBox ID="txtudob" runat="server"></asp:TextBox>
            </td>
            <td style="height: 44px"></td>
        </tr>
        <tr>
            <td style="height: 44px">
                <asp:Label ID="Label23" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="height: 44px">
                <asp:RadioButton ID="radiomale" runat="server" Text="Male" />
                <asp:RadioButton ID="radioFemale" runat="server" Text="Female" />
            </td>
            <td style="height: 44px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 53px">
                <asp:Label ID="Label20" runat="server" Text="course"></asp:Label>
            </td>
            <td style="height: 53px">
                <asp:DropDownList ID="stream" runat="server" Width="120px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>MTECH</asp:ListItem>
                    <asp:ListItem>BTECH</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 53px"></td>
        </tr>
        <tr>
            <td style="height: 46px">
                <asp:Label ID="Label7" runat="server" Text="Batch"></asp:Label>
            </td>
            <td style="height: 46px">
                <asp:TextBox ID="txtubatch" runat="server"></asp:TextBox>
            </td>
            <td style="height: 46px"></td>
        </tr>
        <tr>
            <td style="height: 51px">
                <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="height: 51px">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
            <td style="height: 51px"></td>
        </tr>
        <tr>
            <td style="height: 42px">
                <asp:Label ID="Label9" runat="server" Text="Mobile number"></asp:Label>
            </td>
            <td style="height: 42px">
                <asp:TextBox ID="txtmno" runat="server"></asp:TextBox>
            </td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td style="height: 48px">
                <asp:Label ID="Label21" runat="server" Text="Bloog Group"></asp:Label>
            </td>
            <td style="height: 48px">
                <asp:TextBox ID="txtbg" runat="server"></asp:TextBox>
            </td>
            <td style="height: 48px"></td>
        </tr>
        <tr>
            <td style="height: 50px">
                <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 50px">
                <asp:TextBox ID="txtuemail" runat="server"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="height: 49px">
                <asp:Label ID="Label12" runat="server" Text="Alternate Email"></asp:Label>
            </td>
            <td style="height: 49px">
                <asp:TextBox ID="txtaemail" runat="server"></asp:TextBox>
            </td>
            <td style="height: 49px"></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 42px">
            </td>
            <td style="height: 42px">
                <asp:Label runat="server" Text="UPLOAD  PHOTO" style="font-family: 'Times New Roman'; font-weight: bold; font-size: x-large"></asp:Label>
            </td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 45px">
                &nbsp;</td>
            <td style="height: 45px">
                &nbsp;</td>
            <td style="height: 45px"></td>
        </tr>
        <tr>
            <td style="height: 52px">
                <asp:Label ID="Label22" runat="server" Text="photo"></asp:Label>
            </td>
            <td style="height: 52px">
                <asp:FileUpload ID="userphoto" runat="server" />
            </td>
            <td style="height: 52px"></td>
        </tr>
        <tr>
            <td style="height: 53px">
                &nbsp;</td>
            <td style="height: 53px">
                <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
            </td>
            <td style="height: 53px"></td>
        </tr>
        <tr>
            <td style="height: 49px">
                &nbsp;</td>
            <td style="height: 49px">
                &nbsp;</td>
            <td style="height: 49px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 53px"></td>
            <td style="height: 53px">
            </td>
            <td style="height: 53px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 48px">
                &nbsp;</td>
            <td style="height: 48px">
                &nbsp;</td>
            <td style="height: 48px"></td>
        </tr>
        <tr>
            <td style="height: 29px"></td>
            <td style="height: 29px"></td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="height: 72px"></td>
            <td style="height: 72px">
                &nbsp;</td>
            <td style="height: 72px"></td>
        </tr>
        <tr>
            <td style="height: 61px"></td>
            <td style="height: 61px">
                &nbsp;</td>
            <td style="height: 61px"></td>
        </tr>
    </table>
</asp:Content>
