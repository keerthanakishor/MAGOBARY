<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="MAGOBARY.USER.Message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 137px"></td>
            <td style="width: 181px">MESSAGE</td>
            <td style="width: 156px"></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 137px">
                <asp:Label ID="Label1" runat="server" Text="Fname"></asp:Label>
            </td>
            <td style="width: 181px">
                <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
            </td>
            <td style="width: 156px">
                <asp:Label ID="Label2" runat="server" Text="Mname"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmiddlename" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; height: 24px;">
                <asp:Label ID="Label3" runat="server" Text="Lname"></asp:Label>
            </td>
            <td style="width: 181px; height: 24px;">
                <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
            </td>
            <td style="width: 156px; height: 24px;">
                <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txtmescourse" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="width: 137px">
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 181px">
                <asp:TextBox ID="txtmessageemail" runat="server"></asp:TextBox>
            </td>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 156px">
                <asp:Button ID="btnsearch" runat="server" Text="search" Width="125px" OnClick="btnsearch_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>

            <td style="width: 137px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; height: 221px"></td>
            <td style="width: 181px; height: 221px"></td>
            <td style="width: 156px; height: 221px">&nbsp;</td>
            <td style="height: 221px">
             <asp:GridView ID="gv_tpc" runat="server" style="margin-left: 70px" Width="641px" Height="139px" 
                    AutoGenerateColumns="False" OnRowCommand="gv_tpc_RowCommand" Font-Bold="True" Font-Names="Times New Roman"
                     Font-Size="14pt">
                    <Columns>
                         <asp:BoundField DataField="rno" HeaderText="Roll No"  Visible="true" >
                        <ControlStyle BackColor="#FFCCFF" />
                        <HeaderStyle BackColor="#CCCCFF" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fname" HeaderText="First Name" >
                        <ControlStyle BackColor="#FFCCFF" />
                        <HeaderStyle BackColor="#CCCCFF" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mname" HeaderText="Middle Name" >
                        <HeaderStyle BackColor="#CCCCFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="lname" HeaderText="Last Name" >
                        <HeaderStyle BackColor="#CCCCFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="course" HeaderText="Course" >
                        <HeaderStyle BackColor="#CCCCFF" />
                            </asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="Email" >
                        <ControlStyle BackColor="#FFCCFF" />
                            <HeaderStyle BackColor="#CCCCFF" />
                           </asp:BoundField>
                          <asp:TemplateField Visible="False">
                            <ItemTemplate>                                 
                                <asp:HiddenField ID="hdnRno" runat="server" Value='<%#Eval("rno")%>' />   
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:ButtonField CommandName="Message" Text="Message">
                        <ControlStyle BorderColor="#99FF33" />
                             <HeaderStyle HorizontalAlign="Center" BackColor ="#CCCCCFF" />
                             </asp:ButtonField>
                                 
                        <asp:ButtonField CommandName="accept" Text="Accept" >
                        <HeaderStyle BackColor="#CCCCFF" />
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>

            </td>

        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 181px">
                <asp:TextBox ID="txtmsg" runat="server" CssClass="col-md-offset-0" Height="106px" TextMode="MultiLine" Visible="False" Width="274px"></asp:TextBox>
            </td>
            <td style="width: 156px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 156px">
                <asp:Label ID="lblmesg" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnsend" runat="server" OnClick="btnsend_Click" Text="SEND" Width="140px" />
            </td>
        </tr>
    </table>
</asp:Content>
