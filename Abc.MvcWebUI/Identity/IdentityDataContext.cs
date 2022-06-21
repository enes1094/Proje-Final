using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Abc.MvcWebUI.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Abc.MvcWebUI.Identity
{
    public class IdentityDataContext:IdentityDbContext<AplicationUser>
    {
        public IdentityDataContext() : base("dataConnection")
        {
           
        }
    }
}