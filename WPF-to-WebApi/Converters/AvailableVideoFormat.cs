using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using WPF_to_WebApi.Models;

namespace WPF_to_WebApi.Converters
{
    public class AvailableVideoFormat : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string availableVideoFormat = null;
            List <Torrent> torrents=new List<Torrent>();
            torrents = (List<Torrent>)value;
            foreach (var item in torrents)
            {
                availableVideoFormat += item.quality+" : " + Environment.NewLine + $"Seeds: {item.seeds} Peers: {item.peers}"+Environment.NewLine+ $"Size: {item.size}"+Environment.NewLine;
                availableVideoFormat += Environment.NewLine;
            }
            return availableVideoFormat;
            
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
