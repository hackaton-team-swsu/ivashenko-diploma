using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Iwaschenko_Palace.Pages
{
    /// <summary>
    /// Interaction logic for VolunteerCabinetPage.xaml
    /// </summary>
    public partial class VolunteerCabinetPage : Page
    {
        public VolunteerCabinetPage()
        {
            InitializeComponent();
            var volunteers = AppData.Context.Volunteers;

            var targetVolunteer = (from volunteer in volunteers
                                   join u in AppData.Context.Users on volunteer.IdUsers equals u.IdUser
                                   join m in AppData.Context.Movementes on volunteer.IdMovement equals m.IdMovemente
                                   where u.IdUser == AppData.LoggedUserId
                                   select new { Name = u.Name, Email = u.Email, Movement = m.Title})
                                   .SingleOrDefault();
            if(targetVolunteer == null)
            {
                MessageBox.Show($"Ошибка подключения к бд");
            }

            Title = "Личный кабинет волонтёра";

            VolunteerName.Text = targetVolunteer.Name;
            VolunteerEmail.Text = targetVolunteer.Email;
            VolunteerMovement.Text = targetVolunteer.Movement;
        }
    }
}
