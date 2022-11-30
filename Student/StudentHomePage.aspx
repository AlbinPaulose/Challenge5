<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentHomePage.aspx.cs" Inherits="WebApplicationMasters.Student.StudentHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login_css/images/icons/favicon.ico"/>
    <link href="../css/my_css.css" rel="stylesheet" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"><asp:Label ID="UserNameLabel" runat="server"></asp:Label></span><span class="text-black-50"></span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">My Profile</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Name</label><asp:TextBox ID="NameTextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Email</label><asp:TextBox ID="EmailTextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></div>
                </div>

                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Mobile Number</label><asp:TextBox ID="MobileTextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels">Gender</label><asp:TextBox ID="GenderTextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels">Courses</label><asp:TextBox ID="CoursesTextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels">DOB</label><asp:TextBox ID="DOBTextBox1" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels">District</label><asp:TextBox ID="DistrictTextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox></div>
                    
                </div>
                
                <div class="mt-5 text-center"><a href="LogoutPage.aspx" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Log out</a>
                </div>
                </div>
        </div>
     </div>
</div>



</asp:Content>
