<%
    if(hasId) {
        _id = Integer.parseInt(request.getParameter("id"));
        String _author = "";
        Integer _rating = 0;
        Integer _price = 0;
        String _publisher = "";
        String _genres = "";
        String _synopsis = "";
        String _sample = "";
        String _series = "";
        Book book = null;
        query = "SELECT * FROM products WHERE product_id = " + _id;
        result = statement.executeQuery(query);
        if(result.next()){
            _title = result.getString(2);
            _volume = result.getInt(3);
            _thumbnail = result.getString(4);
            _author = result.getString(5);
            _rating = result.getInt(6);
            _price = result.getInt(7);
            _publisher = result.getString(8);
            _genres = result.getString(9);
            _synopsis = result.getString(10);
            _sample = result.getString(11);
            _series = result.getString(12);
            book = new Book(_id, _title, _volume, _thumbnail, _author, _rating, _price, _publisher, _genres, _synopsis, _sample, _series);
        }

        Vector<Book> series = new Vector<Book>();
        query = "SELECT * FROM products WHERE product_series = '"+_series+"' LIMIT "+0+","+5+"";
        result = statement.executeQuery(query);
        while(result.next()){
            _id = result.getInt(1);
            _title = result.getString(2);
            _volume = result.getInt(3);
            _thumbnail = result.getString(4);
            series.add(new Book(_id, _title, _volume, _thumbnail));
        }

        String backUrl = "";
        String seriesUrl = "";
        if(search_key != null){
            backUrl = seriesUrl = "./search_result.jsp?search_key="+search_key+"&search_category="+search_category+"&";
        }
        else{
            backUrl = seriesUrl = "./index.jsp?";
        }

    %>
    <div class="manga_detail_popup">
            <div class="detail_container">
                <div class="close_btn">
                    <a class='fas fa-times' href='<%= backUrl%>'></a>
                </div>
                <div class="manga_detail">
                    <div class="title_author_star">
                        <div class="title_wrapper">
                            <div class="cell_title">Title</div>
                            <div class="cell_value"><%= book.title +" - Volume "+ book.volume %></div>
                        </div>
                        <div class="author_wrapper">
                            <div class="cell_title">Author</div>
                            <div class="cell_value"><%= book.author %></div>
                        </div>
                        <span class="star_wrapper" value="<%= book.rating %>">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <!-- <span class="manga_rating">()</span> -->
                        </span>
                    </div>
                    <div class="price_wrapper">
                        <div class="cell_title">Price</div>
                        <div class="cell_value">Rp. <%= book.price %>,00 (tax included)</div>
                    </div>
                    <div class="publisher_genre">
                        <div class="publisher_wrapper">
                            <div class="cell_title">Publisher</div>
                            <div class="cell_value"><%= book.publisher%></div>
                        </div>
                        <div class="genre_wrapper">
                            <div class="cell_title">Genres</div>
                            <div class="cell_value"><%= book.genres %></div>
                        </div>
                    </div>
                    <div class="synopsis_wrapper">
                        <div class="cell_title">Synopsis</div>
                        <div class="cell_value">
                            <%= book.synopsis %>
                        </div>
                    </div>
                    <div class="button_wrapper">
                        <a class="button button_1" href="<%= book.sample%>" target="_blank">FREE SAMPLE</a>
                        <a class="button button_2" href="payment_confirmation.jsp?id=<%= book.id%>">BUY NOW</a>
                    </div>
                </div>
                <div class="manga_series item_list" id="list_series">
                    <div class="list_title">Series</div>
                    <div class="item_container col5_eq">
                        <% for(int i=0; i < series.size(); i++){ %>
                        <a class="item" href='<%= seriesUrl+"id="+ series.get(i).id %>'>
                            <div class="thumbnail" style="background-image:url(<%= series.get(i).thumbnail %>);"></div>
                            <div class="label">
                                <div class="item_label"><%= series.get(i).title.length() > 40? series.get(i).title.substring(0,40)+"..." : series.get(i).title %></div>
                                <div class="volume_label">Volume <%= series.get(i).volume %></div>
                            </div>
                        </a>
                        <%}%>
                        <span class="next"><i class="fas fa-chevron-right centerize"></i></span>
                        <span class="prev"><i class="fas fa-chevron-left centerize"></i></span>
                    </div>
                </div>
            </div>
            <div class="thumbnail_container" style="background-image:url(<%= book.thumbnail %>);"></div>
        </div>
    <% } %>