   M S B A M L   `   `   `  ���� L  HYTS_TorrentLoader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WPF_to_WebApiWPF_to_WebApi  ;"clr-namespace:WPF_to_WebApi.ModelsWPF_to_WebApi.Models  C&clr-namespace:WPF_to_WebApi.ConvertersWPF_to_WebApi.Converters      WPF_to_WebApi.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:WPF_to_WebApi     4model"clr-namespace:WPF_to_WebApi.Models     <	converter&clr-namespace:WPF_to_WebApi.Converters     U QMaterialDesignThemes.Wpf, Version=2.2.1.750, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -      MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � Title$ YTS Torrent Loader��$	��756��$
��1310�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � 	Resources    WPF_to_WebApi.Models.Data  	MovieData.   (WPF_to_WebApi.Converters.GenresConverter  ConvertGenres3   -WPF_to_WebApi.Converters.AvailableVideoFormat  VideoFormat:   4WPF_to_WebApi.Converters.DynamicVideoFormatConverter  dynamicButtons��%<   &	       &	      &	 
     &	              .��� .+��� -    ��Name$ lViewForMovies��$��	10,10,0,0q�$��Disabled=�$��Visible=�$��Stretch=����	#FF1D1D1D$ �� IsSynchronizedWithCurrentItem$
 TrueY�$	��630��$	��Top=�$
��Left=�$	��850������ ���� .R��  � Orientation$ 
Horizontal=����� .R��� $��10,10,10,10q�$	��175��.+��� $��5q����#FFF	 �� CornerRadius$	 5��._��� $��
CoverImage������ *medium_cover_image+�� 
 ��Name$
 	TitleName��$
��Wrap=�$��60��$��15(�$
��Bold"�$
��Left=�$��Center=�$��Arimo)����#FFF���� *
title_long+�� -    ��Name$ label��$��Search term: ��$
��Left=�$��
888,17,0,0q�$	��Top=�$��16(�$��Arial Black)��� -    ��Name$ 
tBoxSearch��$��40��$��
888,45,0,0q� �� TextWrapping$
 Wrap=�$�� ��$	��Top=�$��20(�$��Verdana)�$
��Bold"�$��Center=�$
��Left=�$	��277���� -    ��Name$ 	btnSearch��$��Search��$��1195,45,0,0q�$	��Top=�$��Verdana)�$��14(�$
��Bold"�$��40��$
��Left=�$��84���� -   $ label1��$��Quality:��$
��Left=�$��
905,93,0,0q�$	��Top=�$��Calibri)�$
��Bold"��� -   $ label2��$��Genre:��$
��Left=�$��1015,93,0,0q�$	��Top=�$��Calibri)�$
��Bold"��� -   $ label3��$��Rating :��$
��Left=�$��1090,93,0,0q�$	��Top=�$��Calibri)�$
��Bold"��� -	   $ label4��$��Ordered By:��$
��Left=�$��1204,93,0,0q�$	��Top=�$��Calibri)�$
��Bold"��� -
    ��Name$ cBoxQuality��$��905,140,0,0q�$	��Top=� �� SelectedIndex$ 0��$
��Left=�$��53��$��Center=�$��Stretch=��� -   $ 	cBoxGenre��$��982,140,0,0q�$	��Top=�$ 0��$
��Left=�$��79��$��Center=�$��Stretch=��� -   $ 
cBoxRating��$��1081,140,0,0q�$	��Top=�$ 0��$
��Left=�$��60�� J� RenderTransformOrigin$ -0.233,1&�$��Center=�$��Stretch=��� -   $ cBoxOrderedBy��$��1166,140,0,0q�$	��Top=�$ 0��$
��Left=�$	��113��$��Stretch=�$��Center=��� -   $��Pageing�� �� Orientation$ 
Horizontal=�$��194,676,0,0q�$
��Left=�$	��482��$��42��$	��Top=� � DataContext �� .+��� -   $ btnPrev��$
��Prev��$��80��$
��Bold"�$��Verdana)�$��14(��� -   $ tBoxCurrentPageNumber��$
 Wrap=�$��80�� �� 
IsReadOnly . $��18(�$
��Bold"�$��Verdana)�$��Center=�$��Center=�$��5,0,0,0q����� *page_number+�� -   $ btnNext��$
��Next��$��80��$��5,0,0,0q�$
��Bold"�$��14(�$��Verdana)��� -   $ tBoxPagesCount��$
 Wrap=�$�� ��$��80�� . $��18(�$
��Bold"�$��Verdana)�$��Center=�$��Center=�$��15,0,0,0q��� -   $ tBoxMoviesCount��$
 Wrap=�$��80�� . $��18(�$
��Bold"�$��Verdana)�$��Center=�$��Center=�$��30,0,0,0q����� *movie_count+�� -   $ label5��$��Page No.��$
��Left=�$��284,645,0,0q�$	��Top=�$ -0.276,0.449&�$��Verdana)�$��14(��� -   $ label6��$��Pages��$
��Left=�$��476,645,0,0q�$	��Top=�$��14(�$��Verdana)��� -   $ label7��$��Movies��$
��Left=�$��582,645,0,0q�$	��Top=�$��Verdana)�$��14(�� -   $��Details��$��865,181,10,10q� �� .+��� $��1q�$	 5��$
��Left=�$	��227��$	��Top=�$	��198��._��� -    ��Name$ DetailImage��$��-1,0,0,0q����� *medium_cover_image+�� $
��Left=�$	��243��$��
225,10,0,0q�$	��Top=�$	��182��.+��� -   $ tBTitle��$
��auto��$
 Wrap=� . $��Verdana)�$��20(�$
��Bold"�$��0,0,0,10q�$
��Left=�$��Stretch=����� *title+��Z� �� -   $ tBYear��$
��auto��$
 Wrap=� . $��Verdana)�$��16(�$
��Bold"�$��0,0,0,10q����� *year+��Z� �� -   $ tBGenres��$
��auto��$
 Wrap=� . $��Verdana)�$��18(�$
��Bold"�$��0,0,0,10q����� *genres+ �� 	Converter# [ ��Z� �� $ 
Horizontal=�.+��� -   $ label8��$��IMDB Rating :��$��verdana)�$
��Bold"��� -   $ 
tBImdbRate��$
��auto��$
 Wrap=� . $��Verdana)�$��14(�$
��Bold"�$	��118������ *rating+��Z� �� $��
13,258,0,0q�$	��Top=�$��81��$	��397��$
��Auto=�$
��Left=�.���� -   $
 tBDescription��$
��Left=�$
��Wrap=����� *description_full+�� $
��Left=�$	��192��$��114,360,0,-6q�$	��Top=�$	��293��.+��� $
��auto������ *
torrents+# [ ���� .R�� $ 
Horizontal=��� -   $ textBox2��$
��auto��$
 Wrap=� . $��Verdana)�$
��Bold"�$��10(�$
��Left=�$��Center=�$
��Left=�$��Center=�$��0q����� *
torrents+# [ �� -    $ lbAvaiolable��$��Available in:��$
��Left=�$��	0,352,0,0q�$	��Top=�$��94��$��Verdana)�$
��Bold"��� -!   $ label9��$��	Synopsis:��$
��Left=�$��
10,232,0,0q�$	��Top=�$��21��$��94��$��0q�$
��Bold"�$��Verdana)�$��16(�$��Center=�