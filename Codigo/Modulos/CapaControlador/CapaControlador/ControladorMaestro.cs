using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaModelo;

namespace CapaControlador
{
    public class ControladorMaestro
    {
        public SentenciaMaestro sn;
        public ControladorMaestro()
        {
            this.sn = new SentenciaMaestro();
        }
        public void fillCmbMaestro(ComboBox cmb)
        {
            List<string> values = this.sn.ObenerValorTabla("maestros");
            foreach (string val in values) cmb.Items.Add(val);
        }

        public void fillCmbSeccion(ComboBox cmb)
        {
            List<string> values = this.sn.ObenerValorTabla("secciones");
            foreach (string val in values) cmb.Items.Add(val);
        }

        public void fillCmbCarrera(ComboBox cmb)
        {
            List<string> values = this.sn.ObenerValorTabla("carreras");
            foreach (string val in values) cmb.Items.Add(val);
        }

        public void fillCmbSede(ComboBox cmb)
        {
            List<string> values = this.sn.ObenerValorTabla("sedes");
            foreach (string val in values) cmb.Items.Add(val);
        }

        public void fillCmbAula(ComboBox cmb)
        {
            List<string> values = this.sn.ObenerValorTabla("aulas");
            foreach (string val in values) cmb.Items.Add(val);
        }

        public void fillCmbCursos(ComboBox cmb)
        {
            List<string> values = this.sn.ObenerValorTabla("cursos");
            foreach (string val in values) cmb.Items.Add(val);
        }

        public void fillCmbJornada(ComboBox cmb)
        {
            List<string> values = this.sn.ObenerValorTabla("jornadas");
            foreach (string val in values) cmb.Items.Add(val);
        }

        public bool realizarAsignacion(ComboBox codigo_carrera, ComboBox codigo_sede, ComboBox codigo_jornada, ComboBox codigo_seccion, ComboBox codigo_aula, ComboBox codigo_curso, string codigo_maestro)
        {
            string codigo = this.sn.ObtenerIndice("carreras", codigo_carrera.SelectedIndex);
            string sede = this.sn.ObtenerIndice("sedes", codigo_sede.SelectedIndex);
            string jornada = this.sn.ObtenerIndice("jornadas", codigo_jornada.SelectedIndex);
            string seccion = this.sn.ObtenerIndice("secciones", codigo_seccion.SelectedIndex);
            string aula = this.sn.ObtenerIndice("aulas", codigo_aula.SelectedIndex);
            string curso = this.sn.ObtenerIndice("cursos", codigo_curso.SelectedIndex);
            return this.sn.realizarAsignacion(codigo, sede, jornada, seccion, aula, curso, codigo_maestro);
        }

        public void fillDataGrid(DataGridView dgv)
        {
            dgv.DataSource = this.sn.ObtenerAsignaciones();
        }

        public bool verificarMaestro(string codigo)
        {
            return this.sn.MaestroExiste(codigo);
        }
    }
}
