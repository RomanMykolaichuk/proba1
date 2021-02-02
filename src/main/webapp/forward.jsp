<%-- 
    Document   : forward
    Created on : 30 січ. 2021 р., 20:21:32
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="include/header.jsp" />
<div class="container mtb">
    <div class="row">
        <div class="col-lg-6">
            <h3> forwarded page українська є</h3>
            <a href="<%= request.getContextPath()%>">Return</a>
        </div>

    </div>
</div>

<%@ include file="/files/file1.txt"  %>

<jsp:include page="include/footer.jsp" />

