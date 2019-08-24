<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdmimBloodStockUpdate.aspx.cs" Inherits="AdmimBloodStockUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Update Blood Stock
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        table
        {
            font-family: Arial, sans-serif;
            border-collapse : collapse;
            width : 40px;
            margin-left : 50%;
            margin-top :20%;
        }

        td,th
        {
            border : 1px solid #dddddd;
            text-align : center;
            padding : 8px;
        }

        tr:nth-child(even)
        {
            background-color : #dddddd;
        }

        #bgu1
        {
            margin-left : 5%;
        }

        .auto-style1 {
            width: 697px;
            height: 309px;
            margin-left: 1%;
            margin-right: 523px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <div id="bgu1">
        <a href="Admin.aspx"><h3>Admin Home</h3></a>

        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp; Select Blood Group to Update</strong></h2>
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">

            <asp:ListItem>(Select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList><br /><br />


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Quntity </strong> <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>

        <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
        </strong>
        <br /><br />

        <table class="auto-style1">
            <tr>
                <th>Blood Group</th>
                <th>Available Blood Stock(in ML)</th>
            </tr>

            <tr>
                <th>A+</th>
                <th>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></th>
            </tr>

            <tr>
                <th>A-</th>
                <th>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></th>
            </tr>

            <tr>
                <th>B+</th>
                <th>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></th>
            </tr>

            <tr>
                <th>B-</th>
                <th>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></th>
            </tr>

            <tr>
                <th>O+</th>
                <th>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></th>
            </tr>

            <tr>
                <th>O-</th>
                <th>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></th>
            </tr>

            <tr>
                <th>AB+</th>
                <th>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></th>
            </tr>

            <tr>
                <th>AB-</th>
                <th>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></th>
            </tr>
        </table>

    </div>

</asp:Content>

