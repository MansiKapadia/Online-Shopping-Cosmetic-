
Partial Class User_Default
    Inherits System.Web.UI.Page

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uname") <> "" Then
            Label1.Text = "WELCOME " & Session("uname")
        Else
            Response.Redirect("SignIn.aspx")
        End If
    End Sub
End Class
