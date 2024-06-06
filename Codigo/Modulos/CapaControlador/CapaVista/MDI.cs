using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista
{
    public partial class MDI : Form
    {
        public MDI()
        {
            InitializeComponent();
        }
        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;
        }

        private void hideSubMenu()
        {

            if (panelseguridad.Visible == true)
                panelseguridad.Visible = false;
            if (panelayuda.Visible == true)
                panelayuda.Visible = false;
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btnReportes_Click(object sender, EventArgs e)
        {
            showSubMenu(panelseguridad);
        }

        private void btnSeguridad_Click(object sender, EventArgs e)
        {
            showSubMenu(panelayuda);
        }

        private void btn_mant_cliente_Click(object sender, EventArgs e)
        {
            Mantenimiento_facultad frm = new Mantenimiento_facultad();
            frm.Show();
        }

        private void mant_moneda_Click(object sender, EventArgs e)
        {
            Mantenimiento_seccion frm = new Mantenimiento_seccion();
            frm.Show();
        }

        private void btn_mant_estados_Click(object sender, EventArgs e)
        {
            Mantenimiento_cursos form = new Mantenimiento_cursos();
            form.Show();
        }

        private void btn_mant_tarjeta_Click(object sender, EventArgs e)
        {
            Mantenimiento_carrera form = new Mantenimiento_carrera();
            form.Show();
        }
    }
}
