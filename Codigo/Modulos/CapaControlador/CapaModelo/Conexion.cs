using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Odbc;

namespace CapaModelo
{
    public class Conexion
    {
        public OdbcConnection point;
        public Conexion()
        {
            this.point = new OdbcConnection("Dsn=HotelSConexion");
        }
        public void open()
        {
            if (this.point.State != System.Data.ConnectionState.Open)
                this.point.Open();
        }
        public void close()
        {
            this.point.Close();
        }
    }
}
