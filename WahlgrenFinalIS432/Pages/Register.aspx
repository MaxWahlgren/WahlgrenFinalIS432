<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/PreLogin.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WahlgrenFinalIS432.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="d-flex justify-content-center formContainer">
	<form runat="server">
		<div class="input-group mb-3">
            <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control inputUser" Placeholder="Username"></asp:TextBox>
		</div>
		<div class="input-group mb-2">
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control inputUser" Placeholder="Email" TextMode="Email"></asp:TextBox>
		</div>
        <div class="input-group mb-2">
            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control inputUser" Placeholder="Password" TextMode="Password"></asp:TextBox>
		</div>
        <div class="input-group mb-2">
            <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control inputUser" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        </div>
        <div class="d-flex justify-content-center">
            <asp:Label runat="server" ID="lblErrorMsg"></asp:Label>
        </div>
		
		<div class="d-flex justify-content-center mt-3 loginContainer">
            <asp:Button runat="server" ID="btnRegister" CssClass="btn btnLogin" Text="Register" OnClick="btnRegister_Click" />
		</div>
	</form>
</div>
<div class="mt-4">
	<div class="d-flex justify-content-center links">
		Already have an account? <a href="Login.aspx" class="ml-2">Sign In</a>
	</div>
</div>
</asp:Content>
