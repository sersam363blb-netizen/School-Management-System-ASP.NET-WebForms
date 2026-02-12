<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="GelenMesajlar.aspx.cs" Inherits="GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">Gönderen</th>
            <th scope="col">Başlık</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>
            <%--<th scope="col">İşlemler</th>--%>

        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%# Eval("MESAJID") %></td>
                        <td><%# Eval("GONDEREN") %></td>
                        <td><%# Eval("BASLIK") %></td>
                        <td><%# Eval("ICERIK") %></td>
                        <td><%# Eval("TARIH") %></td>

                        <%--<td>
                         <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"MesajSil.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                         <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"MesajGuncelle.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                     </td>--%>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>

