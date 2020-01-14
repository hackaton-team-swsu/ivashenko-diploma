using Iwaschenko_Palace.Pages.AdminPages;
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

namespace Iwaschenko_Palace.Pages.AdminPages
{
    /// <summary>
    /// Interaction logic for AdminMenu.xaml
    /// </summary>
    public partial class AdminMenu : Page
    {
        public AdminMenu()
        {
            InitializeComponent();
        }
        private void Btn1_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new Pages.WorkerPage());
        }

        private void Btn2_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new Pages.VolunteerPage());
        }

        private void Btn3_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new Pages.UserPage());
        }
        private void Btn4_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new Pages.EducationPage());
        }

        
        private void Btn6_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new PageParticipant());
        }
        private void Btn7_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new MovementePage());
        }
        private void Btn8_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new Pages.EventPages());
        }

        private void Btn9_Click(object sender, RoutedEventArgs e)
        {
            AppData.MainFrame.Navigate(new Pages.AuthorizationPage());
        }

    }
}