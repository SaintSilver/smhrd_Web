<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
   text-align: center;
   background-color: whitesmoke;
}

form {
   padding-top: 15%;
}

fieldset {
   border: 3px dotted black;
   width: 500px;
   margin: 0 auto;
   border: 3px dotted black;
}

table {
   margin: 0 auto;
}
td{
   text-align: left;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <form action="JoinCon2">
      <fieldset>
         <legend>
            <h1>회원가입</h1>
         </legend>
         <table>
           <tr>
            <td>ID</td>
               <td><input type="text" name="id" required="required"></td>
               <td rowspan="5"><input type="submit" value="가입"></td>
            </tr>
            <tr>
            <td>PW</td>
            <td><input type="password" name="pw" required="required"></td>
            </tr>
            <tr>
            <td>NICKNAME</td>
            <td><input type="text" name="nickname" required="required"></td>
            </tr>
            <tr>
            <td>EMAIL</td>
            <td><input type="text" name="email" required="required"></td>
            </tr>
            <tr>
            <td>TEL</td>
            <td><input type="text" name="tel" required="required"></td>
            </tr>
         </table>

      </fieldset>
   </form>

</body>
</html>