<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplicationMasters.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-pf-page" style="margin:auto;text-align:center"> 
            <div class="card-pf" style="margin:auto;text-align:center" >
              <header class="login-pf-header">
                <h1>Login Page</h1>
              </header>
                <div class="form-group">
                  <label class="sr-only" for="exampleInputEmail1">Username</label><br/> 
                    <asp:TextBox ID="NameTextBox" width="400" runat="server" ></asp:TextBox>
                </div><br/>
                <div class="form-group">
                  <label class="sr-only"  for="exampleInputPassword1">Password
                  </label><br/>
                    <asp:TextBox ID="PasswordTextBox" Width="400" runat="server" TextMode="Password"></asp:TextBox>

                </div>
                
                  <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
              
              <p class="login-pf-signup">Need an account?<a href="Student/Registeration.aspx">Sign up</a></p><br /><br />
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large"></asp:Label>
            </div><!-- card -->
</div><!-- login-pf-page --> 
</asp:Content>
