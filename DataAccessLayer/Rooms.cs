using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Rooms
    {
        public int roomID { get; set; }
        public byte numberOfBeds { get; set; }
        public string features { get; set; }
        public bool empty { get; set; }
        public decimal price { get; set; }
        public Int16 roomNumber { get; set; }
    }
}
