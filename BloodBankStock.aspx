﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BloodBankStock.aspx.cs" Inherits="BloodBankStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Blood Stock
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <center>
    <table>

       <tr>

           <th>Blood Group</th>
           <th>Available Stock in ML</th>

       </tr>

        <tr>
            <td>A+</td>
            <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>A-</td>
            <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>B+</td>
            <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>B-</td>
            <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>O+</td>
            <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>O-</td>
            <td><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>AB+</td>
            <td><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td>AB-</td>
            <td><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
        </tr>
            
    </table>
    </center>

</asp:Content>

