using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaControlador;

namespace CapaVista
{
    public partial class AsignacionCursos : Form
    {
        public ControladorMaestro ct;
        public AsignacionCursos()
        {
            InitializeComponent();
            this.ct = new ControladorMaestro();
            this.fillCmbs();
            this.fillDataGrid();
        }

        public void fillCmbs()
        {
            this.ct.fillCmbJornada(this.cb_jornada);
            this.ct.fillCmbAula(this.cb_aula);
            this.ct.fillCmbCursos(this.cb_curso);
            this.ct.fillCmbCarrera(this.cb_carrera);
            this.ct.fillCmbSeccion(this.cb_seccion);
            this.ct.fillCmbSede(this.cb_sede);
        }

        public void fillDataGrid()
        {
            this.ct.fillDataGrid(this.dgv);
        }

        private void btn_asignar_Click(object sender, EventArgs e)
        {
            bool status = this.ct.realizarAsignacion(cb_curso, cb_sede, cb_jornada, cb_seccion, cb_aula, cb_curso, txt_nombre.Text);
            if (status)
            {
                MessageBox.Show("Maestro asignado correctamente");
                return;
            }
            MessageBox.Show("Error al asignar al maestro, verifique que el codigo del maestro este correcto");
            this.fillDataGrid();
        }

        private void txt_nombre_TextChanged(object sender, EventArgs e)
        {
            if (this.ct.verificarMaestro(txt_nombre.Text))
            {
                btn_accion.BackColor = Color.Green;
            }
            else
            {
                btn_accion.BackColor = Color.Red;
            }
        }
    }
}
