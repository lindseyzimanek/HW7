﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">NFL Team Facts

    <link rel="stylesheet" type="text/css" href="../css/stylesheet.css" />
    <link rel="stylesheet" type="text/css" href="../css/admin_stylesheet.css" />
   

    </asp:Content>          

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    
    <ul id="nav">
        <li><asp:HyperLink ID="link_NewTeam" runat="server" NavigateUrl="~/admin/NewTeam.aspx">Add a New Team</asp:HyperLink></li>                       
        <li><asp:HyperLink ID="link_ViewAllTeams" runat="server" NavigateUrl="~/admin/ViewAllTeams.aspx">View All Teams</asp:HyperLink></li> 
        <li><asp:Hyperlink ID="link_RoleMgmt" runat="server" NavigateUrl="~/site_mgr/RoleMgmt.aspx">Role Management</asp:Hyperlink></li>
        <li><asp:Hyperlink ID="link_UserMgmt" runat="server" NavigateUrl="~/site_mgr/UserMgmt.aspx">User Management</asp:Hyperlink></li>             
    </ul>

   <p><h2 style="text-align:center;">Welcome to the Admin Page!</h2></p>





</asp:Content>

