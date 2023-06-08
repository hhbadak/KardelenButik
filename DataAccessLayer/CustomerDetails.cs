using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class CustomerDetails
    {
        public int customerDetailsID { get; set; }
        public int customerID { get; set; }
        public string customer { get; set; }
        public int productID { get; set; }
        public string product { get; set; }
        public Int16 quantity { get; set; }
        public decimal theFeeCharged { get; set; }
    }
}
