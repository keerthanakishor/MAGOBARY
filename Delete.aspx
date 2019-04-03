<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="MAGOBARY.ADMIN.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="gvdelete" runat="server"  AutoGenerateColumns="False" OnRowCommand="gvdelete_RowCommand" OnSelectedIndexChanged="gvdelete_SelectedIndexChanged">
        <Columns>
        <asp:BoundField DataField="rno" HeaderText="rno" />
        <asp:BoundField DataField="fname" HeaderText="fname" />
             <asp:BoundField DataField="mname" HeaderText="mname" />
             <asp:BoundField DataField="lname" HeaderText="lname" />
             <asp:BoundField DataField="dob" HeaderText="dob" />
             <asp:BoundField DataField="gender" HeaderText="gender" />
             <asp:BoundField DataField="course" HeaderText="course" />
             <asp:BoundField DataField="Batch" HeaderText="Batch" />
             <asp:BoundField DataField="email" HeaderText="email" />
            <asp:TemplateField Visible="False">
                            <ItemTemplate>                                 
                                <asp:HiddenField ID="hdnId" runat="server" Value='<%#Eval("rno")%>' />   
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField CommandName="Delete" Text="Delete" />
       
    </Columns>
    </asp:GridView>
</asp:Content>
