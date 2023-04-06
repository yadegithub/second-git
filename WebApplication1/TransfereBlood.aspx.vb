Imports System.Data.SqlClient

Public Class TransfereBlood
    Inherits System.Web.UI.Page
    Dim connect As New SqlConnection("Data Source=DESKTOP-JV9O40E;Initial Catalog=Blood_Bank;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub GetData()
        connect.Open()
        Dim command As New SqlCommand("select * from pateint where PID=" & DropDownList1.SelectedValue.ToString() & "", connect)
        command.ExecuteNonQuery()
        Dim dt As New DataTable
        Dim dr As SqlDataReader
        dr = command.ExecuteReader()
        While dr.Read

            Dim a As String = Convert.ToString(dr(1))
            Dim b As String = Convert.ToString(dr(5))
            TextBox1.Text = a
            TextBox2.Text = b
        End While

        connect.Close()

    End Sub


    Dim AvialbelStock As Integer
    Public Sub FetchQty()
        connect.Open()
        Dim command As New SqlCommand("select * from BStock where PBGroup ='" & TextBox2.Text & "'", connect)
        command.ExecuteNonQuery()
        Dim dt As New DataTable
        Dim dr As SqlDataReader
        dr = command.ExecuteReader()
        While dr.Read
            AvialbelStock = dr(1)
        End While
        connect.Close()

    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

        GetData()
        FetchQty()
        If AvialbelStock = 0 Then
            Label2.Text = "No Blood Avilable"

        Else
            Label2.Text = AvialbelStock

        End If
    End Sub
    Private Sub update()

        Dim NewStock As Integer
        NewStock = AvialbelStock - 1
        connect.Open()
        Dim TBGroup As String = TextBox2.Text
        Dim command As New SqlCommand("Update BStock set PStock='" & NewStock & "'where PBGroup ='" & TBGroup & "'", connect)
        command.ExecuteNonQuery()

        ' MsgBox(" blood successfully updated", MsgBoxStyle.Information, "Message")'
        connect.Close()
        If NewStock = 0 Then
            Button2.Visible = False
        Else
            Button2.Visible = True
        End If
        'dataload()'
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        Dim Tpat As String = TextBox1.Text
        Dim TBGroup As String = TextBox2.Text

        connect.Open()
        Dim command As New SqlCommand("Insert into Transfere values ('" & Tpat & "','" & TBGroup & "')", connect)
        command.ExecuteNonQuery()
        MsgBox("sang transfere")
        connect.Close()
        FetchQty()
        update()

    End Sub


End Class