Imports System.Data.SqlClient
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\user_mstr.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Protected Sub btn_SignIn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_SignIn.Click
        cn.Open()
        qry = "select * from user_mstr where Email='" & txtmail.Text & "' and Password='" & txtpass.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            Dim s As Integer
            s = dr("status")
            If s = 1 Then
                Response.Redirect("ahome.aspx")
            Else
                Label1.Text = "You Are Not Admin.."
            End If
        Else
            Label1.Text = "Record Not Found.."
        End If
        cn.Close()

    End Sub
End Class
