<%@ page import="java.util.Vector" %>

<%
	final class Book{
		public String title;
		public String author;
		public String publisher;
		public String synopsis;
		public String thumbnail;
		public String genres; // temporary
		public String sample;
		public String series;
		
		public Integer id;
		public Integer rating;
		public Integer volume;
		public Integer price;

		//public Vector<String> genres;

		public Book(Integer _id, String _title, Integer _volume, String _thumbnail){
			this.id = _id;
			this.title = _title;
			this.volume = _volume;
			this.thumbnail = _thumbnail;
		}

		public Book(Integer _id, String  _title, Integer _volume, String _thumbnail, String _author, Integer _rating, Integer _price, String _publisher, String _genres, String _synopsis, String _sample, String _series){
			this.id = _id;
			this.title = _title;
			this.volume = _volume;
			this.thumbnail = _thumbnail;
			this.author = _author;
			this.rating = _rating;
			this.price = _price;
			this.publisher = _publisher;
			this.genres =  _genres;
			this.synopsis = _synopsis;
			this.sample = _sample;
			this.series = _series;		
		}
	}
%>