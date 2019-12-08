<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Home.master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WahlgrenFinalIS432.Pages.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w3-main" style="margin-left: 250px">

        <!-- Push down content on small screens -->
        <div class="w3-hide-large" style="margin-top: 83px"></div>

        <header class="align-content-center w3-container w3-xlarge WahlgrenYellow WahlgrenDark">
            <p class="w3-left">Circulation Desk</p>
            <p class="w3-right row">
                <input class="inputUser" placeholder="Find a book...">
                <button runat="server" id="btnSearch" class="btnSearch btnHeader">
                    <i class="fa fa-search"></i>
                </button>
                <button runat="server" id="btnCart" class="btnHeader">
                    <i class="fa fa-shopping-cart w3-margin-right"></i>
                    <span class="itemNumber">0</span>
                </button>
            </p>
        </header>

        <div class="w3-container WahlgrenDark" id="announcements">
            <p>New Reads</p>
        </div>

        <div class="w3-row w3-grayscale">
            <div class="w3-col l3 s6">
                <div class="w3-container">
                    <div class="imageContainer"></div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
                <div class="w3-container">
                    <div class="imageContainer"></div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
            </div>

            <div class="w3-col l3 s6">
                <div class="w3-container">
                    <div class="w3-display-container">
                        <div class="imageContainer"></div>
                        <div class="w3-display-middle w3-display-hover">
                            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
                        </div>
                    </div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
                <div class="w3-container">
                    <div class="imageContainer"></div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
            </div>

            <div class="w3-col l3 s6">
                <div class="w3-container">
                    <div class="imageContainer"></div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
                <div class="w3-container">
                    <div class="w3-display-container">
                        <div class="imageContainer"></div>
                        <div class="w3-display-middle w3-display-hover">
                            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
                        </div>
                    </div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
            </div>

            <div class="w3-col l3 s6">
                <div class="w3-container">
                    <div class="imageContainer"></div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
                <div class="w3-container">
                    <div class="imageContainer"></div>
                    <p>
                        Title<br>
                        <b>Author</b>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
