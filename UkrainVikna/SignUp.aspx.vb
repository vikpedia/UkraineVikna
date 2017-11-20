Imports System.Data
Imports System.Data.SqlClient

Public Class SignUp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub resetall()
        name.Text = ""
        username.Text = ""
        password.Text = ""
        cnfpassword.Text = ""
        email.Text = ""
    End Sub

    Protected Sub signup_Click(sender As Object, e As EventArgs) Handles signup.Click
        If conditions.Checked = False Then
            Label1.Text = "Kindly check the terms and conditions."
        Else
            Dim conn = DataConnector.ConnectToDB()

            Dim sqlInsert As String = "INSERT INTO tbiRegistration (username, password, email, dateRegistered) VALUES (@username, @password, @email, @dateRegistered)"
            Dim comm As New SqlCommand(sqlInsert, conn)
            comm.Parameters.AddWithValue("@username", username.Text.Trim())
            comm.Parameters.AddWithValue("@Password", password.Text.Trim())
            comm.Parameters.AddWithValue("@email", email.Text.Trim())
            comm.Parameters.AddWithValue("@dateRegistered", Now())
            comm.ExecuteNonQuery()
            conn.Close()
            resetall()
            Label1.Text = "!**** Profile Created ****!"
        End If
    End Sub

    Protected Sub reset_Click(sender As Object, e As EventArgs) Handles reset.Click
        resetall()
    End Sub

End Class