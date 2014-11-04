<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TeamDetails.aspx.vb" Inherits="TeamDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> NFL Teams - Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- ADD DETAIL VIEW FORM HERE /-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw7_nfl_teams %>" DeleteCommand="DELETE FROM [lzimanek_hw7_nfl_teams] WHERE [id] = @id" InsertCommand="INSERT INTO [lzimanek_hw7_nfl_teams] ([team_name], [city], [state], [year_established], [field_name], [head_coach], [team_colors], [superbowl_appearances], [superbowl_wins]) VALUES (@team_name, @city, @state, @year_established, @field_name, @head_coach, @team_colors, @superbowl_appearances, @superbowl_wins)" SelectCommand="SELECT * FROM [lzimanek_hw7_nfl_teams] WHERE ([id] = @id)" UpdateCommand="UPDATE [lzimanek_hw7_nfl_teams] SET [team_name] = @team_name, [city] = @city, [state] = @state, [year_established] = @year_established, [field_name] = @field_name, [head_coach] = @head_coach, [team_colors] = @team_colors, [superbowl_appearances] = @superbowl_appearances, [superbowl_wins] = @superbowl_wins WHERE [id] = @id">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
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
    <br />
    <br />
    <br />
    <br />
</asp:Content>

