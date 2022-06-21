using Abc.MvcWebUI.Entity;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Abc.MvcWebUI.Identity
{
    public class IdentityInitializer : CreateDatabaseIfNotExists<IdentityDataContext>
    {
        protected override void Seed(IdentityDataContext context)
        {
            //Roller
            if (!context.Roles.Any(i=>i.Name=="admin"))
            {
                var store = new RoleStore<apolicationuser>(context);
                var manager = new RoleManager<apolicationuser>(store);
                var role = new apolicationuser() {Name="admin",Description="Yönetici Rolü" };
                manager.Create(role);
            }
            if (!context.Roles.Any(i => i.Name == "user"))
            {
                var store = new RoleStore<apolicationuser>(context);
                var manager = new RoleManager<apolicationuser>(store);
                var role = new apolicationuser() {Name="user",Description="Kullanıcı Rolü" };
                manager.Create(role);
            }
            //Userler
            if (!context.Users.Any(i => i.Name == "enestikici"))
            {
                var store = new UserStore<AplicationUser>(context);
                var manager = new UserManager<AplicationUser>(store);
                var user = new AplicationUser() {Name="Enes",Surname="Tikici",UserName="enestikici",Email="enes.tikici123@hotmail.com" };
                manager.Create(user,"1234567");
                manager.AddToRole(user.Id, "admin");
                manager.AddToRole(user.Id, "user");
            }
            if (!context.Users.Any(i => i.Name == "furkanaltay"))
            {
                var store = new UserStore<AplicationUser>(context);
                var manager = new UserManager<AplicationUser>(store);
                var user = new AplicationUser() { Name = "Furkan", Surname = "Altay", UserName = "furkanaltay", Email = "furkanaltay@gmail.com" };
                manager.Create(user, "1234567");
                manager.AddToRole(user.Id, "user");
            }

            base.Seed(context); 
        }
    }
}