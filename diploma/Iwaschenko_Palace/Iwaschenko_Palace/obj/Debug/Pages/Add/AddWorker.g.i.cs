﻿#pragma checksum "..\..\..\..\Pages\Add\AddWorker.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "216152706F7B9C40BB96106D4D8BCBA83ADC0CE4"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Iwaschenko_Palace.Pages.Add;
using Iwaschenko_Palace.Properties;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Iwaschenko_Palace.Pages.Add {
    
    
    /// <summary>
    /// AddWorker
    /// </summary>
    public partial class AddWorker : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 20 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBoxSurname;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBoxName;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBoxPatronymic;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboBoxRole;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboBoxMovemente;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboBoxDepartment;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboBoxPosition;
        
        #line default
        #line hidden
        
        
        #line 83 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonAdd;
        
        #line default
        #line hidden
        
        
        #line 84 "..\..\..\..\Pages\Add\AddWorker.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonCanсel;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Iwaschenko_Palace;component/pages/add/addworker.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Pages\Add\AddWorker.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.TextBoxSurname = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.TextBoxName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.TextBoxPatronymic = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.ComboBoxRole = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.ComboBoxMovemente = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 6:
            this.ComboBoxDepartment = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 7:
            this.ComboBoxPosition = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 8:
            this.ButtonAdd = ((System.Windows.Controls.Button)(target));
            
            #line 83 "..\..\..\..\Pages\Add\AddWorker.xaml"
            this.ButtonAdd.Click += new System.Windows.RoutedEventHandler(this.ButtonAdd_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.ButtonCanсel = ((System.Windows.Controls.Button)(target));
            
            #line 84 "..\..\..\..\Pages\Add\AddWorker.xaml"
            this.ButtonCanсel.Click += new System.Windows.RoutedEventHandler(this.ButtonCanсel_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

