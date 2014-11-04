
Partial Class TeamDetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedTeam As String = e.Values("team_name").ToString()

        lblDeletedTeam.Text = deletedTeam & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=~/ViewAllTeams.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=~/ViewAllTeams.aspx")
    End Sub
End Class
