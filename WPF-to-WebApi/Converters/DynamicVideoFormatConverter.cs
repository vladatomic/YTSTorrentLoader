using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using WPF_to_WebApi.Models;


namespace WPF_to_WebApi.Converters
{
    public class DynamicVideoFormatConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            List<Button> btn = new List<Button>();
            List<Torrent> torrents = new List<Torrent>();
            torrents = (List<Torrent>)value;
            foreach (var item in torrents)
            {
                Button dynamBtn = new Button() { Name = "format" + item.quality, Content = item.quality, Width = 80,Height=25, FontWeight =FontWeights.Bold,FontSize=14,Margin=new Thickness(0,0,10,0) };
                dynamBtn.Click +=(s,e)=> { Process.Start(item.url); };
                btn.Add(dynamBtn);
            }
            return btn;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}