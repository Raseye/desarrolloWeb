<%-- 
    Document   : agregar
    Created on : 04-may-2017, 12:20:36
    Author     : Desarrollo Web
--%>



<%@page import="almacen.Producto"%>
<%@page import="almacen.Fichero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leroy Merlin</title>
        <link href="css/style.css" rel="stylesheet" type="text/css">
    </head>
    <%
            String id=request.getParameter("id");
            String nombre=request.getParameter("nombre");
            String descripcion=request.getParameter("descripcion");
            String precio=request.getParameter("precio");
           // date fechaEntrada=request.getParameter(name);
            String respuesta;
            
            
            try{
                Fichero f = new Fichero("fichero.bin","ab");
               // edad= Double.parseUnsignedInt(request.getParameter("edad"));   
                if(id == null 
                        || nombre==null 
                        || descripcion==null
                        || precio==null
                        )
                {
                    respuesta="Alguno de los campos quedó sin rellenar";
                }
                else{
                    int idAutentico=Integer.parseInt("id");
                    double precioAutentico=Double.parseDouble("precio");
                    f.escribirObjeto(new Producto(idAutentico,nombre,descripcion,precioAutentico));
                    respuesta="Se insertó con éxito";
                    
                }
                f.close();
            }catch(NumberFormatException nfe){
                respuesta="Error en los numeros";
            }
            
            
        %>
    <body>
        <h1>Formulario para añadir productos</h1>
        <br>
        <form action="agregar.jsp" method="POST">
            <input type="number" name="id" class="campos">ID del producto<br>
            <input type="text" name="nombre" class="campos">Nombre producto<br>
            <input type="textarea" name="descripcion" class="campos">Descripción del producto<br>
            <input type="number" name="precio" class="campos">Precio del Producto<br>
           <!-- <input type="date" name="fechaEntrada" class="campos">Fecha<br>-->
            <input type="submit" value="Enviar Producto">
            <input type="reset" value="Borrar">
            <br>
             <p><%=respuesta%></p>
           
        </form>
    </body>
</html>
