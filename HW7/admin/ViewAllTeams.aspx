<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAllTeams.aspx.vb" Inherits="ViewAllTeams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title> NFL Team Facts </title>
    <link rel="stylesheet" type="text/css" href="../css/admin_stylesheet.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- ADD VIEW ALL FORM HERE /-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw7_nfl_teams %>" DeleteCommand="DELETE FROM [lzimanek_hw7_nfl_teams] WHERE [id] = @id" InsertCommand="INSERT INTO [lzimanek_hw7_nfl_teams] ([team_name], [city], [state], [year_established], [field_name], [head_coach], [team_colors], [superbowl_appearances], [superbowl_wins]) VALUES (@team_name, @city, @state, @year_established, @field_name, @head_coach, @team_colors, @superbowl_appearances, @superbowl_wins)" SelectCommand="SELECT * FROM [lzimanek_hw7_nfl_teams]" UpdateCommand="UPDATE [lzimanek_hw7_nfl_teams] SET [team_name] = @team_name, [city] = @city, [state] = @state, [year_established] = @year_established, [field_name] = @field_name, [head_coach] = @head_coach, [team_colors] = @team_colors, [superbowl_appearances] = @superbowl_appearances, [superbowl_wins] = @superbowl_wins WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="team_name" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="year_established" Type="Int32" />
            <asp:Parameter Name="field_name" Type="String" />
            <asp:Parameter Name="head_coach" Type="String" />
            <asp:Parameter Name="team_colors" Type="String" />
            <asp:Parameter Name="superbowl_appearances" Type="Int32" />
            <asp:Parameter Name="superbowl_wins" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="team_name" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="year_established" Type="Int32" />
            <asp:Parameter Name="field_name" Type="String" />
            <asp:Parameter Name="head_coach" Type="String" />
            <asp:Parameter Name="team_colors" Type="String" />
            <asp:Parameter Name="superbowl_appearances" Type="Int32" />
            <asp:Parameter Name="superbowl_wins" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="478px">
        <Columns>
            <asp:BoundField DataField="team_name" HeaderText="Team Name" SortExpression="team_name" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="TeamDetails.aspx?id={0}" Text="View" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

