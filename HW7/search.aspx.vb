
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbSearch.Focus()
    End Sub

    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        Dim searchWord As String

        searchWord = "Select * From dbo.lzimanek_hw7_nfl_teams where (team_name Like '%" + tbSearch.Text.ToString() + "%') or (city Like '%" + tbSearch.Text.ToString() + "%') or (state Like '%" + tbSearch.Text.ToString() + "%') or (year_established Like '%" + tbSearch.Text.ToString() + "%') or (field_name Like '%" + tbSearch.Text.ToString() + "%') or (head_coach Like '%" + tbSearch.Text.ToString() + "%') or (team_colors Like '%" + tbSearch.Text.ToString() + "%') or (superbowl_appearances Like '%" + tbSearch.Text.ToString() + "%') or (superbowl_wins Like '%" + tbSearch.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchWord
    End Sub

    Protected Sub tbSearch2_TextChanged(sender As Object, e As EventArgs) Handles tbSearch2.TextChanged
        Dim searchWord As String

        searchWord = "Select * From dbo.lzimanek_hw7_nfl_teams where (team_name Like '%" + tbSearch.Text.ToString() + "%') or (city Like '%" + tbSearch.Text.ToString() + "%') or (state Like '%" + tbSearch.Text.ToString() + "%') or (year_established Like '%" + tbSearch.Text.ToString() + "%') or (field_name Like '%" + tbSearch.Text.ToString() + "%') or (head_coach Like '%" + tbSearch.Text.ToString() + "%') or (team_colors Like '%" + tbSearch.Text.ToString() + "%') or (superbowl_appearances Like '%" + tbSearch.Text.ToString() + "%') or (superbowl_wins Like '%" + tbSearch.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
