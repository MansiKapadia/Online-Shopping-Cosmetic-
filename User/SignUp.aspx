<%@ Page Title="" Language="VB" MasterPageFile="~/User/M2.master" AutoEventWireup="false" CodeFile="SignUp.aspx.vb" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="phase-title current">
                        <h1>SIGN UP</h1>
                    </div>

                    <div class="row-fluid">
                        
                        <div class="span6">
                            <div class="form-holder" >
                                <h4>new member</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem purus, interdum a mi eget.
                                </p>
                                <form runat="server"  >
                                     <div class="control-group">

                                        <div class="controls">
                                            <div class="form-label ">Name</div>

                                            <%--<input type="text"  name="email"  class="required span12 cusmo-input"  />--%>
                                            <asp:TextBox ID="txtname" runat="server" class="required span12 cusmo-input"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="control-group">

                                        <div class="controls">
                                            <div class="form-label ">Email</div>

                                            <%--<input type="text"  name="email"  class="required span12 cusmo-input"  />--%>
                                            <asp:TextBox ID="txtmail" runat="server" class="required span12 cusmo-input"></asp:TextBox>

                                        </div>
                                    </div>
                             
                                    <div class="control-group">

                                        <div class="controls">
                                            <div class="form-label ">Password</div>

                                            <%--<input type="password"  name="password" class="required span12 cusmo-input"  />--%>
                                               <asp:TextBox ID="txtpass" runat="server" class="required span12 cusmo-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">

                                        <div class="controls">
                                            <div class="form-label ">Mob No</div>

                                            <%--<input type="password"  name="repassword" class="required span12 cusmo-input"  />--%>
                                            <asp:TextBox ID="txtmobno" runat="server" class="required span12 cusmo-input"></asp:TextBox>

                                        </div>
                                    </div>
                                  <%--  <button class="cusmo-btn narrow pull-right" type="submit" >sign up</button>--%>
                                <asp:Button ID="btn_SignUp" runat="server" Text="Button" class="cusmo-btn narrow pull-right" />
                                </form>
                           
                            </div>
                        </div>
                    </div>
                   
             
</asp:Content>

