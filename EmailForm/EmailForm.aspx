<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailForm.aspx.cs" Inherits="EmailForm.EmailForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Contact Us</h2>
            <asp:TextBox runat="server" ID="txtName" Placeholder="Your Name" CssClass="form-control" />
            <br />
            <asp:TextBox runat="server" ID="txtEmail" Placeholder="Your Email" CssClass="form-control" />
            <br />
            <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" Placeholder="Your Message" CssClass="form-control" Rows="5" />
            <br />
            <asp:Button runat="server" ID="btnSubmit" Text="Send Message" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />

        </div>
    </form>
</body>
</html>
