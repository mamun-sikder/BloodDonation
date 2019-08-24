﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ReqBloodDonation.aspx.cs" Inherits="ReqBloodDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Blood Donation Request
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">

         input[type=text], input[type=password]
        {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

         .container1
         {
             padding: 20px;
             border: outset;
             width: 35%;
             height: 100%;
             margin-left: 35%;
             margin-top: 10px;
         }

         #btn
         {
             float: left;
             width: 20%;
             background-color: green;
             color: white;
             padding: 14px 20px;
             margin: 8px 0;
             cursor: pointer;
         }

         .i1
         {
             margin-left: 110px;
         }

        .auto-style1 {
            border-style: outset;
            border-color: inherit;
            border-width: medium;
            padding: 20px;
            width: 32%;
            height: 231px;
            margin-left: 40%;
            margin-top: 10px;
        }
        .auto-style2 {
            margin-left: 118px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <div class="auto-style1">

        <asp:Image ID="Image1" runat="server" CssClass="i1" Width="123px"/>

    <br />

    

    </div>

    Name : <asp:TextBox ID="txtName" runat="server" Enabled="false" CssClass="auto-style2" ></asp:TextBox>
    <br />
   
    Email : <asp:TextBox ID="txtEmail" runat="server" Enabled="false" ></asp:TextBox>
    <br />

    Mobile :  <asp:TextBox ID="txtMobile" runat="server" Enabled="false" ></asp:TextBox>
    <br />

    BloodGroup: <asp:TextBox ID="txtBg" runat="server" Enabled="false" ></asp:TextBox>
    <br />

    Address : <asp:TextBox ID="txtAddress" runat="server" Enabled="false" ></asp:TextBox>
    <br /><br />

    <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click" Height="63px" />
   
</asp:Content>

