

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Salary Calculator Page</title>
    </head>
    <link rel="stylesheet" type="text/css" href="./HW3.css" />

    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="userInput" action="results.jsp" method="post">
            <table class="center">
                <tbody>
                    <tr>
                        <td class="first">Hours Worked:</td>               
                        <td><input type="text" name="hoursWorked" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td class="first">Hourly Pay:</td>                
                        <td><input type="text" name="hourlyPay" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td class="first">Pre-tax Deduct:</td>                
                        <td><input type="text" name="preDeduct" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td class="first">Post-tax Deduct:</td>                
                        <td><input type="text" name="postDeduct" value="" size="50"></td>
                    </tr>
                </tbody>    
            </table>
            <br>
            <div class="button">
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            </div>
        </form>
    </body>
</html>
