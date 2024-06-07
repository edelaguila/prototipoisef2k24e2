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
    public partial class Mantenimiento_facultad : Form
    {
        public Mantenimiento_facultad()
        {
            InitializeComponent();
            this.navegador1.config("facultades", this, "8005");
        }

        private void txt_estatus_TextChanged(object sender, EventArgs e)
        {
            TextBox textBox = (TextBox)sender;
            if (string.IsNullOrEmpty(textBox.Text))
            {
                ((TextBox)sender).Text = "1";
            }
        }
    }   
}
