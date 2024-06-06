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
    public partial class Mantenimiento_cursos : Form
    {
        public Mantenimiento_cursos()
        {
            InitializeComponent();
            navegador1.config("cursos", this, "8002");
        }
    }
}
