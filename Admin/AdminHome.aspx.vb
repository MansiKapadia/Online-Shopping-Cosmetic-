Imports System.Data.SqlClient

Partial Class Admin_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\user_mstr.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    
    Protected Sub btn_sub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_sub.Click
        Label1.Text = ""
        If pimage.HasFile Then
            If pimage.PostedFile.ContentType = "image/jpeg" Or pimage.PostedFile.ContentType = "image/png" Then
                If pimage.PostedFile.ContentLength < 5000000 Then
                    Dim fname As String
                    fname = pimage.FileName
                    pimage.SaveAs(Server.MapPath("~/PImage/" & fname))
                    Label1.Text = "File Uploaded Successfully"
                    Image1.ImageUrl = "~/PImage/" & fname
                    cn.Open()
                    qry = "insert into product_mstr values('" & txtpname.Text & "'," & txtprice.Text & ",'" & txtpdesc.Text & "','" & fname & "')"
                    cmd = New SqlCommand(qry, cn)
                    cmd.ExecuteNonQuery()
                    cn.Close()
                End If
            Else
                Label1.Text = "Please Select Image File"
            End If
        Else
            Label1.Text = "Please Select File..."
        End If


      
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_search.Click
        cn.Open()
        qry = "select * from product_mstr where pid=" & txtpid.Text
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            txtpname.Text = dr("pname")
            txtprice.Text = dr("price")
            txtpdesc.Text = dr("pdesc")
            Image1.ImageUrl = "~/pimage/" & dr("pimage")

        Else
            Label1.Text = "Record not Found"
        End If
        cn.Close()
    End Sub

    Protected Sub btn_update_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_update.Click
        cn.Open()
        qry = "update product_mstr set pname='" & txtpname.Text & "',price=" & txtprice.Text & ",pdesc='" & txtpdesc.Text & "' where pid=" & txtpid.Text
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub

    Protected Sub btn_delete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_delete.Click
        cn.Open()
        qry = "delete from product_mstr where pid=" & txtpid.Text
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub
End Class
