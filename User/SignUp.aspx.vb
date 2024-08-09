Imports System.Data.SqlClient
Partial Class User_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\user_mstr.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Protected Sub btn_SignUp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_SignUp.Click
        cn.Open()
        qry = "insert into user_mstr values('" & txtname.Text & "','" & txtmail.Text & "','" & txtpass.Text & "'," & txtmobno.Text & ",0)"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("SignIn.aspx")
    End Sub
End Class
