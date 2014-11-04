
Partial Class EditTeam
    Inherits System.Web.UI.Page
    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=~/admin/ViewAllTeams.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()
    End Sub
End Class
