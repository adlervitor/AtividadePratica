<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisponivelTrabalho.aspx.cs" Inherits="AtividadePratica.DisponivelTrabalho" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Seleção de Dias da Semana</title>
    <style>
        .container {
            width: 300px;
            margin: 50px auto;
            text-align: left;
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 5px;
        }

        .btn {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .chkItem {
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Selecione os dias da semana disponíveis</h2>
            <asp:CheckBoxList ID="chkDiasSemana" runat="server">
                <asp:ListItem Text="Segunda-feira" Value="Segunda-feira" CssClass="chkItem"></asp:ListItem>
                <asp:ListItem Text="Terça-feira" Value="Terça-feira" CssClass="chkItem"></asp:ListItem>
                <asp:ListItem Text="Quarta-feira" Value="Quarta-feira" CssClass="chkItem"></asp:ListItem>
                <asp:ListItem Text="Quinta-feira" Value="Quinta-feira" CssClass="chkItem"></asp:ListItem>
                <asp:ListItem Text="Sexta-feira" Value="Sexta-feira" CssClass="chkItem"></asp:ListItem>
                <asp:ListItem Text="Sábado" Value="Sábado" CssClass="chkItem"></asp:ListItem>
                <asp:ListItem Text="Domingo" Value="Domingo" CssClass="chkItem"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="btnMostrarDias" runat="server" Text="Mostrar Dias Selecionados" OnClick="btnMostrarDias_Click" CssClass="btn" />
            <br />
            <asp:Label ID="lblDiasSelecionados" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>