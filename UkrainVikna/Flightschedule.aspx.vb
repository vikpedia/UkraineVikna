Imports System.Data
Imports System.Data.SqlClient

Public Class Flightschedule
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ddlorigin_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlorigin.SelectedIndexChanged
        Dim conn = DataConnector.ConnectToDB()
        Dim query As String = "Select * from tblFlightSchedule where Origin=@Origin"
        'Dim comm As New SqlCommand(query, conn)
        'comm.Parameters.AddWithValue("@Origin", ddlorigin.SelectedItem.Text)
        Dim da As New SqlDataAdapter(query, conn)
        da.SelectCommand.Parameters.AddWithValue("@Origin", ddlorigin.SelectedItem.Text)
        Dim ds As New DataSet
        da.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
        conn.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        'Response.Write(GridView1.SelectedRow.Cells(2).Text)
        Session("flightNumber") = GridView1.SelectedRow.Cells(2).Text
    End Sub

    Protected Sub btnNext_Click(sender As Object, e As EventArgs) Handles btnNext.Click
        If ddl_NOP.SelectedIndex = 0 Then
            Response.Write("Please select a value")
        Else
            Session("numberofpassengers") = ddl_NOP.SelectedItem.Text
            Response.Redirect("Passengers.aspx")
        End If

    End Sub

End Class