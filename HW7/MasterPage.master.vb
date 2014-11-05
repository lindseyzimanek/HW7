
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        currentTimeLabel.Text = DateTime.Now.ToString("hh:mm dddd, dd MMMM yyyy")

    End Sub
End Class

