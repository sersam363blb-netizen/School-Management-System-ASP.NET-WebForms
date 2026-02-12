<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruListesi.aspx.cs" Inherits="DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">


    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">Başlık</th>
            <th scope="col">İçerik</th>
            <th scope="col">Öğretmen</th>
            <th scope="col">İşlemler</th>

        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%# Eval("DUYURUID") %></td>
                        <td><%# Eval("DUYURUBASLIK") %></td>
                        <td><%# Eval("DUYURUICERIK") %></td>
                        <td><%# Eval("DUYURUOGRT") %></td>
                        
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"DuyuruSil.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"DuyuruGuncelle.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>

                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

    <%-- NavigateUrl='<%#"OgrenciSil.aspx?OGRID="+Eval("OGRID")%>' --%>
     <%--NavigateUrl='<%#"OgrenciGuncelle.aspx?OGRID="+Eval("OGRID")%>' --%>
</asp:Content>

