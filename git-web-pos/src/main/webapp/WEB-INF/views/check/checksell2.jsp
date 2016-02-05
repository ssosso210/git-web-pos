<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <title>jQuery UI Datepicker functionality</title>
      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <!-- Javascript -->
      <script>
         $(function() {
            $( "#datepicker-3" ).datepicker({
               appendText:"(yy-mm-dd)",
               dateFormat:"yy-mm-dd",
            });
         });
      </script>
   </head>
   <body>
      <!-- HTML --> 
      <p>Enter Date: <input type="text" id="datepicker-3"></p>
   </body>
</html>