Imports System.Data.SqlClient
Partial Class User_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\user_mstr.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub ddlqty_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlqty.SelectedIndexChanged
        ViewState("tamt") = ViewState("price") * ddlqty.SelectedItem.Text
        lbltamt.Text = ViewState("tamt")
    End Sub

    Protected Sub btn_purchase_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_purchase.Click
        cn.Open()
        qry = "insert into order_mstr values('" & Session("Uname") & "','" & ViewState("pname") & "'," & ViewState("price") & "," & ddlqty.Text & ",'" & ViewState("pimage") & "'," & ViewState("tamt") & ")"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()

        cn.Close()
        Response.Redirect("ShoppingCart.aspx")
    End Sub

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            Dim pid As Integer
            pid = Request.QueryString.Get("pid")
            cn.Open()
            qry = "select * from product_mstr where pid=" & pid
            cmd = New SqlCommand(qry, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()

                ViewState("pname") = dr("pname")
                ViewState("price") = dr("price")
                ViewState("pimage") = dr("pimage")
                ViewState("tamt") = dr("price")
            End If
            cn.Close()
        End If
       
    End Sub
End Class
