<%@ page import="java.util.Vector" %>

<%
	final class Book{
		public String title;
		public String author;
		public String publisher;
		public String synopsis;
		public String thumbnail;

		public Integer rating;
		public Integer rank;
		public Integer volume;

		public Double price;
		public Vector<String> genres;

		public Book(String _title, Integer _volume, String _thumbnail){
			this.title = _title;
			this.volume = _volume;
			this.thumbnail = _thumbnail;
		}

		public Book(String _title, String _author, Integer _rating, Integer _rank, Double _price, String _publisher, String[] _genres, String _synopsis, Integer _volume, String _thumbnail){
			this.title = _title;
			this.author = _author;
			this.rating = _rating;
			this.rank = _rank;
			this.price = _price;
			this.publisher = _publisher;

			this.genres = new Vector<String>();
			for(int i = 0; i < _genres.length; ++i){ this.genres.add(_genres[i]); }

			this.synopsis = _synopsis;
			this.volume = _volume;
			this.thumbnail = _thumbnail;
		}
	}
%>