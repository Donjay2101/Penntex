﻿using AustinWeinman.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace AustinWeinman.InfraStructure
{

    public class CustomRoleProvider : RoleProvider
    {
        private PennTexDbContext dataContext;

        

        protected PennTexDbContext DbContext
        {
            get { return dataContext ?? (dataContext = new PennTexDbContext()); }
        }

        

        public override bool IsUserInRole(string username, string roleName)
        {

            var user = DbContext.Users.SingleOrDefault(u => u.Username == username);
            if (user == null)
                return false;
            var roles = DbContext.UserRoles.Where(x => x.UserID == user.ID);
            var roleInfo = DbContext.Roles.Where(x => x.Name == roleName);

            return roles != null && roleInfo != null;

        }

        public override string[] GetRolesForUser(string username)
        {


            var user = DbContext.Users.Where(x => x.Username == username).FirstOrDefault();

            if (user == null)
            {
                return new string[] { };
            }
            else
            {
                var roles = DbContext.UserRoles.Where(x => x.UserID == user.ID).Select(x => x.RoleID).ToArray();
                var selectedrole = (from role in dataContext.Roles where roles.Contains(role.ID) select role);
                var roletoUser = selectedrole.Select(x => x.Name).ToArray();
                return roles == null ? new string[] { } : roletoUser;
            }
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {

            return DbContext.Roles.Select(r => r.Name).ToArray();

        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string ApplicationName { get; set; }
    }
}
    
