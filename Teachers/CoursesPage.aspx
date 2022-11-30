<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CoursesPage.aspx.cs" Inherits="WebApplicationMasters.CoursesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:auto;text-align:center">
        <h3>Courses</h3><br />
        <h5>Add Courses: <asp:TextBox ID="TextName" runat="server"></asp:TextBox></h5><br />
        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /><br /><br />
        <h4>Course Details</h4>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="courseId" OnRowDeleting="GridView1_RowDeleting" HorizontalAlign="Center">
            <Columns>
                <asp:TemplateField HeaderText="Course Id">
                    <ItemTemplate><%# Eval("courseId") %></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course Name">
                    <ItemTemplate><%# Eval("courseName") %></ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" DeleteText="delete" HeaderText="Delete" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
