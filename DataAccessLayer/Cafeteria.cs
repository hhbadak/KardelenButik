using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Cafeteria
    {
        public int productID { get; set; }
        public string productName { get; set; }
        public int categoryID { get; set; }
        public string category { get; set; }
        public int supplierID { get; set; }
        public string supplier { get; set; }
        public decimal purchasePrice { get; set; }
        public decimal salePrice { get; set; }
        public int stock { get; set; }
        public int reorderLevel { get; set; }
        public string image { get; set; }
        public bool status { get; set; }
        public string statusString { get; set; }
    }
}
