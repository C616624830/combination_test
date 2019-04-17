<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*, java.util.*, java.io.*" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Product filter in java</title>

    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href = "css/jquery-ui.css" rel = "stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
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
                        <label><input type="checkbox" class="common_selector brand" value="<% out.println(itemId.get(i)); %>"  > <% out.println(itemId.get(i)); %></label>
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
                    <%}
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
<style>
#loading
{
    text-align:center; 
    background: url('loader.gif') no-repeat center; 
    height: 150px;
}
</style>

<script>
$(document).ready(function(){

    filter_data();

    function filter_data()
    {
        $('.filter_data').html('<div id="loading" style="" ></div>');
        var action = 'fetch_data';
        var minimum_price = $('#hidden_minimum_price').val();
        var maximum_price = $('#hidden_maximum_price').val();
        var brand = get_filter('brand');
        var ram = get_filter('ram');
        var storage = get_filter('storage');
        $.ajax({
            url:"fetch_data.jsp",
            method:"POST",
            data:{action:action, minimum_price:minimum_price, maximum_price:maximum_price, brand:brand, ram:ram, storage:storage},
            success:function(data){
                $('.filter_data').html(data);
            }
        });
    }

    function get_filter(class_name)
    {
        var filter = [];
        $('.'+class_name+':checked').each(function(){
            filter.push($(this).val());
        });
        return filter;
    }

    $('.common_selector').click(function(){
        filter_data();
    });

    $('#price_range').slider({
        range:true,
        min:1000,
        max:65000,
        values:[1000, 65000],
        step:500,
        stop:function(event, ui)
        {
            $('#price_show').html(ui.values[0] + ' - ' + ui.values[1]);
            $('#hidden_minimum_price').val(ui.values[0]);
            $('#hidden_maximum_price').val(ui.values[1]);
            filter_data();
        }
    });

});
</script>

</body>

</html>
