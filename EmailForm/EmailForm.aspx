<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailForm.aspx.cs" Inherits="EmailForm.EmailForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #f7f9fc;
            font-family: Arial, sans-serif;
            
        }
        #form1{
            width:70%;
            margin:auto;
            display:flex;
            justify-content:center;
            align-items:center;
        }

        .form-control {
            margin-bottom: 15px;
            border-radius: 5px;
            margin:auto;

        }
        .form-container{
            width:100%;
        }
        .form-container h2{
            text-align: center;
            margin-bottom: 20px;
            color: #333;

        }

        .btn-primary {
            width: 100%;
            padding: 10px;
        }
    </style>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Contact Us</h2>
            <asp:TextBox runat="server" ID="txtName" Placeholder="Your Name" CssClass="form-control" />
            <br />
            <asp:TextBox runat="server" ID="txtEmail" Placeholder="Your Email" CssClass="form-control" />
            <br />
            <asp:TextBox runat="server" ID="txtEmail2" Placeholder="Recipient 2" CssClass="form-control" />
            <br />
            <asp:TextBox runat="server" ID="txtEmail3" Placeholder="Recipient 2" CssClass="form-control" />
            <br />
            <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" Placeholder="Your Message" CssClass="form-control" Rows="5" />
            <br />
            <asp:Button runat="server" ID="btnSubmit" Text="Send Message" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />

        </div>
    </form>
</body>
</html>
