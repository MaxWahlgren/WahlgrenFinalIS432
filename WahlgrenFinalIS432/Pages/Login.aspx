<%@ Page Title="Login" Language="C#" MasterPageFile="~/Pages/PreLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WahlgrenFinalIS432.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="fill-height">
    <form runat="server">
        
        <div class="UserInputContainer WahlgrenTan">
            <div>
                <label>Username:</label>
                <asp:TextBox runat="server" ID="txtUsername" CssClass="txt" Placeholder="Username:"></asp:TextBox>
            </div>
            <div>
                <label>Password:</label>
                <asp:TextBox runat="server" ID="txtPassword" CssClass="txt" Placeholder="Password:" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        <hr class="WahlgrenGray" />
        <div class="UserNavigation WahlgrenTan">
            <asp:Button runat="server" ID="btnLogin" CssClass="btn" Text="Login" OnClick="btnLogin_Click"/>
            <asp:Button runat="server" ID="btnRegister" CssClass="btn" Text="Register" OnClick="btnRegister_Click"/>
        </div>
        
    </form>
</div>
</asp:Content>
