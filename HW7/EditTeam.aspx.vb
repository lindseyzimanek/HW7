
Partial Class EditTeam
    Inherits System.Web.UI.Page
    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=~/ViewAllTeams.aspx")
    End Sub
End Class
