<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UpdateSchedule.aspx.cs" Inherits="Wk2Demo.UpdateSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div class="block-1 top-5">
    <div class="block-1-shadow">
    <h2 class="clr-6">Update Schedule</h2>
              

        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br/>

        <div class="clear"></div>
        <asp:Label ID="lblScheduleID" runat="server" Text="Schedule ID:" AssociatedControlID="txtScheduleID">  </asp:Label>
        <asp:TextBox ID="txtScheduleID" runat="server"></asp:TextBox> <br/>
      

        <div class="clear"></div>
        <asp:Label ID="lblDay" runat="server" Text="Day:" AssociatedControlID="txtDay"></asp:Label>
        <asp:TextBox ID="txtDay" runat="server"></asp:TextBox>
        
    
        <div class="clear"></div>    
        <asp:Label ID="lblTime" runat="server" Text="Time:" AssociatedControlID="txtTime"></asp:Label>
        <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
        

        <div class="clear"></div>
        <asp:Label ID="lblTopic" runat="server" Text="Topic" AssociatedControlID="txtTopic"></asp:Label>
        <asp:TextBox ID="txtTopic" runat="server"></asp:TextBox>

        <div class="clear"></div>
        <asp:Label ID="Label1" runat="server" Text="Tutor" AssociatedControlID="txtTutor"></asp:Label>
        <asp:TextBox ID="txtTutor" runat="server"></asp:TextBox>
        

        <div class="clear"></div>
        <div class="btns pad-2">
            <asp:Button ID="btnUpdate" CssClass="link-1" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        </div>

    </div>
</div>
</asp:Content>
