<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="DisplayProd.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [product_mstr]"></asp:SqlDataSource>
<div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header"><i class="fa fa-table"></i> Data Exporting</div>
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>Product id</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Product Desc</th>
                        <th>Product Image</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
                     <tr>
                        <td><%# Eval("pid")%></td>
                        <td><%# Eval("pname")%></td>
                        <td><%# Eval("price")%></td>
                        <td><%# Eval("pdesc")%></td>
                        <td><%#  Eval("pimage")%></td>
                       
                    </tr>
                    </ItemTemplate>
                    </asp:Repeater>
                   
                  
                </tbody>
                <tfoot>
                    <tr>
                       <th>Product id</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Product Desc</th>
                        <th>Product Image</th>
                    </tr>
                </tfoot>
            </table>
            </div>
            </div>
          </div>
        </div>
      </div><!-- End Row-->
    </form>
</asp:Content>

