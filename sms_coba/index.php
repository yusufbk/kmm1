<html>
 <head>
   <title>SMS Gateway Auto Reply</title>
   <script type="text/javascript">
  function ajaxrunning()
  {
   if (window.XMLHttpRequest)
   {
    xmlhttp=new XMLHttpRequest();
   }
   else
   {
    xmlhttp =new ActiveXObject("Microsoft.XMLHTTP");
   }
 
   xmlhttp.onreadystatechange=function()
   {
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    }
   }
 
   xmlhttp.open("GET","run.php");
   xmlhttp.send();
   setTimeout("ajaxrunning()", 5000);
  }
</script>
 </head>
 <body onload="ajaxrunning()">
 <h1>Tutorial Cara Membuat SMS Gateway Auto Reply Terbaru - tobiweb.id</h1>
 <h3>SMS Server running...</h3>
 </body>  
</html>