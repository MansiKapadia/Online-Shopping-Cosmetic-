<%@ Page Title="" Language="VB" MasterPageFile="~/User/M2.master" AutoEventWireup="false" CodeFile="SignIn.aspx.vb" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="phase-title current">
                        <h1>LOG IN</h1>
                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <div class="form-holder ">
                                <h4>LOG IN</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem purus, interdum a mi eget.
                                </p>
                                <form runat="server">
                                    <div class="control-group">

                                        <div class="controls">
                                            <div class="form-label ">Email</div>
                                            <asp:TextBox ID="txtmail" runat="server" class="required span12 cusmo-input"></asp:TextBox>
                                            <%--<input type="text" id="email"   name="email"  class="required span12 cusmo-input"  />--%>

                                        </div>
                                    </div>

                                    <div class="control-group">

                                        <div class="controls">
                                            <div class="form-label ">Password</div>
                                            <asp:TextBox ID="txtpass" runat="server" class="required span12 cusmo-input" textmode="password"></asp:TextBox>
                                            <%--<input id="password" type="password"  name="password" class="required span12 cusmo-input"  />--%>

                                        </div>
                                    </div>
                                    <div class="rememberme">
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                    </div>
                                    <div class="forget-password">

                                        <a href="#">Forgot your password?</a>

                                    </div>
                                    <div class="button-holder">
                                        <asp:Button ID="btn_login" runat="server" Text="log in"  class="cusmo-btn narrow " />
                                    <%--<button class="cusmo-btn narrow " type="submit" >log in</button>--%>
                                    </div>
                                </form>
                            </div>
                            
                        </div>
                        
                    </div>
</asp:Content>

