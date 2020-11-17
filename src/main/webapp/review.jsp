<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
<style type="text/css">
    table { border: 0; }
    table td { padding: 5px; }
</style>
</head>
<body>
<div align="center">
    <h1>Por favor revise antes de pagar</h1>
    <form action="execute_payment" method="post">
    <table>
        <tr>
            <td colspan="2"><b>Detlles de la transaccion:</b></td>
            <td>
                <input type="hidden" name="paymentId" value="${param.paymentId}" />
                <input type="hidden" name="PayerID" value="${param.PayerID}" />
            </td>
        </tr>
        <tr>
            <td>Descripcion:</td>
            <td>${transaction.description}</td>
        </tr>
        <tr>
            <td>Subtotal:</td>
            <td>${transaction.amount.details.subtotal} MXN</td>
        </tr>
        <tr>
            <td>Envio:</td>
            <td>${transaction.amount.details.shipping} MXN</td>
        </tr>
        <tr>
            <td>Impuestos:</td>
            <td>${transaction.amount.details.tax} MXN</td>
        </tr>
        <tr>
            <td>Total:</td>
            <td>${transaction.amount.total} MXN</td>
        </tr>
        <tr><td><br/></td></tr>
        <tr>
            <td colspan="2"><b>Informacion del Comprador</b></td>
        </tr>
        <tr>
            <td>Primer Nombre:</td>
            <td>${payer.firstName}</td>
        </tr>
        <tr>
            <td>Apellido</td>
            <td>${payer.lastName}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${payer.email}</td>
        </tr>
        <tr><td><br/></td></tr>
        <tr>
            <td colspan="2"><b>Direccion de Envio / Facturacion:</b></td>
        </tr>
        <tr>
            <td>Nombre:</td>
            <td>${shippingAddress.recipientName}</td>
        </tr>
        <tr>
            <td>Linea 1:</td>
            <td>${shippingAddress.line1}</td>
        </tr>
        <tr>
            <td>Ciudad:</td>
            <td>${shippingAddress.city}</td>
        </tr>
        <tr>
            <td>Estado:</td>
            <td>${shippingAddress.state}</td>
        </tr>
        <tr>
            <td>Codigo Pais:</td>
            <td>${shippingAddress.countryCode}</td>
        </tr>
        <tr>
            <td>Codigo Postal</td>
            <td>${shippingAddress.postalCode}</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Pagar ahora" />
            </td>
        </tr>    
    </table>
    </form>
</div>
</body>
</html>
