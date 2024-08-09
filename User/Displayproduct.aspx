<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="false" CodeFile="Displayproduct.aspx.vb" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



            <form id="form1" runat="server">

            <section class="section-home-products">
                <div class="container">
                    <div class="controls-holder nav-tabs">
                        <ul class="inline">
                            <li class="active"><a data-toggle="tab" href="#hot-products">Hot products</a></li>
                         
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div id="hot-products" class="products-holder active tab-pane ">
                            <div class="row-fluid">
                               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                              
                                  <ItemTemplate>
                                   <div class="span3">
                                    <div class="product-item">

                                        <a href="products-page.html">
                                            <img alt="" src="../PImage/<%#Eval("pimage") %>" />
                                            <h1>versace</h1>
                                        </a>
                                        <div class="tag-line">
                                            <span><%#Eval("pname") %></span>
                                            <span>toilet water spray</span>
                                        </div>
                                        <div class="price">
                                            RS 270.00
                                        </div>
                                        <a class="cusmo-btn add-button" href='Purchase.aspx?pid=<%#Eval("pid") %>'>add to cart</a>
                                    </div>
                                </div>
                                  </ItemTemplate>
                             
                              </asp:Repeater>

                               


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [product_mstr]"></asp:SqlDataSource>


                            <div class="load-more-holder">
                                <a href="#hot-products" class="load-more">
                                    load more hot products
                                </a>
                            </div>

                        </div>


            </section>

        

            </form>

        
</asp:Content>

