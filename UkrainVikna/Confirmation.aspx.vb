Imports System.Data
Imports System.Data.SqlClient

Public Class Confirmation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DataLoad()
        DataLoad1()
        DataLoad2()
    End Sub

    Private Sub DataLoad()
        Dim conn = DataConnector.ConnectToDB()


        'select values from tabel passenger details
        Dim Query1 As String = "Select * From tblPassengers Where PassengerID=@pid"
        Dim comm1 As New SqlCommand(Query1, conn)
        comm1.Parameters.AddWithValue("@pid", Session("PID"))
        Dim reader As SqlDataReader = comm1.ExecuteReader
        If reader.Read Then
            userid.Text = reader.Item("UserID")
            pid.Text = reader.Item("PassengerID")
            Dim fname As String = reader.Item("FirstName")
            Dim lname As String = reader.Item("LastName")
            pname.Text = fname & lname
            passnumber.Text = reader.Item("PassportNumber")
        End If
        reader.Close()
    End Sub

    Private Sub DataLoad1()
        Dim conn = DataConnector.ConnectToDB()


        'select booking details
        Dim Query2 As String = "Select * From tblBooking Where PID=@pid"
        Dim comm2 As New SqlCommand(Query2, conn)
        comm2.Parameters.AddWithValue("@pid", Session("PID"))
        Dim reader1 As SqlDataReader = comm2.ExecuteReader
        If reader1.Read Then
            bid.Text = reader1.Item("BookingID")
            bcode.Text = reader1.Item("BookingCode")
            fnumber.Text = reader1.Item("FlightNumber")
        End If
        reader1.Close()
    End Sub

    Private Sub DataLoad2()
        Dim conn = DataConnector.ConnectToDB()


        'select seat details
        Dim Query3 As String = "Select * From tblSeat Where PID=@pid"
        Dim comm3 As New SqlCommand(Query3, conn)
        comm3.Parameters.AddWithValue("@pid", Session("PID"))
        Dim reader2 As SqlDataReader = comm3.ExecuteReader
        If reader2.Read Then
            seat.Text = reader2.Item("SeatNumber")
        End If
        reader2.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conn = DataConnector.ConnectToDB()


        'Confirms the record
        Dim Query4 As String = "Update tblBooking Set Confirmation=1 where PID=@pid"
        Dim comm4 As New SqlCommand(Query4, conn)
        comm4.Parameters.AddWithValue("@pid", Session("PID"))
        comm4.ExecuteNonQuery()
        Response.Write("<script>alert('Details Confirmed.');</script>")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim conn = DataConnector.ConnectToDB()

        Dim Query5 As String = "INSERT INTO tblPayments (UID, PID, Amount) VALUES (@uid, @pid, @amount)"
        Dim comm As New SqlCommand(Query5, conn)
        comm.Parameters.AddWithValue("@uid", Session("userid"))
        comm.Parameters.AddWithValue("@pid", Session("PID"))
        comm.Parameters.AddWithValue("@amount", "Paid")
        comm.ExecuteNonQuery()
        conn.Close()
        Response.Write("<script>alert('Ticket Booked Successfully.');</script>")

    End Sub
End Class