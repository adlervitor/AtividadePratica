using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AtividadePratica
{
    public partial class DisponivelTrabalho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnMostrarDias_Click(object sender, EventArgs e)
        {
            StringBuilder diasSelecionados = new StringBuilder();
            foreach (ListItem item in chkDiasSemana.Items)
            {
                if (item.Selected)
                {
                    diasSelecionados.Append(item.Value).Append(", ");
                }
            }

            if (diasSelecionados.Length > 0)
            {
                diasSelecionados.Remove(diasSelecionados.Length - 2, 2);
                lblDiasSelecionados.Text = "Dias selecionados: " + diasSelecionados.ToString();
            }
            else
            {
                lblDiasSelecionados.Text = "Nenhum dia selecionado.";
            }
        }
    }
}