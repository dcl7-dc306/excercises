<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Excercise1Demo.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="RegisterForm" runat="server">
    <!-- start contact Area -->		
    <section class="contact-area section-gap" id="contact">
	<div class="container">
		    <div class="row d-flex justify-content-center">
			    <div class="menu-content pb-30 col-lg-8">
				    <div class="title text-center">
					    <h1 class="mb-10">Register</h1>
					    <p>Please input your account details</p>
				    </div>
			    </div>
		    </div>
            
		    <%--<form class="form-area mt-60" id="myForm" action="mail.php" method="post" class="contact-form text-right">
			    <div class="row">	
			    <div class="col-lg-6 form-group">
				    <input name="name" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
						
				    <input name="email" placehol der="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">

				    <input name="subject" placeholder="Enter your subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your subject'" class="common-input mb-20 form-control" required="" type="text">
			    </div>
			    <div class="col-lg-6 form-group">
				    <textarea class="common-textarea mt-10 form-control" name="message" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required=""></textarea>
				    <button class="primary-btn mt-20">Send Message<span class="lnr lnr-arrow-right"></span></button>
				    <div class="mt-10 alert-msg">								
			    </div>
			    </div></div>
		    </form>	--%>
        <form runat="server">
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="txtFirstName" CssClass="common-input mb-20 form-control" runat="server"></asp:TextBox>

            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtLastName" CssClass="common-input mb-20 form-control" runat="server"></asp:TextBox>

            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" CssClass="common-input mb-20 form-control" runat="server"></asp:TextBox>

            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" CssClass="common-input mb-20 form-control" runat="server"></asp:TextBox>

            <asp:Button ID="btnSubmit" CssClass="primary-btn header-btn text-uppercase" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </form>
	</div>	
    </section>
    <!-- end contact Area -->	
</asp:Content>
