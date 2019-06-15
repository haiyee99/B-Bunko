<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
	final class Trans{
		public String trans_status;
		public String invoice;
		public String title;
		public String purchase_date;
		public String thumbnail;
		public String payment_type;
		public String address;

		public Integer trans_id;
		public Integer volume;
		public Integer price;
		public Integer total_amount;
		public Integer qty;

		public Trans(Integer _trans_id, String _trans_status, String _invoice, String _title, Integer _volume, Integer _total_amount, Date _purchase_date){
			this.trans_id = _trans_id;
			this.trans_status =_trans_status;
			this.invoice =_invoice;
			this.title =_title;
			this.volume =_volume;
			this.total_amount =_total_amount;
			SimpleDateFormat sdf = new SimpleDateFormat("dd MMM yyyy");
			this.purchase_date =sdf.format(_purchase_date);
		}

		public Trans(Integer _trans_id, String _title, Integer _volume, String _thumbnail, Integer _price, Integer _total_amount, Integer _qty, String _payment_type, String _address){
			this.trans_id = _trans_id;
			this.title = _title;
			this.volume = _volume;
			this.thumbnail = _thumbnail;
			this.price = _price;
			this.total_amount = _total_amount;
			this.qty = _qty;
			this.payment_type = _payment_type;
			this.address = _address;
		}
	}
%>