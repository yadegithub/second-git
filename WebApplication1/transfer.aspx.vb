Imports System.Data.SqlClient

Public Class transfer
    Inherits System.Web.UI.Page
    Dim connect As New SqlConnection("Data Source=DESKTOP-JV9O40E;Initial Catalog=Blood_Bank;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Dim OldStock
    Public Sub FetchQty()
        connect.Open()
        Dim command As New SqlCommand("select * from BStock where PBGroup ='" & TextBox2.Text & "'", connect)
        command.ExecuteNonQuery()
        Dim dt As New DataTable
        Dim dr As SqlDataReader
        dr = command.ExecuteReader()
        While dr.Read
            OldStock = dr(1)
        End While
        connect.Close()

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim NewStock As Integer
            NewStock = OldStock + 1
            connect.Open()
        Dim command As New SqlCommand("Update BStock set PStock='" & NewStock & "'where PBGroup ='" & TextBox2.Text & "'", connect)
        command.ExecuteNonQuery()
            MsgBox(" blood successfully updated", MsgBoxStyle.Information, "Message")
            connect.Close()
            dataload()

    End Sub
    Private Sub dataload()
        If (Page.IsPostBack) Then
            GridView5.DataBind()
        End If
    End Sub





    Protected Sub GridView4_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView4.SelectedIndexChanged
        TextBox1.Text = HttpUtility.HtmlDecode(GridView4.SelectedRow.Cells.Item(0).Text.ToString)
        TextBox2.Text = HttpUtility.HtmlDecode(GridView4.SelectedRow.Cells.Item(1).Text.ToString)

    End Sub






End Class