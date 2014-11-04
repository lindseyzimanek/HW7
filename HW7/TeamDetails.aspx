<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TeamDetails.aspx.vb" Inherits="TeamDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <title> NFL Team Facts </title>
    <link rel="stylesheet" type="text/css" href="../css/stylesheet.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- ADD DETAIL VIEW FORM HERE /-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw7_nfl_teams %>" SelectCommand="SELECT * FROM [lzimanek_hw7_nfl_teams] WHERE ([id] = @id)">
       
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
      
    </asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
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
            </table>
           
        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

