using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Abc.MvcWebUI.Identity
{
    public class apolicationuser:IdentityRole
    {
        public string Description { get; set; }
        public apolicationuser()
        {

        }
        public apolicationuser(string rolname,string description)
        {
            this.Description = description;
        }
    }
}