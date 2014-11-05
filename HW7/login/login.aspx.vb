
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn

        If Roles.IsUserInRole(Login1.UserName, "r_lzimanek_Admin") = True Then
            Response.Redirect("~/admin/Default.aspx")

        Else : Response.Redirect("~/ViewAllTeams.aspx")

        End If

    End Sub
End Class
