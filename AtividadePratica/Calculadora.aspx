<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="AtividadePratica.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora</title>
    <style>
        .calculator {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            background-color: #f9f9f9;
        }

        .input {
            width: calc(100% - 20px);
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .result {
            width: 100%;
            margin-bottom: 10px;
            padding: 5px;
            font-weight: bold;
        }

        .btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover 
        {
            background-color: #45a049;
        }
        .result 
        {
            width: calc(100% - 20px);
            margin-top: 20px;
            margin-bottom: 20px;
            padding: 15px;
            font-weight: bold;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="calculator">
            <asp:TextBox ID="txbNumero1" class="input" runat="server" placeholder="Primeiro número"></asp:TextBox>
            <asp:DropDownList ID="ddlOperador" class="input" runat="server">
                <asp:ListItem> </asp:ListItem>
                <asp:ListItem>+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>*</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txbNumero2" class="input" runat="server" placeholder="Segundo número"></asp:TextBox>
            <asp:Button ID="btnCalcular" class="btn" runat="server" OnClick="btnCalcular_Click" Text="Calcular" />
            <br />
            <asp:Label ID="lblResultado" class="result" runat="server" Text=" "></asp:Label>
        </div>
    </form>
</body>
</html>
