<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Home.master" AutoEventWireup="true" CodeBehind="BookView.aspx.cs" Inherits="WahlgrenFinalIS432.Pages.MyLibrary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/BookView.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="w3-main" style="margin-left: 250px">

            <!-- Push down content on small screens -->
            <div class="w3-hide-large"></div>

            <header class="align-content-center w3-container w3-xlarge WahlgrenYellow WahlgrenDark">
                <div class="w3-row w3-container">
                    <div class="w3-row">
                        <asp:LinkButton ID="btnBack" runat="server" CssClass="btnSearch" OnClick="btnBack_Click"><i class="fas fa-arrow-left"></i></asp:LinkButton>
                    </div>
                </div>
            </header>

            <div class="w3-container WahlgrenDark" id="announcements">
                <p>Book Title</p>
            </div>

            <div class="w3-row">
                <div class="w3-col l3 s6">
                    <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer">
                                <%-- Image --%>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="w3-col l3 s6">
                    <div class="w3-container">
                        <div class="w3-display-container">
                            <p>Author: </p>
                            <p>Genre: </p>
                            <p>Short: </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w3-row">
                <div class="w3-col l3 s6">
                    <div class="w3-container">
                        <asp:LinkButton ID="btnReadBook" runat="server" CssClass="btnOpenBook WahlgrenYellow" OnClick="btnReadBook_Click">Read&nbsp&nbsp<i class="fab fa-readme"></i></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
