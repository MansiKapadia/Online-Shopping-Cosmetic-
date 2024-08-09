
Partial Class User_Default
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("Signin.aspx")
    End Sub
End Class
