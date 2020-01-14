using Iwaschenko_Palace.Entities;
using Iwaschenko_Palace.Windows;
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
    /// Interaction logic for UserPage.xaml
    /// </summary>
    public partial class UserPage : Page
    {
        public UserPage()
        {
            InitializeComponent();
            //var educations = AppData.Context.Education.ToList();
            //educations.Insert(0, new Entities.User.Education
            //{
            //    Tittle = "Все образования"
            //});
            //ComboEducation.ItemsSource = educations;
            //ComboEducation.SelectedIndex = 0;
            UpdateUser();
        }

        private void ComboEducation_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateUser();
        }
        private void UpdateUser()
        {
            //var currentUser = AppData.Context.Users.ToList();
            //if (ComboEducation.SelectedIndex > 0)
            //{
            //    currentUser = currentUser.Where(p => p.Education == ComboEducation.SelectedItem as Entities.Education).ToList();
            //}
            //currentUser = currentUser.Where(p => p.Surname.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.Name.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.Patronymic.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.Phone.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.Education.Tittle.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();

            //DGridUser.ItemsSource = currentUser;
        }
        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateUser();
        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {
            AddUser addUser = new AddUser();
            addUser.ShowDialog();
            UpdateUser();
        }

        private void ButtonEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ButtonDel_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
