<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagment.aspx.cs" Inherits="eLaibrySystem.adminauthormanagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    $(document).ready( function () {
    $('#myTable').DataTable();
} );

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                   <div class="card-body">
                       <div class="row">
                          

                            <div class="row">
                              <div class="col">
                               <center>
                                 <h4>Author Details</h4>
                               </center>
                              </div>
                             </div>


                            <div class="col">
                            <center>
                                <img width="100" src="images/author.png" />
                            </center>
                            </div>


                             <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">
                              <div class="col-md-4">
                                <label>Author Id</label>
                                     <div class="mb-3">
                                         <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtAuthorId" runat="server" placeholder="author id"></asp:TextBox>
                                          <asp:Button class="btn btn-primary btn-sm" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />
                                         </div>
                                     </div>
                              </div>
                              <div class="col-md-8">
                                 <label>Author name</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtAuthorName" runat="server" placeholder="author name"></asp:TextBox>
                                     </div>
                              </div>
                             </div>

                           <div class="row">
                               
                               <div class="col-4">
                                   <asp:Button class="btn btn-primary btn-lg btn-sm" width="120" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                               </div>

                               <div class="col-4">
                                   <asp:Button class="btn btn-warning btn-lg btn-sm" width="120" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                               </div>

                               <div class="col-4">
                                   <asp:Button class="btn btn-success btn-lg btn-sm" width="120" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                 <h4>Author List</h4>                    
                               </center>
                              </div>
                             </div>

                           <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView class="table table-striped table-bordered table-hover" ID="GridViewAAM" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                      <Columns>
                                          <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                          <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
