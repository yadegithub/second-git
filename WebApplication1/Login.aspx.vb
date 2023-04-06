Imports System.Data.SqlClient
Imports System.Security.Cryptography

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Function Encrypt(Encryption As String) As String
        Dim msg As String = String.Empty
        Dim encode As Byte() = New Byte(Encryption.Length - 1) {}
        encode = Encoding.UTF8.GetBytes(Encryption)
        msg = Convert.ToBase64String(encode)
        Return msg
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim connect As New SqlConnection("Data Source=DESKTOP-JV9O40E;Initial Catalog=Blood_Bank;Integrated Security=True")
        Dim Password As Integer = TextBox2.Text
        Dim Username As String = TextBox1.Text
        connect.Open()
        ' Dim command As New SqlCommand("select count(*) from admin where Username='" & Username & "' and Password='" & Password & "'  ", connect)
        '  Dim count = Convert.ToInt32(command.ExecuteScalar())
        '  If count > 0 Then
        '  MsgBox("Login found", MsgBoxStyle.Information)
        ' Else
        'MsgBox("Oops!,invalid Login", MsgBoxStyle.Critical)
        'End If
        ' connect.Open()
        TextBox3.Text = Encrypt(TextBox2.Text)
        Dim command As New SqlCommand("Insert into Admin values ( '" & Username & "','" & TextBox3.Text & "')", connect)

        command.ExecuteNonQuery()
        MsgBox("successfully inserted", MsgBoxStyle.Information, "Message")
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        connect.Close()

        Response.Redirect("home.aspx")




    End Sub





End Class