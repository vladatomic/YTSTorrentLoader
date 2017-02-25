using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPF_to_WebApi.SearchHelpers
{
    public class HelperForSearch
    {
        public List<string> Quality { get; set; }
        public List<string> Gender { get; set; }
        public List<string> Rating { get; set; }
        public List<string> OrderBy { get; set; }

        public HelperForSearch()
        {
            Quality =new List<string>(){"All","720p","1080p","3D" };
            Gender = new List<string>() {"All","Action", "Adventure", "Animation", "Biography","Comedy", "Crime",
                "Documentary", "Drama", "Family", "Fantasy","Film-Noir","Game-Show","History","Horror","Music","Musical",
                "Mystery","News","Reality-TV","Romance","Sci-Fi","Sport","Talk-Show","Thriller","War","Western"};
            Rating = new List<string>(){"All", "9","8","7","6","5","4","3","2","1" };
            OrderBy = new List< string >(){ "Latest","Oldest", "Seeds", "Peers", "Year", "Rating", "Likes", "Alphabetical", "Downloads" };
        }
    }
}
