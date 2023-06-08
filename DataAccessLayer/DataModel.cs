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
        #region LIST METHOD
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
        public List<Cafeteria> cafeteriaList()
        {
            List<Cafeteria> c = new List<Cafeteria>();
            try
            {
                cmd.CommandText = "SELECT * FROM productList";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Cafeteria model = new Cafeteria();
                    model.productID = reader.GetInt32(0);
                    model.productName = reader.GetString(1);
                    model.category = reader.GetString(2);
                    model.supplier = reader.GetString(3);
                    model.purchasePrice = reader.GetDecimal(4);
                    model.salePrice = reader.GetDecimal(5);
                    model.stock = reader.GetInt32(6);
                    model.reorderLevel = reader.GetInt32(7);
                    model.image = reader.GetString(8);
                    model.status = reader.GetBoolean(9);
                    model.statusString = reader.GetBoolean(9) ? "<label style='color:green'>Aktif</label>" : "<label style='color:Red'>Pasif</label>";
                    c.Add(model);
                }
                return c;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public List<Categories> categoriesList()
        {
            try
            {
                List<Categories> c = new List<Categories>();
                cmd.CommandText = "SELECT * FROM categoryList";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Categories model = new Categories();
                    model.categoryID = reader.GetInt32(0);
                    model.categoryName = reader.GetString(1);
                    model.status = reader.GetBoolean(2);
                    c.Add(model);
                }
                return c;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public List<CustomerDetails> customerDetailsList()
        {
            try
            {
                List<CustomerDetails> cs = new List<CustomerDetails>();
                cmd.CommandText = "SELECT * FROM customerDetailsList";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    CustomerDetails model = new CustomerDetails();
                    model.customerDetailsID = reader.GetInt32(0);
                    model.customer = reader.GetString(1);
                    model.product = reader.GetString(2);
                    model.quantity = reader.GetInt16(3);
                    model.theFeeCharged = reader.GetDecimal(4);
                    cs.Add(model);
                }
                return cs;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }

        }
        public List<Customers> customerList()
        {
            try
            {
                List<Customers> c = new List<Customers>();
                cmd.CommandText = "SELECT * FROM customerList";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Customers model = new Customers();
                    model.customerID = reader.GetInt32(0);
                    model.customerName = reader.GetString(1);
                    model.customerSurname = reader.GetString(2);
                    model.customerPhoneNumber = reader.GetString(3);
                    model.totalMoneyReceived = reader.GetDecimal(4);
                    model.status = reader.GetBoolean(5);
                    c.Add(model);
                }
                return c;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public List<Rooms> roomList()
        {
            List<Rooms> r = new List<Rooms>();
            try
            {
                cmd.CommandText = "SELECT * FROM roomList";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Rooms model = new Rooms();
                    model.roomID = reader.GetInt32(0);
                    model.numberOfBeds = reader.GetByte(1);
                    model.features = reader.GetString(2);
                    model.empty = reader.GetBoolean(3);
                    model.price = reader.GetDecimal(4);
                    model.roomNumber = reader.GetInt16(5);
                    r.Add(model);
                }
                return r;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        #endregion
    }
}
