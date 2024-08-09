<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Controls.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Breadcrumb-->
     <div class="row pt-2 pb-2">
        <div class="col-sm-9">
		    <h4 class="page-title">Form Layouts</h4>
		    <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javaScript:void();">Bulona</a></li>
            <li class="breadcrumb-item"><a href="javaScript:void();">Forms</a></li>
            <li class="breadcrumb-item active" aria-current="page">Form Layouts</li>
         </ol>
	   </div>
	   <div class="col-sm-3">
       <div class="btn-group float-sm-right">
        <button type="button" class="btn btn-light waves-effect waves-light"><i class="fa fa-cog mr-1"></i> Setting</button>
        <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown">
        <span class="caret"></span>
        </button>
        <div class="dropdown-menu">
          <a href="javaScript:void();" class="dropdown-item">Action</a>
          <a href="javaScript:void();" class="dropdown-item">Another action</a>
          <a href="javaScript:void();" class="dropdown-item">Something else here</a>
          <div class="dropdown-divider"></div>
          <a href="javaScript:void();" class="dropdown-item">Separated link</a>
        </div>
      </div>
     </div>
     </div>
    <!-- End Breadcrumb-->

<div class="card">
           <div class="card-body">
           <div class="card-title">Round Horizontal Form</div>
           <hr>
            <form>
           <div class="form-group row">
            <label for="input-26" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
            <input type="text" class="form-control form-control-rounded" id="input-26" placeholder="Enter Your Name">
            </div>
          </div>
          <div class="form-group row">
            <label for="input-27" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
            <input type="text" class="form-control form-control-rounded" id="input-27" placeholder="Enter Your Email Address">
            </div>
          </div>
          <div class="form-group row">
            <label for="input-28" class="col-sm-2 col-form-label">Mobile</label>
            <div class="col-sm-10">
            <input type="text" class="form-control form-control-rounded" id="input-28" placeholder="Enter Your Mobile Number">
            </div>
          </div>
          <div class="form-group row">
            <label for="input-29" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
            <input type="text" class="form-control form-control-rounded" id="input-29" placeholder="Enter Password">
            </div>
          </div>
          <div class="form-group row">
            <label for="input-30" class="col-sm-2 col-form-label">Confirm Password</label>
            <div class="col-sm-10">
            <input type="text" class="form-control form-control-rounded" id="input-30" placeholder="Confirm Password">
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-2 col-form-label"></label>
            <div class="col-sm-10">
            <div class="icheck-material-primary">
            <input type="checkbox" id="user-checkbox6" checked=""/>
            <label for="user-checkbox6">Remember me</label>
            </div>
            </div>
          </div>
           <div class="form-group row">
            <label class="col-sm-2 col-form-label"></label>
            <div class="col-sm-10">
            <button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>
            </div>
          </div>
          </form>
         </div>
         </div>

		
</asp:Content>

