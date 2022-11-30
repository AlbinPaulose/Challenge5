<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="WebApplicationMasters.Student.Registeration" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1">
        <div>
            <br /><br />
        </div>
        <div class="center" style="width:800px; height:400px; margin:0px auto 0px auto;" >
            <asp:Label ID="Label2" runat="server" CssClass="center" Font-Underline="true" Text="Registration Form"></asp:Label><br /><br /><br />
            <asp:Label ID="NLabel" runat="server" Text="Name :"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NameText" runat="server"></asp:TextBox><br /><br />
         
            <asp:Label ID="ELabel" runat="server" Text="Email ID :"></asp:Label>
            <asp:TextBox ID="EmailText" runat="server" TextMode="Email"></asp:TextBox>
            <br /><br />

            <asp:Label ID="PLabel" runat="server" Text="Phone :"></asp:Label>
            <asp:TextBox ID="PhoneText" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Label ID="GLabel" runat="server" Text="Gender :"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="1" Text="Male"></asp:ListItem>
                <asp:ListItem Value="2" Text="Female"></asp:ListItem>
                <asp:ListItem Value="3" Text="Others"></asp:ListItem>
            </asp:RadioButtonList>
            <br/><br />

            <asp:Label ID="CLabel" runat="server" Text="Courses :"></asp:Label>
            <asp:CheckBoxList ID="CoursesCheckBoxList" runat="server"  RepeatDirection="Horizontal" RepeatLayout="Flow">
     
            </asp:CheckBoxList>
            <br /><br />

            <asp:Label ID="DLabel" runat="server" Text="Date of Birth :"></asp:Label>
            <asp:DropDownList ID="ddDate" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddMonth" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddYear" runat="server"></asp:DropDownList>
            <br /><br /><asp:Label ID="SLabel" runat="server" Text="District :"></asp:Label>
            <asp:DropDownList ID="DistrictDropDownList" AutoPostBack="true" runat="server">
                <asp:ListItem Value="1">Thiruvanathapuram</asp:ListItem>
                <asp:ListItem Value="2">Kollam</asp:ListItem>
                <asp:ListItem Value="3">Pathanamthitta</asp:ListItem>
                <asp:ListItem Value="4">Alappuzha</asp:ListItem>
                <asp:ListItem Value="5">Kottayam</asp:ListItem>
                <asp:ListItem Value="6">Idukki</asp:ListItem>
                <asp:ListItem Value="7">Ernakulam</asp:ListItem>
                <asp:ListItem Value="8">Thrissur</asp:ListItem>
                <asp:ListItem Value="9">Palakkad</asp:ListItem>
                <asp:ListItem Value="10">Malappuarm</asp:ListItem>
                <asp:ListItem Value="11">Kozhikode</asp:ListItem>
                <asp:ListItem Value="12">Wayanad</asp:ListItem>
                <asp:ListItem Value="13">Kannur</asp:ListItem>
                <asp:ListItem Value="14">Kasaragod</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label ID="PhtLabel" runat="server" Text="Photo :"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
            <asp:Label ID="ULabel" runat="server" Text="Username :"></asp:Label>
            <asp:TextBox ID="UserTextBox1" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="PassLabel" runat="server" Text="Password :"></asp:Label>
            <asp:TextBox ID="PasswordText" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click"/>

        </div>
        
    </form>
</asp:Content>
