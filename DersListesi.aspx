<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersListesi.aspx.cs" Inherits="DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    

    <div class="table-responsive">
        <table class="table table-bordered table-hover table-fixed">
            <thead>
                <tr>
                    <th scope="col">DERS ID</th>
                    <th scope="col">DERS ADI</th>
                    <th scope="col">İşlemler</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("DERSID") %></td>
                            <td><%# Eval("DERSAD") %></td>
                            <td class="actions">
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "DersSil.aspx?DERSID=" + Eval("DERSID") %>'
                                    runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "DersGuncelle.aspx?DERSID=" + Eval("DERSID") %>'
                                    runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/DersEkle.aspx" runat="server" CssClass="btn btn-primary">Ders Ekle</asp:HyperLink>

</asp:Content>


