   M S B A M L   `   `   `  ����L  HIwaschenko_Palace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Iwaschenko_Palace.PagesIwaschenko_Palace.Pages  5      K*clr-namespace:Iwaschenko_Palace.PropertiesIwaschenko_Palace.Properties  5      &     Iwaschenko_Palace.Pages.UserPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:Iwaschenko_Palace.Pages     5      <props*clr-namespace:Iwaschenko_Palace.Properties     5        N� Title$  Пользователи��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $
��169* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��	DGridUser��5         AutoGenerateColumns .     CanUserAddRows .     
IsReadOnly . $��1��6$   $��5q�61      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Код��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *IdUser+6\     5      $ Фамилия��6%   $ * 66    6@   �� *	Surname+6^     5      $ Имя��6%   $ * 62    6<   �� *Name+6W     5      $ Отчество��6%   $ * 67    6A   �� *
Patronymic+6b     5      $ Телефон��6%   $ * 66    6@   �� *Phone+6\     5      $ Образование��6%   $ * 6:    6D   �� *Education.Tittle+6k   5       �� 5!   
   $��0��6   	 �� Orientation$	 
Horizontal=�6"   $��Center=�6;   $��Center=�5"      .+�5#      �� $	��125��6   $��5q�6$   $��Center=�6/   $��Образование:��6J   
 �� TextAlignment$
 Right=�6^   6v   �� 5$      -   5        $��ComboEducation��5$   b   $	��175��6   $��5q�6#    �� DisplayMemberPath$ Tittle��6x   6�   �� 5%      $	��125��6   $��5q�6$   $��Center=�6/   $��Поиск:��6J   $
 Right=�6X   6p   �� 5&      -   5        $��
TBoxSearch��5&      $	��175��6(   $��5q�64   6c   5'      �� 5(   
   -   5        $��Right=�5(      $��Center=�6-   $��2��6H   ���	#FFE31616$	��110��6l   $��0,13,291,10q�6�    J� RenderTransformOrigin$ 1.379,0.926&�6�   $��Добавить��6�   6�   �� 5)   
   -   5        $��	ButtonDel��5)   U   $��Right=�6   $��Center=�6-   $��2��6H   ���	#FFE31616$	��110��6}   $��
0,13,29,10q�6�   $��Удалить��6�   6�   �� 5*   
   -   5        $��
ButtonEdit��5*   U   $��Right=�6   $��Center=�6-   $��2��6H   ���	#FFE31616$	��110��6~   $��0,13,160,10q�6�   $��27��6�   $ ��Редактировать��6�   6�   5.      5/      