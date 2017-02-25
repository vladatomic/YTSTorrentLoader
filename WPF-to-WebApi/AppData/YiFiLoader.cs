using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WPF_to_WebApi.Models;

namespace WPF_to_WebApi.AppData
{
    public class YiFiLoader
    {
        private string uri = null;
        private int rate = 0;
        public YiFiLoader(string baseUri)
        {
            uri = baseUri;
        }
       
        public async Task<Data> SearchTermInMovies(HttpClient client,string searchTerm,string quality,string genre,string rating,string sortBy,int? page)
        {
            client.BaseAddress = new Uri(uri);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            if (!int.TryParse(rating,out rate))
            {
                rate = 0;
            }
            if (page == null)
            {
                page=1;
            }
            if (string.IsNullOrWhiteSpace(searchTerm))
            {
                searchTerm = "0";
            }
            if (quality=="All")
            {
                quality = "all";
            }
            string searchTerms = $"query_term={searchTerm}&quality={quality}&genre={genre.ToLower()}&minimum_rating={rate}&sort_by={sortBy.ToLower()}&page={page}&order_by=desc";
            try
            {
                HttpResponseMessage response = await client.GetAsync("/api/v2/list_movies.json?"+ searchTerms);
                response.EnsureSuccessStatusCode();
                var moviesDataFromApi = await response.Content.ReadAsAsync<RootObject>();
                var searchList = moviesDataFromApi.data;
                if (searchList.movie_count!=0)
                {
                    return searchList;
                }
                else
                {
                    MessageBox.Show("Movie base do not contain current search !!!","Error",MessageBoxButton.OK,MessageBoxImage.Error);
                    return new Data();
                }
               
            }
            catch (Exception exx)
            {
                MessageBox.Show(exx.Message);
                return null;
            }
        }

    }
}
