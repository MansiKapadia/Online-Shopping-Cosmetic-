Imports System.Data.SqlClient
Partial Class User_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\user_mstr.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Protected Sub btn_login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_login.Click
        cn.Open()
        qry = "select * from user_mstr where email='" & txtmail.Text & "' and password='" & txtpass.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            Dim status As Integer
            status = dr("status")
            If status = 0 Then
                Session("uname") = dr("uname")
                Response.Redirect("Displayproduct.aspx")
            Else
                Response.Redirect("../Admin/AdminHome.aspx")
            End If
            
        Else
            Label1.Text = "Invalid...."
        End If

        cn.Close()
    End Sub
End Class
