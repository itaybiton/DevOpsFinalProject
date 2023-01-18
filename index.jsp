<html>
    <body>
   <%! int clicks = 0; %>

<%
    String param = request.getParameter("integer");
    String reset = request.getParameter("reset");

    if (reset != null) {
        clicks = 0;
    } else {
        try
        {
            int i = Integer.parseInt(param);
            clicks += 1;
        } 
        catch (NumberFormatException e)
        {
        }
    }
%>
<p>Number of clicks untill now: <%= clicks %> </p>

<% if (clicks == 10) { %>
    <a href="http://www.ynet.co.il">www.ynet.co.il</a>
<% } %>

<% if (clicks == 15) { %>
    <a href="http://www.walla.co.il">www.walla.co.il</a>
<% } %>

<form action="">
    <input type="text" name="integer" value="1"/>
    <input type="submit" value="submit" />
</form>

<form action="" method="post">
    <input type="submit" value="reset" name="reset" />
</form>
    </body>
</html>
