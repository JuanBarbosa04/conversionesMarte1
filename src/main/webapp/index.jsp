<%-- 
    Document   : index
    Created on : 2/03/2023, 11:49:50 a. m.
    Author     : juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            double numero=0;
            double respuesta=0;
            
            if(request.getMethod() == "post"){
                numero= Float.parseFloat(request.getParameter("cantidad"));
                String selector= request.getParameter("eleccion");
                
                if(selector.equals("radianesAgrad")){             
                    respuesta= (numero*180)/Math.PI;
               
                }else{
                    respuesta= (numero*Math.PI)/180;
                }
            }
            
        %>
<script>
   
        alert(<%=respuesta%>);
    
</script>
        
    </body>
</html>
