using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webSIte.TrackServiceReference;
using webSIte.UserServiceReference;

namespace webSIte
{
    public partial class Register : System.Web.UI.Page
    {
        private UserFunctionalityClient userService = new UserFunctionalityClient();
        private SongsFunctionalityClient trackClient = new SongsFunctionalityClient();


        protected void Page_Load(object sender, EventArgs e)
        {
            //Page loads 
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            if (password.Value.Equals(passwConfirm.Value))
            {
                //insert new user 

                UserClass u = new UserClass()
                {
                    UserName = fName.Value,
                    UserLastName = lName.Value,
                    UserEmailAddress = emaill.Value,
                    Password = password.Value,
                    userType = "BasicCustomer",
                    ContactNumber = contact.Value
                    
                };

                bool registered = userService.registerNewUser(u);

                if (registered)
                {
                    UserClass newuser = userService.getUserByEmailNPass(emaill.Value, password.Value);
                    Session["Login"] = newuser.Id;
                    Session["UserType"] = newuser.userType;
                    
                }
                else
                {

                }
            }
            else
            {

            }
            //
        }
    }
}