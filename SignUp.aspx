<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Sign Up
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">

        input[type=text], input[type=password], input[type=number]
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
            margin-left: 1%;
        }

        #btnSubmit 
        {
             float: left;
            width: 20%;
            height: 100%;
            background-color: #4CAF50;
            color: white;
            margin-top: 10px;
            border: none;
            cursor: pointer;
        }

        .a1
        {
            float: left;
        }

        .l1
        {
            width: 390px;
            height: 1350px;
            margin: 7px;
        }

    </style>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <div class="a1">
        <img class="l1" src="assets/img/leftImg.jpg" />
    </div>
    <div class="container1 a1">
        Name :
        <asp:TextBox ID="txtName" required ="1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />

        Email:
        <asp:TextBox ID="txtEmail" required ="1" runat="server"></asp:TextBox>
        <br />
        <br /><br />

        Mobile:
        <asp:TextBox ID="txtMobile" required ="1" runat="server"></asp:TextBox>
        <br />
        <br /><br />

        Gender: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RadioButton ID="rbMale" required ="1" runat="server" GroupName="gen" Text="Male" Checked="true"/>

        &nbsp;&nbsp;
         <asp:RadioButton ID="rbFemale" required ="1" runat="server" GroupName="gen" Text="Female" />

        <br />
        <br />
        <br />

        Age:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:DropdownList ID="ddAge" required ="1" runat="server" AutoPostBack="true">

            <asp:ListItem>(Select age)</asp:ListItem>
            <asp:ListItem>above 18</asp:ListItem>
            <asp:ListItem>below 18</asp:ListItem>
        </asp:DropdownList>
        <br />
        <br />
        <br />

        Blood Group:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:DropdownList ID="ddBg" required ="1" runat="server" AutoPostBack="true">

            <asp:ListItem>(Select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropdownList>
        <br /> <br /> <br /> 

        Weight(in KG) : <asp:TextBox ID="txtWeight" required ="1" TextMode="Number" runat="server"></asp:TextBox>
        <br />
        <br /> <br />

        Height(in CM): <asp:TextBox ID="txtHeight" required ="1" TextMode="Number" runat="server"></asp:TextBox>
        <br />
        <br /> <br />

        Select Image :  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:FileUpload ID="FileUpload1" required ="1" runat="server"></asp:FileUpload>

        <br />
        <br />
        <br />


        Password : <asp:TextBox ID="txtPassword" required ="1" TextMode="password" runat="server"></asp:TextBox>
        <br />
        <br /> <br /><br />

        Address : <asp:TextBox ID="txtAddress" required ="1" TextMode="MultiLine" runat="server"></asp:TextBox>
        <br /> <br />

        <asp:Button ID="btnSubmit" runat="server" text="Submit" OnClick="btnSubmit_Click" />

    </div>

    <div class="a1">
        <img class="l1" src="assets/img/rImg.jpg" />
    </div>

</asp:Content>

