<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sendrequest.aspx.cs" Inherits="MAGOBARY.USER.sendrequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px; height: 22px;"></td>
            <td style="width: 181px; height: 22px;"></td>
            <td style="width: 181px; height: 22px;" class="text-center"><strong>
                <asp:Label ID="Label8" runat="server" style="font-family: 'Times New Roman'; font-size: x-large" Text="MESSAGE"></asp:Label>
                </strong></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 324px">
                &nbsp;</td>
            <td style="width: 181px">
                &nbsp;</td>
            <td style="width: 181px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px">
                <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
            </td>
            <td style="width: 181px">
                <asp:TextBox ID="txtmescourse" runat="server" Wrap="False"></asp:TextBox>
            </td>
            <td style="width: 181px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px">
                &nbsp;</td>
            <td style="width: 181px">
                &nbsp;</td>
            <td style="width: 181px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px">
                <asp:Label ID="Label1" runat="server" Text="Fname"></asp:Label>
            </td>
            <td style="width: 181px">
                <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
            </td>
            <td style="width: 181px">
                <asp:Button ID="btnsearch" runat="server" Text="search" Width="125px" OnClick="btnsearch_Click" style="background-color: #009900" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px; height: 22px;"></td>
            <td style="width: 181px; height: 22px;"></td>
            <td style="width: 181px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 324px; height: 24px;">
                <asp:Label ID="Label3" runat="server" Text="Lname" Visible="False"></asp:Label>
            </td>
            <td style="width: 181px; height: 24px;">
                <asp:TextBox ID="txtlastname" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td style="width: 181px; height: 24px;">
                <asp:Label ID="Label2" runat="server" Text="Mname" Visible="False"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txtmiddlename" runat="server" Visible="False" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="width: 324px">
                <asp:Label ID="Label5" runat="server" Text="Email" Visible="False"></asp:Label>
            </td>
            <td style="width: 181px">
                <asp:TextBox ID="txtmessageemail" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td style="width: 181px">
                <asp:Label ID="Label7" runat="server" Text="Roll No" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrollno" runat="server" style="margin-left: 24; margin-top: 14px;" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 324px">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 181px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>

            <td style="width: 324px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px; height: 221px"></td>
            <td style="width: 181px; height: 221px"></td>
            <td style="width: 181px; height: 221px">&nbsp;</td>
            <td style="height: 221px">
             <asp:GridView ID="gv_request" runat="server" style="margin-left: 0px; margin-right: 0px; margin-top: 0px;" Width="16px" Height="16px" 
                    AutoGenerateColumns="False" OnRowCommand="gv_request_RowCommand" Font-Bold="True" Font-Names="Times New Roman"
                     Font-Size="14pt" Visible="False">
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
                         <asp:ButtonField CommandName="sendrequest" Text="Send Request">
                        <ControlStyle BorderColor="#99FF33" />
                             <HeaderStyle HorizontalAlign="Center" BackColor ="#CCCCCFF" />
                             </asp:ButtonField>
                         <asp:ButtonField CommandName="acceptequest" Text="Accept">
                        <ControlStyle BorderColor="#99FF33" />
                             <HeaderStyle HorizontalAlign="Center" BackColor ="#CCCCCFF" />
                             </asp:ButtonField>
                    </Columns>
                </asp:GridView>

            </td>

        </tr>
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td style="width: 181px">
               
            </td>
            <td style="width: 181px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td style="width: 181px">&nbsp;</td>
            <td style="width: 181px">
                <asp:Label ID="lblmsg4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                
            </td>
        </tr>
    </table>


</asp:Content>
