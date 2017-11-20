Imports System.Data
Imports System.Data.SqlClient
Public Class index_3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conn = DataConnector.ConnectToDB()

        Dim sql As String = "Select * from tbiRegistration where username=@username and password=@password"
        Dim comm As New SqlCommand(sql, conn)
        comm.Parameters.AddWithValue("@username", txtlog_username.Text.Trim())
        comm.Parameters.AddWithValue("@password", txtlog_pass.Text.Trim())

        Dim reader As SqlDataReader = comm.ExecuteReader

        If reader.Read Then
            Session("userid") = reader.Item("id")
            Session("username") = reader.Item("username")
            Response.Redirect("Default.aspx")
        Else
            Label1.Text = "Record does not exist."
        End If

        reader.Close()
        conn.Close()
    End Sub
End Class