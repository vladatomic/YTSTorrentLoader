   M S B A M L   `   `   `  ����L  HYTS_TorrentLoader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WPF_to_WebApiWPF_to_WebApi  5   	   ;"clr-namespace:WPF_to_WebApi.ModelsWPF_to_WebApi.Models  5   	   C&clr-namespace:WPF_to_WebApi.ConvertersWPF_to_WebApi.Converters  5   	       WPF_to_WebApi.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:WPF_to_WebApi     5   	   4model"clr-namespace:WPF_to_WebApi.Models     5   	   <	converter&clr-namespace:WPF_to_WebApi.Converters     5   	   U QMaterialDesignThemes.Wpf, Version=2.2.1.750, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   -   5           MaterialDesignBody#���   5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � Title$ YTS Torrent Loader��5   	   $	��756��6$   $
��1310��61    � WindowStartupLocation$ CenterScreen=�6U    � 
ResizeMode$ NoResize=�6z    � 	Resources 5         WPF_to_WebApi.Models.Data  	MovieData.   (WPF_to_WebApi.Converters.GenresConverter  ConvertGenres3   -WPF_to_WebApi.Converters.AvailableVideoFormat  VideoFormat:   4WPF_to_WebApi.Converters.DynamicVideoFormatConverter  dynamicButtons��%t   &	       &	      &	 &     &	 9       5   
   6     5   
   6$     5   
   6)     5   
   60   5      .��5      � .+�5   
   �� -   5         ��Name$ lViewForMovies��5      $��	10,10,0,0q�5      $��Disabled=�5      $��Visible=�5      $��Stretch=�5      ���	#FF1D1D1D$ �� IsSynchronizedWithCurrentItem$
 TrueY�5!      $	��630��68   $	��Top=�6E   $
��Left=�6]   $	��850��6x   ��5   &   �� ��5#      �� 5$      .R�5%      �  � Orientation$ 
Horizontal=�6    5&      ��5(      �� 5)      .R�5*      �� $��10,10,10,10q�6!   $	��175��66   .+�5+      �� $��5q�6!   ���#FFF	 �� CornerRadius$	 5��6H   ._�5,      �� $��
CoverImage��6$   ��66   �� *medium_cover_image+5-      �� 5.      
 ��Name$
 	TitleName��6$   $
��Wrap=�67   $��60��5/   $   $��15(�60   $
��Bold"�6>   $
��Left=�50   $   $��Center=�6?   $��Arimo)�6Z   ���#FFF��5.   K   �� *
title_long+50   m   51      52      54      �� 55   
   -   5         ��Name$ label��55      $��Search term: ��6   $
��Left=�67   $��
888,17,0,0q�6R   $	��Top=�6f   $��16(�6~   $��Arial Black)�6�   �� 56   
   -   5         ��Name$ 
tBoxSearch��56      $��40��6&   $��
888,45,0,0q�62    �� TextWrapping$
 Wrap=�6F   $�� ��6Z   $	��Top=�6b   $��20(�6z   $��Verdana)�6�   $
��Bold"�6�   $��Center=�6�   $
��Left=�6�   $	��277��6  �� 57   
   -   5         ��Name$ 	btnSearch��57      $��Search��6$   $��1195,45,0,0q�65   $	��Top=�6J   $��Verdana)�6b   $��14(�6w   $
��Bold"�6�   $��40��6�   $
��Left=�6�   $��84��6�   �� 58   
   -   5        $ label1��58      $��Quality:��6    $
��Left=�63   $��
905,93,0,0q�6N   $	��Top=�6b   $��Calibri)�6z   $
��Bold"�6�   �� 59   
   -   5        $ label2��59      $��Genre:��6    $
��Left=�61   $��1015,93,0,0q�6L   $	��Top=�6a   $��Calibri)�6y   $
��Bold"�6�   �� 5:   
   -   5        $ label3��5:      $��Rating :��6    $
��Left=�63   $��1090,93,0,0q�6N   $	��Top=�6c   $��Calibri)�6{   $
��Bold"�6�   �� 5;   
   -	   5        $ label4��5;      $��Ordered By:��6    $
��Left=�66   $��1204,93,0,0q�6Q   $	��Top=�6f   $��Calibri)�6~   $
��Bold"�6�   �� 5<   
   -
   5         ��Name$ cBoxQuality��5<      $��905,140,0,0q�6(   $	��Top=�6=    �� SelectedIndex$ 0��6U   $
��Left=�6g   $��53��6�   $��Center=�6�   $��Stretch=�6�   �� 5=   
   -   5        $ 	cBoxGenre��5=      $��982,140,0,0q�6&   $	��Top=�6;   $ 0��6S   $
��Left=�6e   $��79��6�   $��Center=�6�   $��Stretch=�6�   �� 5>   
   -   5        $ 
cBoxRating��5>      $��1081,140,0,0q�6'   $	��Top=�6=   $ 0��6U   $
��Left=�6g   $��60��6�    J� RenderTransformOrigin$ -0.233,1&�6�   $��Center=�6�   $��Stretch=�6�   �� 5?   
   -   5        $ cBoxOrderedBy��5?      $��1166,140,0,0q�6*   $	��Top=�6@   $ 0��6X   $
��Left=�6j   $	��113��6�   $��Stretch=�6�   $��Center=�6�   �� 5@   
   -   5        $��Pageing��5@       �� Orientation$ 
Horizontal=�6$   $��194,676,0,0q�6=   $
��Left=�6j   $	��482��6�   $��42��6�   $	��Top=�6�    � DataContext 6R   �� .+�5B      �� -   5        $ btnPrev��5B      $
��Prev��6&   $��80��65   $
��Bold"�6P   $��Verdana)�6b   $��14(�6w   �� 5C      -   5        $ tBoxCurrentPageNumber��5C      $
 Wrap=�67   $��80��6h    �� 
IsReadOnly . $��18(�6�   $
��Bold"�6�   $��Verdana)�6�   $��Center=�6�   $��Center=�6�   $��5,0,0,0q�6   ��6K   �� *page_number+6   �� 5D      -   5        $ btnNext��5D      $
��Next��6&   $��80��65   $��5,0,0,0q�6P   $
��Bold"�6a   $��14(�6s   $��Verdana)�6�   �� 5E      -   5        $ tBoxPagesCount��5E      $
 Wrap=�6.   $�� ��6B   $��80��6J    . $��18(�6g   $
��Bold"�6u   $��Verdana)�6�   $��Center=�6�   $��Center=�6�   $��15,0,0,0q�6�   �� 5F      -   5        $ tBoxMoviesCount��5F      $
 Wrap=�6/   $��80��6a    . $��18(�6~   $
��Bold"�6�   $��Verdana)�6�   $��Center=�6�   $��Center=�6�   $��30,0,0,0q�6�   ��6C   �� *movie_count+6�   5G      �� 5H   
   -   5        $ label5��5H      $��Page No.��6    $
��Left=�63   $��284,645,0,0q�6N   $	��Top=�6c   $ -0.276,0.449&�6{   $��Verdana)�6�   $��14(�6�   �� 5I   
   -   5        $ label6��5I      $��Pages��6    $
��Left=�60   $��476,645,0,0q�6K   $	��Top=�6`   $��14(�6x   $��Verdana)�6�   �� 5J   
   -   5        $ label7��5J      $��Movies��6    $
��Left=�61   $��582,645,0,0q�6L   $	��Top=�6a   $��Verdana)�6y   $��14(�6�   � 5L   
   -   5        $��Details��5L      $��865,181,10,10q�6    65   �� .+�5M      �� $��1q�6   $	 5��6*   $
��Left=�6;   $	��227��6V   $	��Top=�6c   $	��198��6{   ._�5N      �� -   5         ��Name$ DetailImage��5N      $��-1,0,0,0q�6U   ��6/   �� *medium_cover_image+6U   5O      �� 5P      $
��Left=�6   $	��243��64   $��
225,10,0,0q�6A   $	��Top=�6U   $	��182��6m   .+�5Q      �� -   5        $ tBTitle��5Q      $
��auto��6+   $
 Wrap=�69    . $��Verdana)�6v   $��20(�6�   $
��Bold"�6�   $��0,0,0,10q�6�   $
��Left=�6�   $��Stretch=�6�   ��6M   �� *title+��6�   Z� 6�   �� 5R      -   5        $ tBYear��5R      $
��auto��6*   $
 Wrap=�68    . $��Verdana)�6t   $��16(�6�   $
��Bold"�6�   $��0,0,0,10q�6�   ��6L   �� *year+��6�   Z� 6�   �� 5S      -   5        $ tBGenres��5S      $
��auto��6,   $
 Wrap=�6:    . $��Verdana)�6�   $��18(�6�   $
��Bold"�6�   $��0,0,0,10q�6�   ��6N   �� *genres+ �� 	Converter# [ ��6�   Z� 6�   �� 5U      $ 
Horizontal=�6   .+�5V      �� -   5        $ label8��5V      $��IMDB Rating :��6,   $��verdana)�6D   $
��Bold"�6Y   �� 5W      -   5        $ 
tBImdbRate��5W      $
��auto��62   $
 Wrap=�6@    . $��Verdana)�6~   $��14(�6�   $
��Bold"�6�   $	��118��6�   ��6f   �� *rating+��6�   Z� 5X      5Y      �� 5Z      $��
13,258,0,0q�6   $	��Top=�6/   $��81��6G   $	��397��6S   $
��Auto=�6_   $
��Left=�6�   .��5[      �� -   5        $
 tBDescription��5[      $
��Left=�63   $
��Wrap=�6O   ��6e   �� *description_full+5\      5]      �� 5^      $
��Left=�6   $	��192��64   $��114,360,0,-6q�6A   $	��Top=�6W   $	��293��6o   .+�5_      �� $
��auto��6j   ��6   �� *
torrents+# [ ��5`      �� 5a      .R�5b      � $ 
Horizontal=�6(   6C   5c      5e      �� 5f      -   5        $ textBox2��5f      $
��auto��6,   $
 Wrap=�6:    . $��Verdana)�6�   $
��Bold"�6�   $��10(�6�   $
��Left=�6�   $��Center=�6�   $
��Left=�6  $��Center=�6.  $��0q�6P  ��6N   �� *
torrents+# [ 6P  5g      �� 5h      -    5        $ lbAvaiolable��5h      $��Available in:��6*   $
��Left=�6B   $��	0,352,0,0q�6]   $	��Top=�6p   $��94��6�   $��Verdana)�6�   $
��Bold"�6�   �� 5i      -!   5        $ label9��5i      $��	Synopsis:��6$   $
��Left=�68   $��
10,232,0,0q�6S   $	��Top=�6g   $��21��6   $��94��6�   $��0q�6�   $
��Bold"�6�   $��Verdana)�6�   $��16(�6�   $��Center=�6�   5j      5k      5l      