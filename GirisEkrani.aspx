<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GirisEkrani.aspx.cs" Inherits="GirisEkrani" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>E-Okul Deneme Projesi | Giriş</title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <h2>E-Okul Deneme Projesi</h2>
            <br />
            <asp:Image ID="Image1" runat="server" Height="203px" Width="291px" ImageUrl="~/Images/images.jpeg" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" Width="350px" CssClass="btn btn-warning" OnClick="Button1_Click" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Şifremi Unuttum" Width="110px" CssClass="btn btn-default" />
            <asp:Button ID="Button3" runat="server" Text="İptal Et" Width="110px" CssClass="btn btn-danger" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" Width="110px" CssClass="btn btn-info" />
           
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <style>
            div {
                
                margin: auto;
                text-align: center;
                font-size: xx-large;
                font-weight: bold;
                background-color: lightblue;
            }
        </style>
    </form>

</body>
</html>
