<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*, java.util.*, java.io.*" %>

<!DOCTYPE html>
<html lang="en">

<head>

</head>

<body>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <br />
            <h2 align="center">Advance Ajax Product Filters in JAVA</h2>
            <br />
            <div class="col-md-3">                              
                <div class="list-group">
                    <h3>Price</h3>
                    <input type="hidden" id="hidden_minimum_price" value="0" />
                    <input type="hidden" id="hidden_maximum_price" value="65000" />
                    <p id="price_show">1000 - 65000</p>
                    <div id="price_range"></div>
                </div> 

                <div class="list-group">
                    <h3>itemId</h3>
                    <div style="height: 180px; overflow-y: auto; overflow-x: hidden;">
                    
                    <%
                    ArrayList<Integer> itemId = new ArrayList<Integer>(); 
                    int size1 = 0;

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
    
                    Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");

                    Statement st = con.createStatement();
                    ResultSet rs;
                    rs = st.executeQuery("select DISTINCT(item_id) from Electronics");
                    while (rs.next()){
                        itemId.add(rs.getInt("item_id"));
                        size1++;
                    }


                    for (int i = 0; i < size1; i++){
                    %>
                    <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector brand" value="<% out.println(itemId.get(i)); %>" > <% out.println(itemId.get(i)); %></label>
                    </div>
                    <%}
                    %>
                    </div>
                </div>

                <div class="list-group">
                    <h3>itemColor</h3>
                    <div style="height: 180px; overflow-y: auto; overflow-x: hidden;">
                    
                    <%
                    ArrayList<String> itemColor = new ArrayList<String>(); //
                    int size2 = 0;

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
    
                    rs = st.executeQuery("select DISTINCT(color) from Electronics");//
                    while (rs.next()){
                        itemColor.add(rs.getString("color"));//
                        size2++;
                    }


                    for (int i = 0; i < size2; i++){
                    %>
                    <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector brand" value="<% out.println(itemColor.get(i)); %>"  > <% out.println(itemColor.get(i)); %></label>
                    </div>
                    <%}
                    %>
                    </div>
                </div>
                
                <div class="list-group">
                    <h3>itemPrice</h3>
                    <div style="height: 180px; overflow-y: auto; overflow-x: hidden;">
                    
                    <%
                    ArrayList<String> itemPrice = new ArrayList<String>(); //
                    int size3 = 0;
                
                    rs = st.executeQuery("select DISTINCT(price) from Electronics");//
                    while (rs.next()){
                        itemPrice.add(rs.getString("price"));//
                        size3++;
                    }


                    for (int i = 0; i < size3; i++){
                    %>
                    <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector brand" value="<% out.println(itemPrice.get(i)); %>"  > <% out.println(itemPrice.get(i)); %></label>
                    </div>
                    <%
                    }
                    rs.close();
                    con.close();
                    st.close();
                    %>
                    </div>
                </div>

            </div>

            <div class="col-md-9">
                <br />
                <div class="row filter_data">

                </div>
            </div>
        </div>

    </div>


</body>

</html>
