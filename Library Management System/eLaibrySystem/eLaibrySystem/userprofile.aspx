<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="eLaibrySystem.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                                 <h4>Your Profile</h4>
                                   <span>Account Status: </span>
                                   <asp:Label ID="Label1" class="badge rounded-pill bg-info text-dark" runat="server" Text="My Status"></asp:Label>

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
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="full name"></asp:TextBox>
                                     </div>
                              </div>
                              <div class="col-md-6">
                                 <label>Date of birth</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                     </div>
                              </div>
                             </div>



                            <div class="row">
                              <div class="col-md-6">
                                <label>Contact Number</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="contact number" TextMode="Number"></asp:TextBox>
                                     </div>
                              </div>

                              <div class="col-md-6">
                                 <label>Email Id</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="email-id" TextMode="Email"></asp:TextBox>
                                     </div>
                              </div>
                             </div>



                            <div class="row">
                              <div class="col-md-4">
                                <label>State</label>
                                     <div class="mb-3">
                                         <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
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
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="city" ></asp:TextBox>
                                     </div>
                              </div>

                              <div class="col-md-4">
                                 <label>Pincode</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                     </div>
                              </div>
                             </div>


                             <div class="row">
                              <div class="col">
                                <label>Address</label>
                                     <div class="mb-3">
                                         <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                              <div class="col-md-4">
                                <label>User Id</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="user id" ReadOnly="True"></asp:TextBox>
                                     </div>
                              </div>
                              <div class="col-md-4">
                                 <label>Old Password</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True" TextMode="Password"></asp:TextBox>
                                     </div>
                              </div>
                               <div class="col-md-4">
                                 <label>New Password</label>
                                     <div class="mb-3">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                     </div>
                              </div>
                             </div>



                             <div class="row">
                                 <div class="col-8 mx-auto">
                                     <center>
                                     <div class="mb-3">
                                         <div class="d-grid gap-2">
                                             <asp:Button class="btn btn-primary btn-sm" ID="Button3" runat="server" Text="Update" />
                                         </div>
                                      </div>
                                      </center>
                                     </div>
                                 </div>

                             </div>
                       </div>
                   </div>
                <a style="color:red" href="homepage.aspx"><< Back to Home</a><br><br>
            </div>

            <div class="col-md-7">
                 <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                            <center>
                                <img width="100" src="images/bigbook.png" />
                            </center>
                            </div>

                           <div class="row">
                              <div class="col">
                               <center>
                                 <h4>Your Issude Books</h4>                    
                                   <asp:Label ID="Label2" class="badge rounded-pill bg-info text-dark" runat="server" Text="Your books info"></asp:Label>
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
                                  <asp:GridView class="table table-striped table-bordered table-hover" ID="GridView1" runat="server"></asp:GridView>
                              </div>
                             </div>


                           </div>
                       </div>
                   </div>
            </div>
        </div>
     </div>

</asp:Content>
