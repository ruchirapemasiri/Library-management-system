<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="eLaibrySystem.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
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
                                 <h4>User Details</h4>
                               </center>
                              </div>
                             </div>
                             <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">
                              <div class="col-md-6">
                                <label>Full Name</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtFullname" runat="server" placeholder="full name"></asp:TextBox>
                                     </div>
                              </div>
                              <div class="col-md-6">
                                 <label>Date of birth</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtDob" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                     </div>
                              </div>
                             </div>



                            <div class="row">
                              <div class="col-md-6">
                                <label>Contact Number</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtCNO" runat="server" placeholder="contact number" TextMode="Number"></asp:TextBox>
                                     </div>
                              </div>

                              <div class="col-md-6">
                                 <label>Email Id</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="email-id" TextMode="Email"></asp:TextBox>
                                     </div>
                              </div>
                             </div>



                            <div class="row">
                              <div class="col-md-4">
                                <label>State</label>
                                     <div class="mb-3">
                                         <asp:DropDownList ID="dplState" class="form-control" runat="server">
                                              <asp:ListItem Text="-Select-" Value="select" />
                                              <asp:ListItem Text="Western Province" Value="Western Province" />
                                              <asp:ListItem Text="Central Province" Value="Central Province" />
                                              <asp:ListItem Text="Southern Province" Value="Southern Province" />
                                              <asp:ListItem Text="Uva Province" Value="Uva Province" />
                                              <asp:ListItem Text="Uva Province" Value="Uva Province" />
                                              <asp:ListItem Text="Uva Province" Value="Uva Province" />
                                         </asp:DropDownList>
                                     </div>
                              </div>

                              <div class="col-md-4">
                                 <label>City</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="txtCity" runat="server" placeholder="city" ></asp:TextBox>
                                     </div>
                              </div>

                              <div class="col-md-4">
                                 <label>Pincode</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="txtPinCode" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                     </div>
                              </div>
                             </div>


                             <div class="row">
                              <div class="col">
                                <label>Address</label>
                                     <div class="mb-3">
                                         <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                     </div>
                              </div>
                             </div>


                            <div class="row">
                                <center>
                                 <div class="col">
                                    <span class="badge rounded-pill bg-info text-dark">Login Credential</span>
                                 </div>
                                </center>
                            </div>


                             <div class="row">
                              <div class="col-md-6">
                                <label>User Id</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="txtUserId" runat="server" placeholder="user id"></asp:TextBox>
                                     </div>
                              </div>
                              <div class="col-md-6">
                                 <label>Password</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                     </div>
                              </div>
                             </div>



                             <div class="row">
                                 <div class="col">
                                     <div class="mb-3">
                                         <div class="d-grid gap-2">
                                             <asp:Button class="btn btn-success btn-sm" ID="Button3" runat="server" Text="Sign Up" OnClick="Button3_Click" />
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
