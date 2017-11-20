Imports System.Data
Imports System.Data.SqlClient

Public Class Passengers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            If Session("numberofpassengers") = 1 Then
                Button1.Visible = True
                Button2.Visible = False
            Else
                Button2.Visible = True
                Button1.Visible = False
            End If
            'If Session("ctr") > 1 Then
            '    Button2.Visible = True
            '    Button1.Visible = False
            '    Session.Remove("ctr")
            'ElseIf Session("ctr") = 1 Then
            '    Button1.Visible = True
            '    Button2.Visible = False
            'End If
            BindCountry()
        End If
    End Sub

    Private Sub BindCountry()
        Dim ds As New DataSet
        ds.ReadXml(Server.MapPath("country.xml"))
        Dim dv As DataView = ds.Tables(0).DefaultView

        ddlNationality.DataTextField = "name"
        ddlNationality.DataValueField = "code"
        ddlNationality.DataSource = dv
        ddlNationality.DataBind()

        ddlIssueState.DataTextField = "name"
        ddlIssueState.DataValueField = "code"
        ddlIssueState.DataSource = dv
        ddlIssueState.DataBind()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conn = DataConnector.ConnectToDB()

        'Check Seat availability
        Dim Query6 As String = "Select * From tblSeat"
        Dim comm5 As New SqlCommand(Query6, conn)
        Dim reader1 As SqlDataReader = comm5.ExecuteReader
        If reader1.Read Then
            Dim seat As String = reader1.Item("SeatNumber")
            If Label2.Text = seat Then
                Label2.Text = "This seat has already been reserved."
            Else
                DataInsert()
                Response.Redirect("Confirmation.aspx")
            End If
        End If
        reader1.Close()
    End Sub

    Private Sub DataInsert()
        Dim conn = DataConnector.ConnectToDB()

        Dim Query1 As String = "INSERT INTO tblPassengers (FirstName, LastName, Gender, DateofBirth, Nationality, PassportNumber, ExpirationDate, IssueState, UserID) VALUES (@FirstName, @LastName, @Gender, @DateofBirth, @Nationality, @PassportNumber, @ExpirationDate, @IssueState, @UserID)"
        Dim comm As New SqlCommand(Query1, conn)
        comm.Parameters.AddWithValue("@FirstName", txtFname.Text.Trim())
        comm.Parameters.AddWithValue("@LastName", txtLname.Text.Trim())
        comm.Parameters.AddWithValue("@Gender", ddlGender.SelectedItem.Text())
        comm.Parameters.AddWithValue("@DateofBirth", txtDOB.Text.Trim())
        comm.Parameters.AddWithValue("@Nationality", ddlNationality.SelectedItem.Text())
        comm.Parameters.AddWithValue("@PassportNumber", txtPnumber.Text.Trim())
        comm.Parameters.AddWithValue("@ExpirationDate", txtEDate.Text.Trim())
        comm.Parameters.AddWithValue("@IssueState", ddlIssueState.SelectedItem.Text())
        comm.Parameters.AddWithValue("@UserID", Session("userid"))
        comm.ExecuteNonQuery()

        'select and save seat
        'retrieve the PID
        Dim Query2 As String = "Select top 1 * From tblPassengers Where UserID=@UserID order by PassengerID desc"
        Dim comm1 As New SqlCommand(Query2, conn)
        comm1.Parameters.AddWithValue("@UserID", Session("userid"))
        Dim reader As SqlDataReader = comm1.ExecuteReader
        If reader.Read Then
            Session("PID") = reader.Item("PassengerID")
            'Label1.Text = reader.Item("PassengerID")
        End If
        reader.Close()

        'insert into tblSeat
        Dim Query3 As String = "INSERT INTO tblSeat (PID, UID, SeatNumber, FlightNumber) VALUES (@PID, @UID, @SeatNumber, @FlightNumber)"
        Dim comm2 As New SqlCommand(Query3, conn)
        comm2.Parameters.AddWithValue("@PID", Session("PID"))
        comm2.Parameters.AddWithValue("@UID", Session("userid"))
        comm2.Parameters.AddWithValue("@SeatNumber", Label2.Text)
        comm2.Parameters.AddWithValue("@FlightNumber", Session("flightNumber"))
        comm2.ExecuteNonQuery()

        'inert into tblBooking
        Dim Query4 As String = "INSERT INTO tblBooking (BookingCode, BookingDate, PID, FlightNumber, UID, Confirmation) VALUES (@BookingCode, @BookingDate, @PID, @FlightNumber, @UID, @Confirmation)"
        Dim comm3 As New SqlCommand(Query4, conn)
        comm3.Parameters.AddWithValue("@BookingCode", Session("flightNumber") & "-" & Session("PID"))
        comm3.Parameters.AddWithValue("@BookingDate", Now())
        comm3.Parameters.AddWithValue("@PID", Session("PID"))
        comm3.Parameters.AddWithValue("@FlightNumber", Session("flightNumber"))
        comm3.Parameters.AddWithValue("@UID", Session("userid"))
        comm3.Parameters.AddWithValue("@Confirmation", 0)
        comm3.ExecuteNonQuery()

        'Connection close
        conn.Close()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Label2.Text = Button3.Text
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Label2.Text = Button4.Text
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Label2.Text = Button5.Text
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Label2.Text = Button6.Text
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Label2.Text = Button7.Text
    End Sub


    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If Session("numberofpassengers") > 1 Then
            'Dim num As Integer = Session("numberofpassengers")
            For i As Integer = 2 To 5
                DataInsert()
                Response.Redirect("Passengers.aspx")
            Next
            Response.Redirect("Confirmation.aspx")
        End If

    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Label2.Text = Button8.Text
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Label2.Text = Button9.Text
    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Label2.Text = Button10.Text
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Label2.Text = Button11.Text
    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Label2.Text = Button12.Text
    End Sub
End Class