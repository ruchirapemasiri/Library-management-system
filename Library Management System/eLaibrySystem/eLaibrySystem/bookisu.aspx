<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookisu.aspx.cs" Inherits="eLaibrySystem.bookisu" %>
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
                                 <h4>Book Issuing</h4>
                               </center>
                              </div>
                             </div>


                            <div class="col">
                            <center>
                                <img width="100" src="images/book1.png" />
                            </center>
                            </div>


                             <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">
                             
                              <div class="col-md-6">
                                 <label>Member Id</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="member id"></asp:TextBox>
                                     </div>
                              </div>


                                 <div class="col-md-6">
                                <label>Book Id</label>
                                     <div class="mb-3">
                                         <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="book id" TextMode="Number"></asp:TextBox>
                                          <asp:Button class="btn btn-primary btn-sm" ID="Button5" runat="server" Text="Go" />
                                         </div>
                                     </div>
                              </div>


                             </div>



                            <div class="row">
                             
                              <div class="col-md-6">
                                 <label>Member Name</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="member name" ReadOnly="True"></asp:TextBox>
                                     </div>
                              </div>

                               <div class="col-md-6">
                                 <label>Book Name</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="book name" ReadOnly="True"></asp:TextBox>
                                     </div>
                              </div>
                                
                             </div>
                           


                            <div class="row">
                             
                              <div class="col-md-6">
                                 <label>Start Date</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start date" TextMode="Date"></asp:TextBox>
                                     </div>
                              </div>

                               <div class="col-md-6">
                                 <label>End Date</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="end date" TextMode="Date"></asp:TextBox>
                                     </div>
                              </div>
                                
                             </div> 




                           <div class="row">
                               
                               <div class="col-6">
                                   <center>
                                   <asp:Button class="btn btn-primary btn-lg btn-sm" Width="170" ID="Button1" runat="server" Text="Issue" OnClick="Button1_Click" />
                                       </center>
                               </div>

                               <div class="col-6">
                                   <center>
                                   <asp:Button class="btn btn-warning btn-lg btn-sm"  Width="170" ID="Button2" runat="server" Text="Return" />
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
                                 <h4>Issued book List</h4>                    
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
