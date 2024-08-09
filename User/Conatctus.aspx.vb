Imports System.Data.SqlClient
Partial Class User_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\user_mstr.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cn.Open()
        qry = "insert into contact_mstr values('" & cname.Text & "','" & cemail.Text & "','" & ccomment.Text & "')"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub
End Class
