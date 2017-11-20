Imports System.Data
Imports System.Data.SqlClient

Public Class Manageprofile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        loadData()

    End Sub
    Private Sub loadData()
        If Not Page.IsPostBack Then
            Dim conn = DataConnector.ConnectToDB()

            Dim sqlInsert As String = "Select * from tbiRegistration where id=@id"
            Dim comm As New SqlCommand(sqlInsert, conn)
            comm.Parameters.AddWithValue("@id", CInt(Session("userid")))
            Dim reader As SqlDataReader = comm.ExecuteReader

            If reader.Read Then
                id.Text = Session("userid")
                username.Text = reader.Item("username")
                password.Text = reader.Item("password")
                email.Text = reader.Item("email")
            End If
            reader.Close()
            conn.Close()
        End If
    End Sub

    Private Sub resetall()
        password.Text = ""
        email.Text = ""
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim conn = DataConnector.ConnectToDB()

        Dim sqlInsert As String = "Update tbiRegistration SET password=@password, email=@email where id=@id"
        Dim comm As New SqlCommand(sqlInsert, conn)
        comm.Parameters.AddWithValue("@id", CInt(Session("userid")))
        comm.Parameters.AddWithValue("@password", password.Text.Trim())
        comm.Parameters.AddWithValue("@email", email.Text.Trim())
        comm.ExecuteNonQuery()
        conn.Close()
        resetall()
        lblNotification.Text = "Profile Upadted ..... !"
    End Sub

    Protected Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click
        resetall()
        lblNotification.Text = ""
    End Sub

End Class