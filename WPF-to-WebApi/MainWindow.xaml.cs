using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
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
using WPF_to_WebApi.AppData;
using WPF_to_WebApi.SearchHelpers;

namespace WPF_to_WebApi
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 
    public partial class MainWindow : Window
    {
        private string apiUri = "https://yts.ag";
        private YiFiLoader yifi;
        private HttpClient client;
        public HelperForSearch searchHelper ;

        public MainWindow()
        {
            InitializeComponent();
            yifi = new YiFiLoader(apiUri);
       }

        public void InitAllComboBox()
        {
            searchHelper = new HelperForSearch();
            cBoxGenre.ItemsSource = searchHelper.Gender;
            cBoxOrderedBy.ItemsSource = searchHelper.OrderBy;
            cBoxQuality.ItemsSource = searchHelper.Quality;
            cBoxRating.ItemsSource = searchHelper.Rating;
            btnPrev.IsEnabled = false;
            Details.Visibility = Visibility.Hidden;
            Pageing.Visibility = Visibility.Hidden;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            InitAllComboBox();
            GetMoviesByRequest();
        }
        public async void GetMoviesByRequest(int? page=null)
        {
            string queryTerm = tBoxSearch.Text.TrimStart();
            string quality = cBoxQuality.SelectedItem as string;
            string genre = cBoxGenre.SelectedItem as string;
            string rating = cBoxRating.SelectedItem as string;
            string sortBy = cBoxOrderedBy.SelectedItem as string;

            client = new HttpClient();
            var searchedMoviesByTerm = await yifi.SearchTermInMovies(client, queryTerm, quality, genre, rating, sortBy, page);
            this.DataContext = null;
            this.DataContext = searchedMoviesByTerm.movies;

            int pagesCount = searchedMoviesByTerm.movie_count / 20;
            if (pagesCount % 20 != 0)
            {
                pagesCount++;
            }
            tBoxPagesCount.Text=pagesCount.ToString();
            
            Pageing.DataContext = searchedMoviesByTerm;
            Pageing.Visibility = Visibility.Visible;
            Details.Visibility = Visibility.Visible;
        }
        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            GetMoviesByRequest();
        }

        private void PageNav(object sender, RoutedEventArgs e)
        {
            int? currentPage = int.Parse(tBoxCurrentPageNumber.Text);
            int pagesCount = int.Parse(tBoxPagesCount.Text);
            var navButtonValue = (Button)sender;
            var pageNave = navButtonValue.Name;
            switch (pageNave)
            {
                case "btnNext":
                    currentPage ++;
                    btnPrev.IsEnabled = true;
                    break;
                case "btnPrev":
                    currentPage --;
                    btnNext.IsEnabled = true;
                    break;
                default:
                    break;
            }
            if (((pagesCount - currentPage) == 0) && pageNave == "btnNext")
            {
                btnNext.IsEnabled = false;
                btnPrev.IsEnabled = true;
            }
            if ((pagesCount - currentPage) == (pagesCount-1) && pageNave == "btnPrev")
            {
                btnNext.IsEnabled = true;
                btnPrev.IsEnabled = false;
            }
            GetMoviesByRequest(currentPage);
        }

        private void OnEnterPress(object sender, KeyEventArgs e)
        {
            if (e.Key==Key.Return)
            {
                GetMoviesByRequest();
            }
        }
    }
}
