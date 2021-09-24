<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>test</title>
    <script src="/resources/js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $.ajax({
                url:'/resources/ajax/xml.jsp',
                success: function(data){
                    let str= '';

                    $(data).find('person').each(function(){
                        var name = $(this).find('name').text();
                        var gender = $(this).find('gender').text();
                        var part = $(this).find('part').text();
                        str += '<h1>' + name + ':' + gender + ':' + part + '</h1>';
                    });
                    $('body').append(str);
                }//success
            });
        });
    </script>
</head>
<body>
</body>
</html>