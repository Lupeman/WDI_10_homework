$(document).ready(function(){

var showMovies= function(){
  var settings = {
    url: 'http://www.omdbapi.com/?s=' + $('#searchInput').val(),
    method: 'get',
    dataType: 'json'
  }

  $.ajax(settings).done(function(response){
    for(var x=0; x<response.Search.length; x++){
        var $movie = response.Search[x];
        var $name = $movie.Title;
        var $year = $movie.Year;
        var $poster = $movie.Poster;
        var $movieLink = $movie.imdbID;
        var $alinkElement = $('<a>').attr('href', 'http://www.imdb.com/title/' + $movieLink).attr('target', '_blank');
        var $linkName = '<a target="_blank" href=' + $alinkElement[0] + '>' + $name + '</a>';
        var $tdElement = $('<td>').append('<h2>' + $linkName + '</h2>' + $year +'<br>' + '<img src='+ $poster + '>' )
        $('#movieInfo').append($tdElement);
    };
  });



}





$('#showMovieBtn').on('click', showMovies)














})
