﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EditTeam.aspx.vb" Inherits="EditTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">NFL Team Facts-Edit Team

    <link rel="stylesheet" type="text/css" href="../css/admin_stylesheet.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <br />
    <br />
    <br />

     <ul id="nav">
        <li><asp:HyperLink ID="link_NewTeam" runat="server" NavigateUrl="~/admin/NewTeam.aspx">Add a New Team</asp:HyperLink></li>                       
        <li><asp:HyperLink ID="link_ViewAllTeams" runat="server" NavigateUrl="~/admin/ViewAllTeams.aspx">View All Teams</asp:HyperLink></li>                
    </ul>

    <p>
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
        <asp:FormView ID="FormView1" runat="server" CssClass="cssformview" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Edit" HorizontalAlign="Center">
            <EditItemTemplate>

                <table>
                <tr>
                    <td style="text-align:right;">
                        *Team Name:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="team_nameTextBox" runat="server" Text='<%# Bind("team_name") %>' />
                    </td>
                    <td style="text-align:left;">
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the team name." CssClass="validationError" ControlToValidate="team_nameTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        *City:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                       <td style="text-align:left;">
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the city of the team's field." CssClass="validationError" ControlToValidate="cityTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        *State:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                       <td style="text-align:left;">
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the state of the team's field." CssClass="validationError" ControlToValidate="stateTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        *Year Established:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="year_establishedTextBox" runat="server" Text='<%# Bind("year_established") %>' />
                    </td>
                       <td style="text-align:left;">
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the year of establishment." CssClass="validationError" ControlToValidate="year_establishedTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>                
                  <tr>
                    <td style="text-align:right;">
                        Field Name:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="field_nameTextBox" runat="server" Text='<%# Bind("field_name") %>' />
                    </td>
                       <td style="text-align:left;">

                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Head Coach:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="head_coachTextBox" runat="server" Text='<%# Bind("head_coach") %>' />
                    </td>
                      <td style="text-align:left;">

                    </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Team Colors:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="team_colorsTextBox" runat="server" Text='<%# Bind("team_colors") %>' />
                    </td>
                      <td style="text-align:left;">

                    </td>
                </tr>
                 <tr>
                    <td style="text-align:right;">
                        Superbowl Appearances:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="superbowl_appearancesTextBox" runat="server" Text='<%# Bind("superbowl_appearances") %>' />
                    </td>
                     <td style="text-align:left;">

                    </td>
                </tr>
                 <tr>
                    <td style="text-align:right;">
                        Superbowl Wins:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="superbowl_winsTextBox" runat="server" Text='<%# Bind("superbowl_wins") %>' />
                    </td>
                     <td style="text-align:left;">

                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;">
                         <asp:Button ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    </td>
                    <td style="text-align:left;">
                        <asp:Button ID="btnUpdateCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>
               
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
                    <td style="text-align:left;">
                        
                        </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        City:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                       <td style="text-align:left;">

                        </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        State:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                       <td style="text-align:left;">

                        </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Year Established:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="year_establishedLabel" runat="server" Text='<%# Bind("year_established") %>' />
                    </td>
                       <td style="text-align:left;">

                        </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Field Name:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="field_nameLabel" runat="server" Text='<%# Bind("field_name") %>' />
                    </td>
                       <td style="text-align:left;">

                        </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Head Coach:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="head_coachLabel" runat="server" Text='<%# Bind("head_coach") %>' />
                    </td>
                       <td style="text-align:left;">

                        </td>
                </tr>
                  <tr>
                    <td style="text-align:right;">
                        Team Colors:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="team_colorsLabel" runat="server" Text='<%# Bind("team_colors") %>' />
                    </td>
                       <td style="text-align:left;">

                        </td>
                </tr>
                 <tr>
                    <td style="text-align:right;">
                        Superbowl Appearances:
                    </td>
                    <td style="text-align:left;">
                       <asp:Label ID="superbowl_appearancesLabel" runat="server" Text='<%# Bind("superbowl_appearances") %>' />
                    </td>
                      <td style="text-align:left;">

                        </td>
                </tr>
                 <tr>
                    <td style="text-align:right;">
                        Superbowl Wins:
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="superbowl_winsLabel" runat="server" Text='<%# Bind("superbowl_wins") %>' />
                    </td>
                      <td style="text-align:left;">

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
    </p>
</asp:Content>

