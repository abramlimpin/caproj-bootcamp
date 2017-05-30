<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Users_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a User</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="col-lg-offset-3 col-lg-6">
            <h1 class="text-center">
                <i class="fa fa-user"></i>
                Add a User
            </h1>
            <form runat="server" class="form-horizontal well">
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        User Type
                    </label>
                    <div class="col-lg-8">
                        <asp:DropDownList ID="ddlTypes" runat="server"
                            class="form-control" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        First Name
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtFN" runat="server" CssClass="form-control" 
                            MaxLength="20" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Last Name
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtLN" runat="server" CssClass="form-control" 
                            MaxLength="20" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Email Address
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" 
                            MaxLength="20" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Password
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" 
                            MaxLength="20" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Mobile
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtMobile" runat="server" type="number" CssClass="form-control" 
                            MaxLength="20" required />
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-lg-offset-4 col-lg-8">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success"
                            Text="Add" OnClick="btnAdd_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>




    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
