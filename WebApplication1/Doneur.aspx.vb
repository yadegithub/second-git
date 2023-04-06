Imports System.Data.SqlClient

Public Class About
    Inherits Page
    Dim connect As New SqlConnection("Data Source=DESKTOP-JV9O40E;Initial Catalog=Blood_Bank;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim DoneurID As Integer = txtDoneurid.Text
        Dim DNom As String = txtDNom.Text
        Dim Sex As String = DropSex.SelectedValue
        Dim Tel As Integer = txtTel.Text
        Dim GDoneur As String = DropDGroup.SelectedValue
        Dim DAdresse As String = txtDAdresse.Text
        connect.Open()
        Dim command As New SqlCommand("Insert into Doneur values ('" & DoneurID & "','" & DNom & "','" & Sex & "','" & Tel & "','" & GDoneur & "','" & DAdresse & "')", connect)
        command.ExecuteNonQuery()
        MsgBox("successfully inserted", MsgBoxStyle.Information, "Message")
        connect.Close()

    End Sub


    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim DoneurID As Integer = txtDoneurid.Text
        connect.Open()
        Dim command As New SqlCommand("Delete Doneur where DoneurID='" & DoneurID & "'", connect)
        command.ExecuteNonQuery()
        MsgBox("successfully deleted", MsgBoxStyle.Information, "Message")
        connect.Close()
        dataload()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Dim DoneurID As Integer = txtDoneurid.Text
        Dim DNom As String = txtDNom.Text
        Dim Sex As String = DropSex.SelectedValue
        Dim Tel As Integer = txtTel.Text
        Dim GDoneur As String = DropDGroup.SelectedValue
        Dim DAdresse As String = txtDAdresse.Text
        connect.Open()
        Dim command As New SqlCommand("Update Doneur set nomD='" & DNom & "',SexD='" & Sex & "',TelD='" & Tel & "',DGroup='" & GDoneur & "',DAdresse='" & DAdresse & "'where DoneurID='" & DoneurID & "'", connect)
        command.ExecuteNonQuery()
        MsgBox("successfully updated", MsgBoxStyle.Information, "Message")
        connect.Close()
        dataload()
    End Sub
    Private Sub dataload()
        If (Page.IsPostBack) Then
            GridView1.DataBind()

        End If
    End Sub
End Class