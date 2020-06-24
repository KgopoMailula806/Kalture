<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster01.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="webSIte.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url('images/hero_bg_3.jpg');" data-aos="fade" data-stellar-background-ratio="0.5" data-aos="fade">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7 text-center" data-aos="fade-up" data-aos-delay="400">
            
            <h4 class="text-white h1">Register</h4>
            <p>Register will yah</p>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section">

      <div class="container">
      
          <form runat="server">

            <p>FirstName</p>
  		    <input type="text" id="fName" name="firstname" placeholder="Firstname" autocomplete="off" runat="server" />
            <p>LastName</p>
  		    <input type="text" id="lName" name="lastname" placeholder="lastname" autocomplete="off" runat="server" />               
            <p>e-mail</p>
  		    <input type="email" id="emaill" name="email" placeholder="email" autocomplete="off" runat="server" />                    
            <p>Contact numbers</p>
  		    <input type="number" id="contact" name="numbers" placeholder="0" autocomplete="off" runat="server" />
             <p>Password</p>
  		    <input type="password" id="password" name="pass" placeholder="123" autocomplete="off" runat="server" />         
            <p>Confirm Password</p>
  		    <input type="password" id="passwConfirm" name="conpass" placeholder="123" autocomplete="off" runat="server" />         
           
                 <p>      </p>
          <asp:Button ID="registerId" runat="server" Text="Register" OnClick="RegisterBtn_Click" />        
        </form>
     </div>
    </div>

</asp:Content>
