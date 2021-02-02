<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="include/header.jsp" />

Name: <%= request.getParameter("name")%><br/>
Gender: <%= request.getParameter("gender")%><br/>
Languages known: <%
    String[] countries = request.getParameterValues("language");
    if (countries != null) {
        for (int i = 0; i < countries.length; i++) {
            out.print("<br/>");
            out.print(countries[i]);

        }
    } else {
        out.print("None Selected");
    }

%><br/>


Country: <%= request.getParameter("country")%>



<a href="<%=request.getContextPath()%>">Return</a>
<jsp:include page="include/footer.jsp" />

