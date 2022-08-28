<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagment.aspx.cs" Inherits="eLaibrySystem.adminpublishermanagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                 <h4>Publisher Details</h4>
                               </center>
                              </div>
                             </div>


                            <div class="col">
                            <center>
                                <img width="100" src="images/publish.png" />
                            </center>
                            </div>


                             <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">
                              <div class="col-md-4">
                                <label>Publisher Id</label>
                                     <div class="mb-3">
                                         <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="txtPublisherId" runat="server" placeholder="publisher id"></asp:TextBox>
                                          <asp:Button class="btn btn-primary btn-sm" ID="Button3" runat="server" Text="Go" />
                                         </div>
                                     </div>
                              </div>
                              <div class="col-md-8">
                                 <label>Publisher name</label>
                                     <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtPublisherName" runat="server" placeholder="publisher name"></asp:TextBox>
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
                                 <h4>Publisher List</h4>                    
                               </center>
                              </div>
                             </div>

                           <div class="row">
                              <div class="col">
                                <hr>
                              </div>
                             </div>


                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView class="table table-striped table-bordered table-hover" ID="GridViewAPM" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                      <Columns>
                                          <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                          <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
