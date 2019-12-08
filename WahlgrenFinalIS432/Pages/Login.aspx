<%@ Page Title="Login" Language="C#" MasterPageFile="~/Pages/PreLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WahlgrenFinalIS432.Pages.Login" Debug="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center formContainer">
		<form runat="server">
			<div class="input-group mb-2">
                <asp:TextBox runat="server" ID="txtUsername" Placeholder="Username" CssClass="form-control inputUser"></asp:TextBox>
			</div>
			<div class="input-group mb-2">
                <asp:TextBox runat="server" type="password" ID="txtPassword" Placeholder="Password" CssClass="form-control inputPass"></asp:TextBox>
			</div>
            <div class="d-flex justify-content-center">
                <asp:Label runat="server" ID="lblErrorMsg"></asp:Label>
            </div>
		
			<div class="d-flex justify-content-center mt-3 loginContainer">
                <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn btnLogin" OnClick="btnLogin_Click"/>
		    </div>
		</form>
	</div>
    <div class="mt-2">
		<div class="d-flex justify-content-center links">
			Don't have an account? <a href="Register.aspx" class="ml-2">Sign Up</a>
		</div>
	</div>
</asp:Content>