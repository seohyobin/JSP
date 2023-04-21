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
    <title>Document</title>
    <style>
        *{padding: 0; margin: 0; vertical-align: middle; box-sizing: border-box;}
        ul{list-style: none;}
        #wrap{width: 100%;}
        #wrap .container{width: 100%; max-width: 1110px; margin: 100px auto;}
        #wrap .container .title{text-align: center; padding: 0 0 100px 0;}
        #wrap .container table{width: 100%; border-collapse: collapse;}
        #wrap .container table tr{width: 100%; border-collapse: collapse;}
        #wrap .container table th{ height: 50px; font-size: 16px; border-bottom:1px solid #000; border-top:1px solid #000;}
        #wrap .container table td{  height: 60px; font-size: 16px; border-bottom:1px solid #ccc; color: #666; }


 


    

    </style>
</head>
<body>

    
    <% 
        int[] num_arr ={425, 424, 423, 422, 421, 420, 419, 418, 417, 416};
        String[] subject_arr={ "시스템 개선 및 서비스 점검 안내", "시스템 개선 및 서비스 점검 안내", "탄소중립포인트 인센티브 지급 기준 안내", "스타벅스 코리아 사칭 홈페이지 및 이메일 주의 안내", "Summer 시즌 사이렌 오더 음료 기본 설정 변경 안내", "시스템 개선 및 서비스 점검 안내", "탄소중립실천포인트제 도입 안내", "영상정보처리기기 운영방침 / 위치정보 이용약관 / 개인정보처리방침 이용약관 개정 안내", "시스템 개선 및 서비스 점검 안내", "설 연휴 스타벅스 딜리버스 운영 안내" };
        String[] date_arr = {"2023-04-04","	2023-03-27","2023-03-23","2023-03-20","2023-03-17","2023-03-17","2023-02-17","2023-02-02","2023-02-02","2023-01-27","2023-01-20"};     
        int[] view_arr = { 1479, 1720, 25999, 3705, 21037, 3377, 20653, 2135, 1879, 9036};
    %>

    <div id="wrap">
        <div class="container">
            <div class="title">
                <h1>스타벅스 공지사항</h1>
            </div>
                <table>
                    <tr>    
                        <th>no</th>
                        <th>제목</th>
                        <th>날짜</th>
                        <th>조회수</th>

                    </tr>
                        <tr>
                            <%
                            for(int i=0; i<10; i++){    
                                
                                out.println("<tr><td class='num'>" + num_arr[i] + "</td>" + "<td>"+ subject_arr[i] +"</td>"+ "<td>"+ date_arr[i] +"</td>"+"<td>"+view_arr[i] +"</td></tr>"); 
                            }
                            %>
                        </tr>

                    
                </table>

            
        </div>
    </div>
        


   

</body>
</html>