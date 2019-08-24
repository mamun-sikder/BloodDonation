﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />


    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/custom.js"></script>



    <style type="text/css">
        #img1
        {
            height: 400px;
        }
        #img2
        {
            width:900px;
            height:400px;
        }
        img3
        {
            width:900px;
            height:400px;
        }
        .cimg
        {
            width:70px;
            height:70px;
        }
        .d1
        {
            width:20%;
            height:200px;
            border:outset;
            padding:10px;
            margin:30px;
            color:red;
            background-color:InfoBackground;
            float:left;
        }
        #d2
        {
            margin:20px;
        }
        #img2
        {
            width:100%;
            height:100%;
        }
        .auto-style2 {
            width: 267px;
            height: 85px;
            margin-top: 14px;
        }
        .auto-style4 {
            width: 267px;
            height: 85px;
        }
        .auto-style5 {
            height: 1px;
        }
        .auto-style6 {
            height: 1341px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <div class="row">
        <div class="col-md-8 col-sm-8 col-xs-12">
            <div id="carousel-example" class="carousel slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img1" class="img-fluid" src="assets/img/1.jpg" />

                    </div>
                    <div class="item">
                        <img id="img2" class="img-fluid" src="assets/img/2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img3" class="img-fluid" src="assets/img/3.jpg" />

                    </div>
                </div>

                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>

                </ol>
                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                     <span class="glyphicon glyphicon-chevron-right"></span>
                </a>

            </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    See What Our Clebs Say About The Blood Donation...
                </div>
                <div class="panel-body chat-widget-main">
                    <div class="chat-widget-left">
                        The blood you donate gives someone another chance at life.
                    </div>
                    <br />
                    <div class="chat-widget-left">
                        <img id="c1" class="media-object img-circle img-left-chat cimg" src="assets/img/will.png" />
                        <h4>Will Smith</h4>
                    </div>
                    <hr />
                    <br />

                    <div class="chat-widget-right">
                         A life may depend on a gesture from you, a bottle of Blood.
                    </div>
                    <br />
                     <div class="chat-widget-right">
                         <img class="media-object img-circle img-left-chat cimg" src="assets/img/tom.png" />
                         <h4>Tom Crusie</h4>
                     </div>
                    <hr />
                    <br />

                     <div class="chat-widget-left">
                        The Blood Donor of today may be recipient of tomorrow.

                    </div>
                    <br />
                    <div class="chat-widget-left">
                        <img class="media-object img-circle img-left-chat cimg" src="assets/img/jolie.png" />
                        <h4>Angelina Jolie</h4>
                    </div>
                    <hr />
                    <br />

                    <div class="chat-widget-right">
                        Tears of a mother cannot save her child. But your Blood can.
                    </div>
                    <br />
                     <div class="chat-widget-right">
                         <img class="media-object img-circle img-left-chat cimg" src="assets/img/amit.png" />
                         <h4>Amitabh Bachchan</h4>
                     </div>

                </div>
            </div>
        </div>
   


    <div class="d2">
    <div class="auto-style6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ReqBloodDonation.aspx"> <img src="assets/img/rq.PNG" class="auto-style2" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a href="BloodBankStock.aspx"> <img src="assets/img/d2.PNG" class="auto-style4" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a href="BloodRequest.aspx"> <img src="assets/img/d4.PNG" class="auto-style4" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a href="SearchBloodDonation.aspx"> <img src="assets/img/1d.PNG" class="auto-style4" /></a></div>
    <div class="auto-style5"> &nbsp;</div>
    <div class="d2"> &nbsp;</div>
    <div class="auto-style5"> &nbsp;</div>
    </div>


</asp:Content>
