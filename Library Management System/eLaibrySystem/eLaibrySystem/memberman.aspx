<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="memberman.aspx.cs" Inherits="eLaibrySystem.memberman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                   <div class="card-body">
                       <div class="row">
                          

                            <div class="row">
                              <div class="col">
                               <center>
                                 <h4>Member Details</h4>
                               </center>
                              </div>
                             </div>


                            <div class="col">
                            <center>
                                <img width="100" src="images/user1.png" />
                            </center>
                            </div>


                             <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">


                                 <div class="col-md-3">
                                <label>Member Id</label>
                                     <div class="mb-3">
                                         <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                                           <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" Text="A"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                         </div>
                                     </div>
                              </div>

                             
                              <div class="col-md-4">
                                 <label>Full Name</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="full name" ReadOnly="True"></asp:TextBox>
                                     </div>
                              </div>


                              <div class="col-md-5">
                                 <label>Account Status</label>
                                     <div class="mb-3">
                           <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                          <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" Text="A"><i class="fas fa-check-circle"></i></asp:LinkButton>
                               <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" Text="A"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                               <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" Text="A"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                         </div>
                                     </div>
                              </div>   


                             </div>



                            <div class="row">


                                 <div class="col-md-3">
                                 <label>DOB</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="DOB" ReadOnly="True" ></asp:TextBox>
                                     </div>
                              </div>

                             
                              <div class="col-md-5">
                                 <label>Contect Number</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="contact no" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                     </div>
                              </div>

                               <div class="col-md-4">
                                 <label>Email</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="email" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                     </div>
                              </div>
                                
                             </div>



                            <div class="row">


                                 <div class="col-md-4">
                                 <label>State</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="state" ReadOnly="True" ></asp:TextBox>
                                     </div>
                              </div>

                             
                              <div class="col-md-5">
                                 <label>City</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="city" ReadOnly="True"></asp:TextBox>
                                     </div>
                              </div>

                               <div class="col-md-3">
                                 <label>Pin Code</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="pin code" ReadOnly="True"></asp:TextBox>
                                     </div>
                              </div>
                                
                             </div>
                           


                            <div class="row">
                             
                             

                               <div class="col-12">
                                 <label>Address</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                     </div>
                              </div>
                                
                             </div> 




                           <div class="row">
                               
                               <div class="col-8 mx-auto">
                                   <center>
                                   <asp:Button class="btn btn-primary btn-lg btn-sm" ID="Button1" runat="server" Text="Delete user permanatly" />
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
                          

                           <div class="row">
                              <div class="col">
                               <center>
                                 <h4>Member List</h4>                    
                               </center>
                              </div>
                             </div>

                           <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString3 %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView class="table table-striped table-bordered table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                      <Columns>
                                          <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                          <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                          <asp:BoundField DataField="contc_no" HeaderText="contc_no" SortExpression="contc_no" />
                                          <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                          <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                          <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                          <asp:BoundField DataField="pin_code" HeaderText="pin_code" SortExpression="pin_code" />
                                          <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
                                          <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                                          <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                      </Columns>
                                  </asp:GridView>
                              </div>
                             </div>


                           </div>
                       </div>
                   </div>
            </div>
        </div>
    </div>

</asp:Content>
