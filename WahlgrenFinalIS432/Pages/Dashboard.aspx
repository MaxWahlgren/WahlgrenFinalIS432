<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Home.master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WahlgrenFinalIS432.Pages.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="w3-main" style="margin-left: 250px">

            <!-- Push down content on small screens -->
            <div class="w3-hide-large"></div>

            <header class="align-content-center w3-container w3-xlarge WahlgrenYellow WahlgrenDark">
                <div class="w3-row w3-container">
                    <div class="w3-row">
                        <div class="search iconWrapper">
                            <asp:TextBox runat="server" ID="txtSearch" Placeholder="Find a Book..." CssClass="form-control search"></asp:TextBox>
                            <asp:LinkButton ID="btnFind" runat="server" CssClass="btnSearch"><i class="fa fa-search"></i></asp:LinkButton>
                        </div>
                        <div class="iconWrapper">
                            <asp:LinkButton ID="btnCheckout" runat="server" CssClass="btnHeader">
                                <i class="fa fa-shopping-cart w3-margin-right"></i>
                                <p class="itemNumber">0</p>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>

            </header>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="getBookDataForDashboard" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <div class="w3-container WahlgrenDark" id="announcements">
                <p>New Reads
                </p>
            </div>
            
            <div class="w3-row">
                <div class="w3-col l3 s6">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                        <div class="w3-container">
                            <div class="w3-display-container">
                                <div class="imageContainer">
                                    <asp:Image runat="server" ImageUrl='<%# Eval("ImgUrl", "~/Images/{0}") %>' /> 
                                </div>
                                <div class="w3-display-middle w3-display-hover">
                                    <div class="iconWrapper">
                                        <asp:HyperLink runat="server" ID="btnViewBook" CssClass="btnOpenBook WahlgrenYellow" NavigateUrl='<%#Eval("BookId", "BookView.aspx?B={0}") %>'>
                                            View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                        </asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                            <b><asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>' /></b>
                            <br />
                            <asp:Label ID="lblAuthor" runat="server" Text='<%# Eval("Author") %>'/>
                        </div>
                        </ItemTemplate>
                    </asp:Repeater>
                   <%-- <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer">
                                <asp:Image runat="server" ImageUrl="" />
                            </div>

                            <div class="w3-display-middle w3-display-hover">
                                <div class="iconWrapper">
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnViewBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                        View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <b><asp:Label ID="Label1" runat="server" Text="Title" /></b>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Author"/>
                    </div>

                <div class="w3-col l3 s6">

                    <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer"></div>
                            <div class="w3-display-middle w3-display-hover">
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="btnViewBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                    View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <p><b>Title</b></p>
                        <p>Author</p>
                    </div>
                    <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer"></div>
                            <div class="w3-display-middle w3-display-hover">
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="btnViewBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                    View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <p><b>Title</b></p>
                        <p>Author</p>
                    </div>
                </div>

                <div class="w3-col l3 s6">

                    <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer"></div>
                            <div class="w3-display-middle w3-display-hover">
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="btnViewBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                    View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <p><b>Title</b></p>
                        <p>Author</p>
                    </div>

                    <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer"></div>
                            <div class="w3-display-middle w3-display-hover">
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="btnViewBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                    View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <p><b>Title</b></p>
                        <p>Author</p>
                    </div>
                </div>

                <div class="w3-col l3 s6">

                    <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer"></div>
                            <div class="w3-display-middle w3-display-hover">
                                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="btnViewBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                    View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <p><b>Title</b></p>
                        <p>Author</p>
                    </div>

                    <div class="w3-container">
                        <div class="w3-display-container">
                            <div class="imageContainer"></div>
                            <div class="w3-display-middle w3-display-hover">
                                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="btnViewBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                    View&nbsp&nbsp&nbsp<i class="fas fa-book-open"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <p><b>Title</b></p>
                        <p>Author</p>
                    </div>--%>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
