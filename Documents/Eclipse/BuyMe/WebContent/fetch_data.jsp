<%@ page import ="java.sql.*, java.util.*, java.io.*" %>

<%
	String action = request.getParameter("action");
	String minimum_price = request.getParameter("minimum_price");
	String maximum_price = request.getParameter("maximum_price");
	String itemId = request.getParameter("itemId");
	String price = request.getParameter("price");
	String color = request.getParameter("color");


	if (action != null){
		Class.forName("com.mysql.jdbc.Driver").newInstance();
    
    	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");

    	if(con == null){
	    	response.sendRedirect("index.html");
	    	System.out.println("Connection Error");
    	}

    	Statement st = con.createStatement();
	    ResultSet rs;
	    String query1 = "SELECT * FROM Electronics WHERE ";
	    String query2 = "SELECT COUNT(*) AS rowcount FROM Electronics ";

	    if (minimum_price != null && maximum_price != null){
	    	query1 += "AND price BETWEEN " + minimum_price + " AND " + maximum_price;
	    	query2 += "AND price BETWEEN " + minimum_price + " AND " + maximum_price;
		}

		if (itemId != null){
	    	query1 += "AND " + itemId;
	    	query2 += "AND " + itemId;
		}

		if (price != null){
	    	query1 += "AND " + price;
	    	query2 += "AND " + price;
		}

		if (color != null){
	    	query1 += "AND " + color;
	    	query2 += "AND " + color;
		}

        rs = st.executeQuery(query2);
        rs.next();
        int count = rs.getInt("rowcount");
        rs.close();
        String output = "";

        rs = st.executeQuery(query1);

        ArrayList<String> item_image = new ArrayList<String>(); 
        ArrayList<Integer> item_id = new ArrayList<Integer>(); 
        ArrayList<String> item_price = new ArrayList<String>(); 
        ArrayList<String> item_color = new ArrayList<String>(); 


        while (rs.next()){
            item_image.add(rs.getString("item_image"));
            item_id.add(rs.getInt("item_id"));
            item_price.add(rs.getString("price"));
            item_color.add(rs.getString("color"));
        }	

        if (count > 0) {
        	for (int i = 0; i < count; i++){
        		output += "<div class=\"col-sm-4 col-lg-3 col-md-3\"><div style=\"border:1px solid #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:450px;\"><img src=\"image/" + item_image.get(i) + "<p>Id : " + item_id.get(i) + " MP<br />Price : "+ item_price.get(i) +" <br />Color : " + item_color.get(i) + " <br />" + item_image.get(i) + "</p></div></div>";
        	}
    	} else {

    		output = "<h3>No Data Found</h3>";
    	}
        
        
		
        rs.close();
        con.close();
        st.close();
    	out.print(output);

	}


%>