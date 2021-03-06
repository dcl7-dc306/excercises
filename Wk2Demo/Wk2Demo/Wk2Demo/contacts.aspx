﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="Wk2Demo.contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
<div class="block-1 top-5">
    <div class="block-1-shadow">
    <h2 class="clr-6">Contact Form</h2>
    <form id="form" runat="server">

        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br/>

        <div class="clear"></div>
        <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName">  </asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox> <br/>
      

        <div class="clear"></div>
        <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        
    
        <div class="clear"></div>    
        <asp:Label ID="lblPhone" runat="server" Text="Phone" AssociatedControlID="txtPhone"></asp:Label>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        

        <div class="clear"></div>
        <asp:Label ID="lblMessage" runat="server" Text="Message" AssociatedControlID="txtMessage"></asp:Label>
        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server"></asp:TextBox>
        

        <div class="clear"></div>
        <div class="btns pad-2">
           <asp:Button ID="btnSubmit" CssClass="link-2" runat="server" Text="Submit" OnClick="btnSubmit_Click" /> <br/>
        </div>

    </form>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftContent" runat="server">
    <h2 class="top-6">Contact Us</h2>
    <div class="map">
        <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
    </div>
    <dl>
        <dt>8901 Marmora Road, <br>
        Glasgow, D04 89GR.</dt>
        <dd><span>Telephone: </span>+1 800 603 6035</dd>
        <dd><span>E-mail: </span><a href="#" class="link">mail@demolink.org</a></dd>
    </dl>
</asp:Content>
