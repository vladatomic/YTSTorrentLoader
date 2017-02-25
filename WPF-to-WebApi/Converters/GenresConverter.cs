using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace WPF_to_WebApi.Converters
{
    public class GenresConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string genres=null;
            List<string> genresArray = new List<string>();
            genresArray =(List<string>) value;
            foreach (string item in genresArray)
            {
                genres += item + "/";
            }
            return genres.TrimEnd('/');

        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
