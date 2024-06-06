using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Vista_MenuHCV
{
    public partial class MantenimientoCarreas : Form
    {
        public MantenimientoCarreas()
        {
            InitializeComponent();
            this.navegador1.config("carreras", this);
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
