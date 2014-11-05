
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        Dim searchWord As String

        searchWord = "Select * From Team where (team_name Like '%" + tbSearch.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
