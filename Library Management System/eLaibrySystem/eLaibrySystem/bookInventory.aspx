﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookInventory.aspx.cs" Inherits="eLaibrySystem.bookinventory" %>
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
                                 <h4>Book Details</h4>
                               </center>
                              </div>
                             </div>

                            <div class="col">
                            <center>
                                <img width="100" src="images/book2.png" />
                            </center>
                            </div>

                            <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>

                            <div class="row">
                              <div class="col">
                                  <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                              </div>
                             </div>

                            <div class="row">


                                 <div class="col-md-3">
                                <label>Book Id</label>
                                     <div class="mb-3">
                                         <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtBookId" runat="server" TextMode="Number"></asp:TextBox>
                                           <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" Text="A"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                         </div>
                                     </div>
                              </div>

                             
                              <div class="col-md-9">
                                 <label>Book Name</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtBookName" runat="server" placeholder="Book name"></asp:TextBox>
                                     </div>
                              </div>


                             </div>

                            <div class="row">
                     <div class="col-md-4">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="dplLanguage" runat="server">
                              <asp:ListItem Text="English" Value="English" />
                              <asp:ListItem Text="Hindi" Value="Hindi" />
                              <asp:ListItem Text="Marathi" Value="Marathi" />
                              <asp:ListItem Text="French" Value="French" />
                              <asp:ListItem Text="German" Value="German" />
                              <asp:ListItem Text="Urdu" Value="Urdu" />
                           </asp:DropDownList>
                        </div>
                        <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="dplPublisherName" runat="server">
                              <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                              <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Author Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="dplAuthorName" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        <label>Publish Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtPublishDate" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Genre</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="lbGenerate" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Action" Value="Action" />
                              <asp:ListItem Text="Adventure" Value="Adventure" />
                              <asp:ListItem Text="Comic Book" Value="Comic Book" />
                              <asp:ListItem Text="Self Help" Value="Self Help" />
                              <asp:ListItem Text="Motivation" Value="Motivation" />
                              <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                              <asp:ListItem Text="Wellness" Value="Wellness" />
                              <asp:ListItem Text="Crime" Value="Crime" />
                              <asp:ListItem Text="Drama" Value="Drama" />
                              <asp:ListItem Text="Fantasy" Value="Fantasy" />
                              <asp:ListItem Text="Horror" Value="Horror" />
                              <asp:ListItem Text="Poetry" Value="Poetry" />
                              <asp:ListItem Text="Personal Development" Value="Personal Development" />
                              <asp:ListItem Text="Romance" Value="Romance" />
                              <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                              <asp:ListItem Text="Suspense" Value="Suspense" />
                              <asp:ListItem Text="Thriller" Value="Thriller" />
                              <asp:ListItem Text="Art" Value="Art" />
                              <asp:ListItem Text="Autobiography" Value="Autobiography" />
                              <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                              <asp:ListItem Text="Health" Value="Health" />
                              <asp:ListItem Text="History" Value="History" />
                              <asp:ListItem Text="Math" Value="Math" />
                              <asp:ListItem Text="Textbook" Value="Textbook" />
                              <asp:ListItem Text="Science" Value="Science" />
                              <asp:ListItem Text="Travel" Value="Travel" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>

                            <div class="row">
                     <div class="col-md-4">
                        <label>Edition</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtEdition" runat="server" placeholder="Edition"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Book Cost</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtBookCout" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pages</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtPage" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                            <div class="row">
                     <div class="col-md-4">
                        <label>Actual Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtStock" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Current Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtCurrentStock" runat="server" TextMode="Number" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Issued Books</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtIssudeBook" runat="server" TextMode="Number" ></asp:TextBox>
                        </div>
                     </div>
                  </div>

                            <div class="row">
                     <div class="col-12">
                        <label>Book Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtDesciption" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox><br>
                        </div>
                     </div>
                  </div>

                            <div class="row">     
                               <div class="col-4">
                                   <asp:Button class="btn btn-primary btn-sm" Width="150" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                               </div>
                               <div class="col-4">
                                   <asp:Button class="btn btn-success btn-sm" Width="150" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                               </div>
                               <div class="col-4">
                                   <asp:Button class="btn btn-danger btn-sm" Width="150" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
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
                           <h4>Book Inventory List</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridViewinventory" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>


          </div>
        </div>

</asp:Content>
