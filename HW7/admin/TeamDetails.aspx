<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TeamDetails.aspx.vb" Inherits="TeamDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">NFL Team Facts-Team Details

    <link rel="stylesheet" type="text/css" href="../css/admin_stylesheet.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- ADD DETAIL VIEW FORM HERE /-->
    <asp:Label ID="lblDeletedTeam" runat="server"></asp:Label>
<br />
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
    <asp:FormView ID="FormView1" runat="server" CssClass="cssformview" DataKeyNames="id" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <EditItemTemplate>
            
        </EditItemTemplate>
        <InsertItemTemplate>
           
        </InsertItemTemplate>
        <ItemTemplate>

             <table>
                <tr>
                    <td style="text-align:right;">
                        Team Name:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="team_nameLabel" runat="server" Text='<%# Bind("team_name") %>' />
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        City:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        State:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Year Established:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="year_establishedLabel" runat="server" Text='<%# Bind("year_established") %>' />
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Field Name:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="field_nameLabel" runat="server" Text='<%# Bind("field_name") %>' />
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Head Coach:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="head_coachLabel" runat="server" Text='<%# Bind("head_coach") %>' />
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Team Colors:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="team_colorsLabel" runat="server" Text='<%# Bind("team_colors") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="text-align:right;">
                        Superbowl Appearances:
                    </td>
                    <td style="text-align:left;">
                       <asp:Label ID="superbowl_appearancesLabel" runat="server" Text='<%# Bind("superbowl_appearances") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="text-align:right;">
                        Superbowl Wins:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="superbowl_winsLabel" runat="server" Text='<%# Bind("superbowl_wins") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;">
                       <asp:Button ID="btnEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </td>
                    <td style="text-align:left;">
                        <asp:Button ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </td>                  
                </tr>
            </table>
           
        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

