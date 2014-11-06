
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbSearch.Focus()
    End Sub

    Protected Sub searchBtn_Click(sender As Object, e As EventArgs) Handles searchBtn.Click
        Dim searchWord As String

        searchWord = "Select * From dbo.lzimanek_hw7_nfl_teams where (team_name Like '%" + tbSearch.Text.ToString() + "%') or (city Like '%" + tbSearch.Text.ToString() + "%') or (state Like '%" + tbSearch.Text.ToString() + "%') or (year_established Like '%" + tbSearch.Text.ToString() + "%') or (field_name Like '%" + tbSearch.Text.ToString() + "%') or (head_coach Like '%" + tbSearch.Text.ToString() + "%') or (team_colors Like '%" + tbSearch.Text.ToString() + "%') or (superbowl_appearances Like '%" + tbSearch.Text.ToString() + "%') or (superbowl_wins Like '%" + tbSearch.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchWord

        tbSearch.Text = ""
    End Sub


End Class
