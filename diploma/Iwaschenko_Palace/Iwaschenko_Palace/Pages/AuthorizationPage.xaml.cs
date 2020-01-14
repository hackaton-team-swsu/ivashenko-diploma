using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
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
using System.Windows.Threading;

namespace Iwaschenko_Palace.Pages
{
    /// <summary>
    /// Interaction logic for AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
         public AuthorizationPage()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Обработка операци логина
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            var allUsers = AppData.Context.Users.ToList();

            try
            {
                if(String.IsNullOrEmpty(TBoxLogin.Text) || String.IsNullOrEmpty(PBoxPassword.Password))
                {
                    MessageBox.Show("Пароль введи э", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    TBoxLogin.Text = "";
                    PBoxPassword.Password = "";
                    return;
                }

                var tempUserLogin = allUsers
                    .Where(u => u.Login == TBoxLogin.Text).Select(u => u.Login)
                    .FirstOrDefault();

                if(string.IsNullOrEmpty(tempUserLogin))
                {
                    MessageBox.Show("Пользователя с таким логином не существует", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    TBoxLogin.Text = "";
                    PBoxPassword.Password = "";
                    return;
                }

                var tempUser = (from currUser in allUsers
                                join r in AppData.Context.Roles on currUser.IdRole equals r.IdRole 
                                where currUser.Login == tempUserLogin && currUser.Password == PBoxPassword.Password
                                select new { Id = currUser.IdUser, Login = currUser.Login, Password = currUser.Password, Role = currUser.Role.Tittle})
                            .FirstOrDefault();
                
                if(tempUser == null)
                {
                    MessageBox.Show("Неверный пароль", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    TBoxLogin.Text = "";
                    PBoxPassword.Password = "";
                    return;
                }

                AppData.LoggedUserId = tempUser.Id;

                switch (tempUser.Role)
                {
                    case "Админ":
                        AppData.MainFrame.Navigate(new Pages.AdminPages.AdminMenu());
                        break;
                    case "Сотрудник":
                        AppData.MainFrame.Navigate(new Pages.VolunteerCabinetPage());
                        break;
                    case "Волонтер":
                        AppData.MainFrame.Navigate(new Pages.WorkerCabinetPage());
                        break;
                    default:
                        MessageBox.Show("Пользователь не состоит в корректной роли, обратитесь к администратору", "Ошибка", MessageBoxButton.OKCancel, MessageBoxImage.Warning);
                        return;
                }
                
            }
            catch(Exception ex)
            {
                MessageBox.Show("Нет подключения к бд", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
