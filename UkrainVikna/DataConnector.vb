Imports System.Data.SqlClient

Public Class DataConnector
    Public Shared Function ConnectToDB() As SqlConnection
        Dim conn As New SqlConnection("Server=tcp:ukrainserver.database.windows.net,1433;Initial Catalog=ukraindb;Persist Security Info=False;User ID=ukrainedbadmin;Password=abc@123456;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        'Dim conn As New SqlConnection("Data Source=localhost;Initial Catalog=UkraineFlightYedi;Integrated Security=True")
        conn.Open()
        Return conn
    End Function

End Class
