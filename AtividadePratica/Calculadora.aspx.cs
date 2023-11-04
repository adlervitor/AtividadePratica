using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AtividadePratica
{
    public partial class Calculadora : System.Web.UI.Page
    {

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double numero1, numero2;

            if (double.TryParse(txbNumero1.Text, out numero1) && double.TryParse(txbNumero2.Text, out numero2))
            {
                if (ddlOperador.SelectedItem.Value == "+")
                {
                    lblResultado.Text = "Resultado: " + (numero1 + numero2).ToString();
                }
                else if (ddlOperador.SelectedItem.Value == "-")
                {
                    lblResultado.Text = "Resultado: " + (numero1 - numero2).ToString();
                }
                else if (ddlOperador.SelectedItem.Value == "*")
                {
                    lblResultado.Text = "Resultado: " + (numero1 * numero2).ToString();
                }
                else if (ddlOperador.SelectedItem.Value == "/")
                {
                    if (numero2 != 0)
                    {
                        lblResultado.Text = "Resultado: " + (numero1 / numero2).ToString();
                    }
                    else
                    {
                        lblResultado.Text = "Não é possível dividir por zero. Insira um valor diferente de zero para o segundo número.";
                    }
                }
                else
                {
                    lblResultado.Text = "Selecione um operador válido.";
                }
            }
            else
            {
                lblResultado.Text = "Insira valores numéricos válidos em ambas as caixas de texto.";
            }
        }

    }
}