using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WPF_to_WebApi;

namespace WPF_to_WebApi.Models
{
    public class RootObject
    {
        public string status { get; set; }
        public string status_message { get; set; }
        public Data data { get; set; }

       
       
     }
}
