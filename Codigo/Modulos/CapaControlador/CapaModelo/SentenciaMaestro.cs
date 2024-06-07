using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Odbc;
using System.Data;

namespace CapaModelo
{
    public class SentenciaMaestro
    {
        public Conexion conn;
        public SentenciaMaestro()
        {
            this.conn = new Conexion();
        }
        public List<string> ObenerValorTabla(string table, int index = 1)
        {
            List<string> values = new List<string>();
            this.conn.open();
            string sql = "select * from " + table;
            OdbcCommand cmd = new OdbcCommand(sql, this.conn.point);
            OdbcDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                values.Add(reader.GetString(index));
            }
            this.conn.close();
            return values;
        }
        public string ObtenerIndice(string table, int index)
        {
            this.conn.open();
            string sql = "select * from " + table;
            OdbcCommand cmd = new OdbcCommand(sql, this.conn.point);
            OdbcDataReader reader = cmd.ExecuteReader();
            int count = 0;
            while (reader.Read())
            {
                if (index == count) return reader.GetString(0);
                count++;
            }
            this.conn.close();
            return "";
        }

        public bool realizarAsignacion(string codigo_carrera, string codigo_sede, string codigo_jornada, string codigo_seccion, string codigo_aula, string codigo_curso, string codigo_maestro)
        {
            this.conn.open();
            string sql = "insert into asignacioncursosmastros(codigo_carrera,codigo_sede,codigo_jornada,codigo_seccion,codigo_aula,codigo_curso,codigo_maestro)";
            sql += "VALUES ('" + codigo_carrera + "', '" + codigo_sede + "', '" + codigo_jornada + "', '" + codigo_seccion + "', '" + codigo_aula + "', '" + codigo_curso + "', '" + codigo_maestro + "')";
            try
            {
                OdbcCommand cmd = new OdbcCommand(sql, this.conn.point);
                cmd.ExecuteNonQuery();
                this.conn.close();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return false;
        }

        public DataTable ObtenerAsignaciones()
        {
            this.conn.open();
            string sql = "SELECT * FROM asignacioncursosmastros";
            OdbcCommand cmd = new OdbcCommand(sql, this.conn.point);
            DataTable dt = new DataTable();
            OdbcDataAdapter adapter = new OdbcDataAdapter(cmd);
            adapter.Fill(dt);
            this.conn.close();
            return dt;
        }

        public bool MaestroExiste(string codigo)
        {
            this.conn.open();
            string sql = "select * from maestros where codigo_maestro='" + codigo + "'";
            OdbcCommand cmd = new OdbcCommand(sql, this.conn.point);
            OdbcDataReader reader = cmd.ExecuteReader();
            bool exist = reader.Read();
            this.conn.close();
            return exist;
        }

    }
}
