<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="false" CodeFile="ShoppingCart.aspx.vb" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="section-shopping-cart">
                <div class="container">
                    <div class="row-fluid">

                        <div class="span12">
                            <div class="page-content shopping-cart-page ">

                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="span2">ID</th>
                                            <th class="span3">PRODUCT NAME</th>
                                            
                                            <th class="span2">IMAGE</th>
                                            <th class="span2">PRICE</th>
                                            <th class="span2">QUANTITY</th>
                                            <th class="span1 price-column">TOTAL </th>
                                            <th class="span2">&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT * FROM [order_mstr] WHERE ([uname] = @uname)">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="uname" Name="uname" Type="String"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                    <tr>
                                         <td>
                                            <%#Eval("orid")%>
                                         </td>
                                           <td>
                                            <%#Eval("pname")%>
                                         </td>
                                         
                                            <td>
                                                <div class="thumb">
                                                 <img alt="" src="../PImage/<%#Eval("pimage") %>" />
                                                   <%-- <img alt="" src="images/p7.jpg" />--%>
                                                </div>
                                            </td>
                                           
                                            <td>

                                                <div class="price">
                                                <%# Eval("price")%>
                                                  <%--  $112.00--%>
                                                </div>

                                            </td>
                                            <td>
                                                <div class="quantity">
                                                <%# Eval("qty")%>
                                                   <%-- <select class="chosen-select">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>

                                                    </select> --%>
                                                </div>
                                            </td>
                                            <td>

                                                <div class="price">
                                                <%# Eval("total")%>
                                                  <%--  $112.00--%>
                                                </div>

                                            </td>

                                         <%--   <td>

                                                <div class="price">
                                                    $112.00
                                                </div>

                                            </td>--%>

                                            <td>

                                                <div class="delete">
                                                    <a class="close-btn" href="#"></a>
                                                </div>

                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                   </asp:Repeater>

                                         
                                     
                                       

                                    </tbody>
                                </table>
                             
                            </div>
                        </div>
                    </div>
                </div>
            </section>

</asp:Content>

