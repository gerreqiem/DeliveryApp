   M S B A M L   `   `   `  ����  C3    C3.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Доставка��5   	   $	��700��6   $
��1000��6'   .��5      � $��10q�6    � ColumnDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6   .+�5
   
   �� $��0��6   $��5q�6%   $	��Top=�60   .+�5      �� -   5         ��Name$ orderSetComboBox��5      $	��250��61   $��0 0 0 10q�6=    �� SelectedIndex$ 0��6O   .@�5      �� $��В центре��6   �� 5      $$��Дальше от центра��6   �� 5      $��Один район��6   �� 5      $*��$Разные части города��6   �� 5      $%��Разный приоритет��6   �� 5      $��Много заказов��6   5      �� 5      -   5        $��btnGetOrders��5      $#��Получить заказы��6)   $��30��6C   $��0 0 0 10q�6O   6a   �� 5      -   5        $��btnAddOrder��5      $!��Добавить заказ��6(   $��30��6A   $��0 0 0 10q�6M   6_   &   System.Windows.Controls.DataGrid  5      -   5        $��
ordersGrid��5      $	��400��6)      AutoGenerateColumns$ False��66      
IsReadOnly$ False��6R   $��0 0 0 10q�6e      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 60 6L   	   
IsReadOnly$
	 True��6W   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 65   �� *ID+6W     5      $ Priority��6)   $ 80 6X   
 6;   �� *
Priority+6X     5      $ X��6)   $ 80 6V   $
	 True��6a   
 64   �� *Destination.X+6a     5      $ Y��6)   $ 80 6V   $
	 True��6a   
 64   �� *Destination.Y+6a   5      �� 5      $��Маршрут:��6   $
��Bold"�6(   �� 5      -   5        $��routeTextBox��5      $��60��6*    �� TextWrapping$
 Wrap=�66    �� 
IsReadOnly$
 True��6J   " �� VerticalScrollBarVisibility$
 Auto=�6\   �� 5      $*��$Стоимость маршрута:��6   $
��Bold"�63   $��0 10 0 0q�6E   �� 5       -   5        $��routeCostTextBox��5       $��30��6.   $
 True��6:   5!      �� 5"   
   -   5        $��graphCanvas��5"      $
��Auto��6$   $
��Auto��61   $��1��6?   
�������6f   5#      5$      