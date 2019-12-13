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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="getBookById" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblBookId" Name="BookId" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label runat="server" Visible="false" ID="lblBookId" ></asp:Label>
            
            <asp:Repeater runat="server" ID="bookViewRepeater" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="w3-container WahlgrenDark" id="announcements">
                        <b><asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>' /></b>
                    </div>

                    <div class="w3-row">
                        <div class="w3-col l3 s6">
                            <div class="w3-container">
                                <div class="w3-display-container">
                                    <div class="imageContainer">
                                        <asp:Image runat="server" ImageUrl='<%# Eval("ImgUrl", "~/Images/{0}") %>' />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="w3-col l3 s6">
                            <div class="w3-container">
                                <div class="w3-display-container">
                                    <p><b>Author: </b><asp:Label ID="lblAuthor" runat="server" Text='<%# Eval("Author") %>' /></p>
                                    
                                    <p><b>ISBN: </b><asp:Label ID="lblISBN" runat="server" Text='<%# Eval("ISBN") %>' /> </p>
                                    
                                    <p><b>Publication Date: </b><asp:Label ID="lblPublicationDate" runat="server" Text='<%# Eval("PublicationDate") %>' /></p>
                                    
                                    <p><b>Short Description: </b><asp:Label ID="lblShortDescription" runat="server" Text='<%# Eval("ShortDescription") %>' /></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w3-row">
                        <div class="w3-col l3 s6">
                            <div class="w3-container">
                                <asp:LinkButton ID="btnReadBook" runat="server" OnClick="btnReadBook_Click" CssClass="btnOpenBook WahlgrenYellow">
                                    Read&nbspNow&nbsp&nbsp<i class="fab fa-readme"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>
