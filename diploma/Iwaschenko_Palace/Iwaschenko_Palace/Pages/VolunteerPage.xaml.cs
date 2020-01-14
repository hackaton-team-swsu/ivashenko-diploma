using Iwaschenko_Palace.Entities;
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
    /// Interaction logic for VolunteerPage.xaml
    /// </summary>
    public partial class VolunteerPage : Page
    {
        public VolunteerPage()
        {
            InitializeComponent();
            var currentVolunteer = AppData.Context.Movementes.ToList();
            currentVolunteer.Insert(0, new Entities.Movemente
            {
                Title = "Все движения"
            });
            ComboMovemente.ItemsSource = currentVolunteer;
            ComboMovemente.SelectedIndex = 0;
            UpdateVolunteer();
        }
        private void UpdateVolunteer()
        {
            //var currentVolunteer = AppData.Context.Volunteers.ToList();
            //if (ComboMovemente.SelectedIndex > 0)
            //{
            //    currentVolunteer = currentVolunteer.Where(p => p.User.Movemente == ComboMovemente.SelectedItem as Entities.Movemente).ToList();
            //}
            //currentVolunteer = currentVolunteer.Where(p => p.User.Surname.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.User.Name.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.User.Patronymic.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.User.Movemente.Title.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();

            //DGridVolunteer.ItemsSource = currentVolunteer;
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateVolunteer();
        }

        private void BtnParticipant_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageParticipant(DGridVolunteer.SelectedItem as Entities.Volunteer));
        }

        private void ComboMovemente_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateVolunteer();

        }
     
    }
}
