<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>변수와 매소드</title>
</head>
<body>
    <h1>JSP변수와 매소드 이용하기</h1>
    <hr>
    <%!
        String companyName = "GREEN COMPUTER ACADEMY";
        // 호출용 매소드

        //getter 매소드
        // get 변수 카멜케이스 기법
        // set 변수
        public String getCompanyName(){
            companyName="GREEN COMPUTER ACADEMY 풀스택 서효빈";
            return companyName;

        }

        //setter 매소드
        //설정용(수정,기록) 매소드
        //set  변수명 카멜케이스 기법
        
        public String setCompanyName(String z){
            companyName = z;
            return companyName;
        }


    %>
    <h2>회사이름은 <%= companyName%></h2>
    <h1>getter method 호출 실행 <em style="color : #fff; background :#c99; font-size:20px">[<%= getCompanyName() %>]</em></h1>
    <h1>setter method 호출 설정 실행<em style="color : #fff; background :#99c; font-size:20px">[<%= setCompanyName("자바 프로그래밍 JSP 세터 매소드 설정하기") %>]</em></h1>

</body>
</html>