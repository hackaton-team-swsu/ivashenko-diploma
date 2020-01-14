using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using Iwaschenko_Palace.Entities;

namespace Iwaschenko_Palace
{
    class AppData
    {
        public static Frame MainFrame;

        public static Entities.Iwaschenko_PalaceEntities1 Context = new Iwaschenko_PalaceEntities1();

        public static int LoggedUserId = -1;
    }
}
