<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Receipt</title>
<style type="text/css">
    table { border: 0; }
    table td { padding: 5px; }
</style>
</head>
<body>
<div align="center">
    <h1>Pago Realizado. Gracias por su compra</h1>
    <br/>
    <h2>Detalles de la transaccion</h2>
    <table>
        <tr>
            <td><b>Producto:</b></td>
            <td>Company ABC Ltd.</td>
        </tr>
        <tr>
            <td><b>Cliente:</b></td>
            <td>${payer.firstName} ${payer.lastName}</td>      
        </tr>
        <tr>
            <td><b>Descripcion:</b></td>
            <td>${transaction.description}</td>
        </tr>
        <tr>
            <td><b>Subtotal:</b></td>
            <td>${transaction.amount.details.subtotal} MXN</td>
        </tr>
        <tr>
            <td><b>Envio:</b></td>
            <td>${transaction.amount.details.shipping} MXN</td>
        </tr>
        <tr>
            <td><b>Impuestos</b></td>
            <td>${transaction.amount.details.tax} MXN</td>
        </tr>
        <tr>
            <td><b>Total:</b></td>
            <td>${transaction.amount.total} MXN</td>
        </tr>    
        <tr>
            <td><b>Regresar a Pagina Principal</b></td>
            <td><a href="http://localhost:8084/PayPalDemo/index.html" >Pagina Principal</a> </td>
        </tr>   
    </table>
</div>
</body>
</html>
