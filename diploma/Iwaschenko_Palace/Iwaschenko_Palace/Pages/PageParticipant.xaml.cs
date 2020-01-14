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
using Iwaschenko_Palace.Entities;

namespace Iwaschenko_Palace.Pages
{
    /// <summary>
    /// Interaction logic for PageParticipant.xaml
    /// </summary>
    public partial class PageParticipant : Page
    {
        private Volunteer volunteer;

        public PageParticipant()
        {
        }

        public PageParticipant(Volunteer volunteer)
        {
            this.volunteer = volunteer;
        }
    }
}
