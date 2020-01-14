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
    /// Interaction logic for AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }
        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (TBoxLogin.Text == "" || PBoxPassw.Password == "")
                {
                    MessageBox.Show("Заполните логин или пароль!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                else
                {
                    var currentUser = AppData.Context.Users.ToList().Where(p => p.Login == TBoxLogin.Text &&
                p.Password == PBoxPassw.Password).FirstOrDefault();

                    if (currentUser != null)
                    {
                        if (currentUser.Login == "ad")
                        {
                            //AppData.MainFrame.Navigate(new Pages.AdminPages.AdminMenu_Page());
                        }
                        else if (currentUser.Login == "lol")
                        {
                            //AppData.MainFrame.Navigate(new Pages.RunnerPages.UserPages_Page());
                        }
                        else
                        {
                            MessageBox.Show("Нет такого пользователя!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Нет такого пользователя!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch
            {
                MessageBox.Show("Отсутствует подключение!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
