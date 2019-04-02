<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="MAGOBARY.USER.Home" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="dvuprofile" runat="server" AutoGenerateRows="False"
    DataKeyNames="rno"  AllowPaging="True"
    EnableViewState="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="431px" OnPageIndexChanging="dvuprofile_PageIndexChanging" style="margin-right: 862px" Width="1301px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <Fields>
        <asp:BoundField DataField="rno" HeaderText="Roll no"
          SortExpression="roll no" />
        <asp:BoundField DataField="fname" HeaderText="Fname"
          ReadOnly="True" SortExpression="First Nmae" />
        <asp:BoundField DataField="mname" HeaderText="mname"
          ReadOnly="True" SortExpression="Middle Name Nmae" />
        <asp:BoundField DataField="lname" HeaderText="lname"
          ReadOnly="True" SortExpression="Last Name" />
        <asp:BoundField DataField="dob" HeaderText="DOB"
          ReadOnly="True" SortExpression="Date Of Birth" />
        <asp:BoundField DataField="gender" HeaderText="Gender"
          ReadOnly="True" SortExpression="Gender" />
        <asp:BoundField DataField="course" HeaderText="Course"
          ReadOnly="True" SortExpression="Course" />
        <asp:BoundField DataField="batch" HeaderText="Batch"
          ReadOnly="True" SortExpression="First Nmae" />
        <asp:BoundField DataField="email" HeaderText="Email"
          ReadOnly="True" SortExpression="Email" />
    </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
</asp:DetailsView>
</asp:Content>
