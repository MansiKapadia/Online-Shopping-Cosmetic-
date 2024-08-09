<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="false" CodeFile="Purchase.aspx.vb" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form id="form1" runat="server">
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
    
    <div class="span9 ">
                            <div class="page-content">
                                <div class="products-page-head">
                                    <h1><%#Eval("pname") %></h1>
                                    <div class="tag-line">
                                        - soft clean silky hydrating lotion
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span7">
                                        <div class="flexslider product-gallery">
                                            <ul class="slides">
                                                <li data-thumb="images/p1.jpg">
                                                    <img alt=""  src='../Pimage/<%#Eval("pimage") %> '/>
                                                </li>
                                              
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="span5">
                                        <div class="product-info-box">
                                           
                                            <hr>
                                            <div class="info-holder">
                                                <h4>ID : <%#Eval("pid")%></h4>
                                                <p>
                                                   <%# Eval("pdesc")%>
                                                </p>
                                            </div>
                                            <hr>
                                          

                                          
                                            <div class="price-holder">
                                                <div class="price">
                                                    <span>RS :  <%# Eval("price")%></span>
                                                    
                                                </div>
                                            </div>
                                         <%--   <div class="buttons-holder">
                                                <a class="cusmo-btn add-button" href='AddToCart.aspx?pid=<%#Eval("pid") %>'>add to cart</a>

                                                
                                            </div>--%>
                                        </div>


                                    </div>


                                </div>
                            </div>
        </div>
    </ItemTemplate>
    </asp:Repeater>
    <br />
     <br />
      <br />

    <asp:Label ID="lbltamt" runat="server" Font-Size="X-Small"></asp:Label>
     <br />
      <br />

 <br />
       <br />
    <asp:DropDownList ID="ddlqty" runat="server" AutoPostBack="true">
        
                      <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                      <asp:ListItem Value="10"></asp:ListItem>
    </asp:DropDownList>
     <div class="buttons-holder">
         <asp:Button ID="btn_purchase" runat="server" Text="PURCHASE" class="cusmo-btn add-button" />
                <%-- <a class="cusmo-btn add-button" href='AddToCart.aspx?pid=<%#Eval("pid") %>'>add to cart</a> --%>     
                        
      </div>

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [product_mstr] WHERE ([pid] = @pid)">
           <SelectParameters>
               <asp:QueryStringParameter Name="pid" QueryStringField="pid" Type="Int32" />
           </SelectParameters>
    </asp:SqlDataSource>


       
                       
    </form>
                       
</asp:Content>

