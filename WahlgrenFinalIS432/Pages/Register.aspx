<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/PreLogin.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WahlgrenFinalIS432.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="fill-height">
    <form runat="server">
        <div id="inputContainer" class="UserInputContainer WahlgrenTan">
            <div>
                <label>Username:</label>
                <asp:TextBox runat="server" ID="txtUsername" CssClass="txt" Placeholder="Username"></asp:TextBox>
            </div>
            <div>
                <label>First Name:</label>
                <asp:TextBox runat="server" ID="txtFName" CssClass="txt" Placeholder="First Name"></asp:TextBox>
            </div>
            <div>
                <label>Last Name:</label>
                <asp:TextBox runat="server" ID="txtLName" CssClass="txt" Placeholder="Last Name"></asp:TextBox>
            </div>
            <div>
                <label>Email:</label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="txt" Placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>
            <div>
                <label>Password:</label>
                <asp:TextBox runat="server" ID="txtPassword" CssClass="txt" Placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <label>Confirm Password:</label>
                <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="txt" Placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            <hr class="WahlgrenGray" />
            <div id="navContainer" class="UserNavigation WahlgrenTan">
                <asp:Button runat="server" ID="btnLogin" CssClass="btn" Text="Login" OnClick="btnLogin_Click" />
                <asp:Button runat="server" ID="btnRegister" CssClass="btn" Text="Register" OnClick="btnRegister_Click" />
            </div>
        </div>
    </form>
</div>
</asp:Content>
