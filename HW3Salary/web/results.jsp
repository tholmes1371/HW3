<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Salary Calculator</title>
    </head>
    <%
    
        double hoursWorked = Integer.parseInt(request.getParameter("hoursWorked"));
        double hourlyPay = Integer.parseInt(request.getParameter("hourlyPay"));
        double preDeduct = Integer.parseInt(request.getParameter("preDeduct"));
        double postDeduct = Integer.parseInt(request.getParameter("postDeduct"));
        double overtime, grosspay, taxamount, netpay, taxrate, otPay, pretPay, posttPay;
        
        overtime = 0;
        if (hoursWorked > 40)
        {
            overtime = hoursWorked - 40;
            otPay = overtime * 1.5 * hourlyPay;
            grosspay = (hourlyPay *40) + otPay;
        }
        else
        {
            grosspay = hourlyPay * hoursWorked;
        }

        if (grosspay < 500)
        {
            taxrate = .18;
        }
        else
        {
            taxrate = .22;
        }
        
        pretPay = grosspay - preDeduct;

        taxamount = pretPay * taxrate;

        posttPay = pretPay - taxamount;

        netpay = posttPay - postDeduct;


    %>
    <body>
        <h1>Salary Info</h1>
        <form>
        <table border="">
            <tbody>
                
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td> 
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td> 
                </tr>
                
                <tr>
                    <td># Hours Overtime: </td>
                    <td><%= overtime %></td> 
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td>1.5 times hourly rate</td> 
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grosspay %></td> 
                </tr>
                   
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preDeduct %></td> 
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pretPay %></td> 
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxamount %></td> 
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= posttPay %></td> 
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postDeduct %></td> 
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netpay %></td> 
                </tr>
                
                
                
                
            </tbody>                      
        </table>
                
          
                
     </form>   
    </body>
</html>
