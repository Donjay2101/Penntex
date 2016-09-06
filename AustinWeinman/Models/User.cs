using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace AustinWeinman.Models
{
    public class User
    {
        public int ID { get; set; }
        public string Username{ get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        [DisplayName("Active?")]
        public Boolean Status { get; set; }
    }
}