<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="WebApplicationMasters.Teachers.StudentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
        <h2>Students Lists </h2><br /> <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" />
                <asp:BoundField DataField="gender" HeaderText="Gender" />
                <asp:BoundField DataField="courses" HeaderText="Courses" />
                <asp:BoundField DataField="dob" HeaderText="DOB" />
                <asp:BoundField DataField="district" HeaderText="District" />
                <asp:BoundField DataField="username" HeaderText="Username" />
                <asp:BoundField DataField="status" HeaderText="Status" />
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                <asp:CommandField DeleteText="Confirm" HeaderText="Confirmation" ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="Block">
                    <ItemTemplate>
                       <asp:Button ID="btn1" runat="server" Text="block" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to block this user');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        
    </div>
</asp:Content>
