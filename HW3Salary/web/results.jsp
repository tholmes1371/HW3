<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Salary Calculator</title>
    </head>
    <link rel="stylesheet" type="text/css" href="./HW3.css" />
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
        <table class="center">
            <tbody>
                
                <tr>
                    <td class="second">Total Hours Worked:</td>
                    <td class="second"><%= hoursWorked %></td> 
                </tr>
                
                <tr>
                    <td class="second">Hourly Rate:</td>
                    <td class="second" ><%= hourlyPay %></td> 
                </tr>
                
                <tr>
                    <td class="second"># Hours Overtime: </td>
                    <td class="second"><%= overtime %></td> 
                </tr>
                
                <tr>
                    <td class="second">Overtime Hourly Rate:</td>
                    <td class="second">1.5 times hourly rate</td> 
                </tr>
                
                <tr>
                    <td class="second">Gross Pay:</td>
                    <td class="second"><%= grosspay %></td> 
                </tr>
                   
                <tr>
                    <td class="second">Pre-tax Deduct:</td>
                    <td class="second"><%= preDeduct %></td> 
                </tr>
                
                <tr>
                    <td class="second">Pre-tax Pay:</td>
                    <td class="second"><%= pretPay %></td> 
                </tr>
                
                <tr>
                    <td class="second">Tax Amount:</td>
                    <td class="second"><%= taxamount %></td> 
                </tr>
                
                <tr>
                    <td class="second">Post-tax Pay:</td>
                    <td class="second"><%= posttPay %></td> 
                </tr>
                
                <tr>
                    <td class="second">Post-tax Deduct:</td>
                    <td class="second"><%= postDeduct %></td> 
                </tr>
                
                <tr>
                    <td class="second">Net Pay:</td>
                    <td class="second"><%= netpay %></td> 
                </tr>
                
                
                
                
            </tbody>                      
        </table>
                
          
                
     </form>
      
    </body>
</html>
