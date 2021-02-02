<%-- 
    Document   : index
    Created on : 2 лют. 2021 р., 14:01:13
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home proba1</title>
    </head>
    <body>
        <h1>JSP code</h1>

        <% out.print("word");


        %> </br>

        <%= "another word"%> </br>

        <%! String s = "54";%>


        <%= s%>


        <%! public String message() {
                return "This is method output";
            }%>


        <%= message()%>


        <% for (int i = 0; i < 10; i++) {%>

        <p> Some text. i= <%=i%> </p> 

        <%! int j = 0;%>
        <% j++;
            j = j + i;%>
        <p> j= <%= j%> </p>

        <%}%>



        <%@ page import="java.util.Date,org.obrii.mit.dp2021.mykolaichuk.mavenproject3.DemoData"%>
        <br />
        <%=new Date()%>
        <br />
        <% 		out.print(new DemoData(1, "Ivan", "Petrenko").toString());%>
        <br />


        <%
            out.println("Value 1: " + request.getParameter("param1"));
            out.println("Value 2: " + request.getParameter("param2"));
        %>

        <%-- 	response.sendRedirect("http://dp2021.mit.obrii.org");	--%>
        <%--	request.getRequestDispatcher("forward.jsp").forward(request,response);	--%>
        <form action="forward.jsp" method="post">
            <input type="hidden" name="title" value="Forwarded page"/>
            <input type="submit" value="Forward"/>               
        </form>
        
        </br></br>
            <form action="submit.jsp" method="post">

                <input type="hidden" name="title" value="Submited"/>

                Full name: <input type="text" name="name"/><br/>

                Gender: 
                <input type="radio" name="gender" value="male"> Male
                <input type="radio" name="gender" value="female"> Female <br/>

                Languages know: 
                <input type="checkbox" name="language" value="English"> English
                <input type="checkbox" name="language" value="Ukrainian"> Ukrainian
                <input type="checkbox" name="language" value="French"> French <br/>

                Country: 
                <select name="country">
                    <option value="Ukraine">Ukraine</option>
                    <option value="USA">USA</option>
                    <option value="UK">UK</option>
                    <option value="Finland">Finland</option>
                    <option value="Fiji">Fiji</option>
                </select><br/>

                <input type="submit" value="Submit">   
            </form>


    </body>
</html>
