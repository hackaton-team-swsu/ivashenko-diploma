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
    /// Interaction logic for WorkerPage.xaml
    /// </summary>
    public partial class WorkerPage : Page
    {
        public WorkerPage()
        {
            InitializeComponent();
            var currentWorker = AppData.Context.Departments.ToList();
            currentWorker.Insert(0, new Entities.Department
            {
                Title = "Все отделы"
            });
            ComboDepartment.ItemsSource = currentWorker;
            ComboDepartment.SelectedIndex = 0;
            UpdateWorker();
        }
        private void UpdateWorker()
        {
            //var currentWorker = AppData.Context.Workers.ToList();
            //if (ComboDepartment.SelectedIndex > 0)
            //{
            //    currentWorker = currentWorker.Where(p => p.Department == ComboDepartment.SelectedItem as Entities.Department).ToList();
            //}
            //currentWorker = currentWorker.Where(p => p.User.Surname.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.User.Name.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.User.Patronymic.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.Position.Title.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.User.Movemente.Title.ToLower().Contains(TBoxSearch.Text.ToLower())
            //|| p.Department.Title.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();
             
            //DGridWorker.ItemsSource = currentWorker;
        }


        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateWorker();
        }

       private void ComboDepartment_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateWorker();
        }

       
    }
}
