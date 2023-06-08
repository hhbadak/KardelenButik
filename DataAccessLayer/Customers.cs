using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Customers
    {
        public int customerID { get; set; }
        public string customerName { get; set; }
        public string customerSurname { get; set; }
        public string customerPhoneNumber { get; set; }
        public decimal totalMoneyReceived { get; set; }
        public bool status { get; set; }
    }
}
