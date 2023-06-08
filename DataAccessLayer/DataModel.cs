using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DataModel
    {
        SqlConnection con; SqlCommand cmd;
        public DataModel()
        {
            con = new SqlConnection(ConnectionStrings.ConStr);
            cmd = con.CreateCommand();
        }
        public List<Suppliers> supplierList()
        {
            List<Suppliers> s = new List<Suppliers>();
            try
            {
                cmd.CommandText = "SELECT * FROM supplierList";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Suppliers model = new Suppliers();
                    model.supplierID = reader.GetInt32(0);
                    model.supplierName = reader.GetString(1);
                    model.supplierPhoneNumber = reader.GetString(2);
                    model.companyName = reader.GetString(3);
                    model.companyAddress = reader.GetString(4);
                    model.companyPhoneNumber = reader.GetString(5);
                    model.status = reader.GetBoolean(6);
                    s.Add(model);
                }
                return s;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
    }
}
