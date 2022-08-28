<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="eLaibrySystem.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                            <center>
                                <img width="100" src="images/user1.png" />
                            </center>
                            </div>
                            <div class="row">
                              <div class="col">
                               <center>
                                 <h3>Member Login</h3>
                               </center>
                              </div>
                             </div>
                             <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>
                             <div class="row">
                                 <div class="col">
                                     <label>Member ID</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtMemberId" runat="server" placeholder="Member ID"></asp:TextBox>
                                     </div>
                                     <label>Password</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                     </div>
                                     <div class="mb-3">
                                         <div class="d-grid gap-2">
                                             <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" />
                                             <center>
                                             <a href="signup.aspx"><input type="button" class="btn btn-primary btn-sm" id="Button2" value="Sign Up" /></a>
                                             </center>
                                         </div>
                                      </div>
                                     </div>
                                 </div>
                             </div>
                       </div>
                   </div>
                <a style="color:red" href="homepage.aspx"><< Back to Home</a><br><br>
            </div>
        </div>
     </div>

</asp:Content>
