using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Suppliers
    {
        public int supplierID { get; set; }
        public string supplierName { get; set; }
        public string supplierPhoneNumber { get; set; }
        public string companyName { get; set; }
        public string companyAddress { get; set; }
        public string companyPhoneNumber { get; set; }
        public bool status { get; set; }
    }
}
