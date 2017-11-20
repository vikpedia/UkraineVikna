Imports System.Data
Imports System.Data.SqlClient

Public Class Checkin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DataLoad()
    End Sub

    Private Sub DataLoad()
        Dim conn = DataConnector.ConnectToDB()

        Dim query As String = "Select * from tblBooking where UID=@uid"
        Dim da As New SqlDataAdapter(query, conn)
        da.SelectCommand.Parameters.AddWithValue("@uid", Session("userid"))
        Dim ds As New DataSet
        da.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        'Response.Write(GridView1.SelectedRow.Cells(2).Text)
        Session("bookingcode") = GridView1.SelectedRow.Cells(2).Text
        Session("passengerid") = GridView1.SelectedRow.Cells(4).Text
    End Sub

    Protected Sub cin_Click(sender As Object, e As EventArgs) Handles cin.Click

        Response.Write(Session("bookingcode"))
        Dim conn = DataConnector.ConnectToDB()

        'select booking details
        Dim Query2 As String = "Select * From tblCheckin Where BookingCode=@bcode"
        Dim comm2 As New SqlCommand(Query2, conn)
        comm2.Parameters.AddWithValue("@bcode", Session("bookingcode"))
        Dim reader1 As SqlDataReader = comm2.ExecuteReader
        If reader1.Read Then
            Dim b_code As String = reader1.Item("BookingCode")
            Dim Chk_in = reader1.Item("Checkin")
            If reader1.Item("BookingCode") = Session("bookingcode") And reader1.Item("Checkin") = "Done" Then
                MsgBox("Already Checked-In.")
            Else
                'MsgBox("Done Checked-In.")
                Response.Write("done")
            End If
        End If
        reader1.Close()
        conn.Close()


        'Dim conn = DataConnector.ConnectToDB()
        '
        'Dim Query1 As String = "INSERT INTO tblCheckin (UID, PID, BookingCode, Checkin) VALUES (@uid, @pid, @bcode, @checkin)"
        'Dim comm As New SqlCommand(Query1, conn)
        'comm.Parameters.AddWithValue("@uid", Session("userid"))
        'comm.Parameters.AddWithValue("@pid", Session("passengerid"))
        'comm.Parameters.AddWithValue("@bcode", Session("bookingcode"))
        'comm.Parameters.AddWithValue("@checkin", "Done")
        'comm.ExecuteNonQuery()
        'MsgBox("Check-In Successful, Kindly collect your boarding pass from the boarding counter.")
    End Sub

    Private Sub C_in()


    End Sub

End Class