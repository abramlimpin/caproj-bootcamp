<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Products_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a Product</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="col-lg-offset-3 col-lg-6">
            <h1 class="text-center">
                <i class="fa fa-shopping-bag"></i>
                Add a Product
            </h1>
            <form runat="server" class="form-horizontal well">
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Category
                    </label>
                    <div class="col-lg-8">
                        <asp:DropDownList ID="ddlCategories" runat="server"
                            class="form-control" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Name
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" 
                            MaxLength="50" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Description
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" MaxLength="300"
                            TextMode="MultiLine" reqiured />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Image
                    </label>
                    <div class="col-lg-8">
                        <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Price
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" 
                            type="number" min="1.00" max="100.00" step="0.01" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Critical Level
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtCritical" runat="server" CssClass="form-control" 
                            type="number" min="1" max="100" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">
                        Maximum
                    </label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtMax" runat="server" CssClass="form-control" 
                            type="number" min="1" max="100" required />
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-lg-offset-4 col-lg-8">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success"
                            Text="Add" />
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
