<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Products_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Products</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="col-lg-12">
            <h1 class="text-center">
                <i class="fa fa-shopping-basket"></i> View Products
            </h1>
            <form runat="server" class="form-horizontal well">
                <table id="tblProducts" class="table table-hover">
                    <thead>
                        <th>#</th>
                        <th colspan="2">Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Date Added</th>
                        <th>Date Modified</th>
                    </thead>
                    <tbody>
                        <asp:ListView ID="lvProducts" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("productNo") %></td>
                                    <td>
                                        <img src='../Images/Products/<%# Eval("image") %>'
                                            width="100" />
                                    </td>
                                    <td>
                                        <%# Eval("name") %><br />
                                        <small><%# Eval("description") %></small>
                                    </td>
                                    <td><%# Eval("catName") %></td>
                                    <td><%# Eval("price") %></td>
                                    <td><%# Eval("status") %></td>
                                    <td><%# Eval("dateAdded") %></td>
                                    <td><%# Eval("dateModified") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#tblProducts').DataTable();
        });
    </script>
</body>
</html>
