<%@ Page Title="" Language="VB" MasterPageFile="~/User/M2.master" AutoEventWireup="false" CodeFile="Conatctus.aspx.vb" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-contact">
                <div class="container">
                    
                    <div class="row-fluid">
                        <div class="span6">
                            <div class=" contact-form-holder">
                                    
                                    <h4>leave message</h4>
                               
                                    <div class="message-box"></div>

                                    <form runat="server">
                                        
                                        <div class="control-group inline-block span6">

                                                    <div class="controls">
                                                        <label class="form-label ">Name</label>
                                            <asp:TextBox id="cname" name="name"  class="required cusmo-input span12" runat="server"></asp:TextBox>
                                                        <%--<input id="cname"   name="name" size="25" class="required cusmo-input span12"  />--%>

                                                    </div>
                                                </div>

                                                <div class="control-group inline-block span6">

                                                    <div class="controls">
                                                        <label  class="form-label">Email</label>
                                                    <asp:TextBox ID="cemail" name="mail" class="required cusmo-input span12" runat="server"></asp:TextBox>
                                                       <%-- <input id="cemail"   name="mail" class="required cusmo-input span12"  />--%>

                                                    </div>
                                                </div>
                                        
                                                <div class="control-group">

                                                    <div class="controls">
                                                        <label  class="form-label">Your Message</label>
                                                    <asp:TextBox ID="ccomment" runat="server" name="msj" class="required span12 cusmo-input"></asp:TextBox>
                                                        <%--<textarea  id="ccomment" name="msj" rows="5"  cols="5" class="required span12 cusmo-input"></textarea>--%>
                                                    </div>
                                                </div>
                                                <asp:Button ID="Button1" runat="server" Text="Button" class="submit cusmo-btn narrow"></asp:Button>
                                        <div class="text-right">
                                        
                                                <%--<input class="submit cusmo-btn narrow" type="submit" value="SUBMIT" />--%>
                                        </div>
                                                <div id="loading" class="pull-right">
                                                    <img alt="" src="images/loader.gif" />
                                                </div>


                                    </form>
                                </div>
                        </div>
                        <div class="span6">
                            <div class="contact-info-boxes">
                            <h4>contact information</h4>
                            <div class="row-fluid contact-info">
                                <div class="span6">
                                    <p>
                                    Cusmotico shop<br>
                                        Good Town 122,Beauty Center<br>
                                        New York, USA<br><br>
                                        <a class="email-link" href="mailto:info@example.com">info@example.com</a>
                                    </p>
                                </div>
                                <div class="span6">
                                    <p>
                                        
                                        <strong>Information:</strong><br>
                                        +1 (123) 456 7890<br><br>
                                        
                                         <strong>Delivery</strong><br>
                                        +45 (123) 321 1221
                                        
                                    </p>
                                </div>
                            </div>
                        </div>
                              </div>
                    </div>
                    
                </div>




            </section>

</asp:Content>

