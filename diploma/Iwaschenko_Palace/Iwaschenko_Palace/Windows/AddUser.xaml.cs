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
using System.Windows.Shapes;

namespace Iwaschenko_Palace.Windows
{
    /// <summary>
    /// Interaction logic for AddUser.xaml
    /// </summary>
    public partial class AddUser : Window
    {
        List<User> ListServ = new List<User>();
        bool isUpdate = false;
        User _user = null;
        public AddUser()
        {
            InitializeComponent();
            UpdateUser();
        }
        private void UpdateUser()
        {
            ComboBoxRole.ItemsSource = AppData.Context.Roles.ToList();
            ComboBoxRole.SelectedIndex = 0;
            ComboBoxDepartment.ItemsSource = AppData.Context.Departments.ToList();
            ComboBoxDepartment.SelectedIndex = 0;
            ComboBoxMovemente.ItemsSource = AppData.Context.Movementes.ToList();
            ComboBoxMovemente.SelectedIndex = 0;
            ComboBoxPosition.ItemsSource = AppData.Context.Positions.ToList();
            ComboBoxPosition.SelectedIndex = 0;
            
        }
        public AddUser(User user)
        {
            InitializeComponent();
            ListServ = AppData.Context.Users.ToList();
            isUpdate = true;
            _user = user;
            try
            {
                TextBoxName.Text = _user.Name.ToString();
                TextBoxSurname.Text = _user.Surname.ToString();
                TextBoxPatronymic.Text = _user.Patronymic.ToString();
            }
            catch
            {
                Close();
            }
        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Добавить?", "Информация!", MessageBoxButton.YesNo, MessageBoxImage.Information) == MessageBoxResult.Yes)
            {
                StringBuilder error = new StringBuilder();
                if (string.IsNullOrWhiteSpace(TextBoxName.Text))
                    error.AppendLine("Имя - обязательное поле!");
                if (string.IsNullOrWhiteSpace(TextBoxSurname.Text))
                    error.AppendLine("Фамилия - обязательное поле!");
            }
            try
            {
                if (_user == null)
                {
                    var user = new User
                    {
                        Name = TextBoxName.Text,
                        Surname = TextBoxSurname.Text,
                        Patronymic = TextBoxPatronymic.Text,
                        Role = ComboBoxRole.SelectedItem as Role,
                        //Movemente = ComboBoxMovemente.SelectedItem as Movemente,

                    };
                    AppData.Context.Users.Add(user);
                    AppData.Context.SaveChanges();
                    AppData.Context.Workers.Add(new Worker()
                    {
                        User = user,
                        Position = ComboBoxPosition.SelectedItem as Position,
                        Department = ComboBoxDepartment.SelectedItem as Department
                    });
                    AppData.Context.SaveChanges();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Неверный формат!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void ButtonCanсel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

    }
}
