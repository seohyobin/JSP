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
        #wrap{width: 100%;}
        #wrap .container {width: 100%; max-width: 820px; margin: 0 auto; padding: 100px 0 0 0;}
        #wrap .container .title{width: 100%; padding: 0 0 27px 0; display: flex; }
        #wrap .container .title h1{font-size: 40px;   font-weight: 500; color: #333; margin-right: 15px;}
        #wrap .container .title span{font-size: 14px; color: #999;}
        #wrap .container .content{width: 100%;}
        #wrap .container .content table{ width: 100%; border-collapse: collapse;}
        #wrap .container .content table tr th{height: 63px; border-bottom: 1px solid #eee;font-size: 14px; border-top: 1px solid #333;}
        #wrap .container .content table tr td{height: 63px; border-bottom: 1px solid #eee;font-size: 14px; text-align: center;}
        #wrap .container .content table tr td:nth-child(2){padding: 0 0 0 30px; text-align: left;}


    </style>
</head>
<body>
    <% 
    int[] num ={535, 534, 533, 532, 531, 530, 529, 528, 527, 526, 525, 524, 523, 522, 521};
    String[] subject={ 
        "[안내] 샛별배송 서비스 확장 안내 (2023.04.01~)", 
        "[안내] 컬리 소비자 분쟁해결 기준 안내", 
        "[이벤트] 3월 봄날의 펫페어 기부 이벤트 공지의 건", 
        "[안내] 컬리 APP 업데이트 안내 (2023.04.03)", 
        "[이벤트] 전주 베테랑 라이브 경품 당첨자 안내", 
        "[안내] 컬리로그 커뮤니티 가이드라인 일부 변경 안내 (2023.03.21~)", 
        "[안내] 컬리 이메일 서버 점검 (2023.03.22)", 
        "[안내] 컬리 서비스 점검 안내 (2023.03.18)", 
        "[안내] 컬리 서비스 점검 안내 (2023.03.15)", 
        "[안내] LGU+ 휴대폰 본인인증 서비스 점검 안내 (2023.03.08)",
        "[안내] LGU+ 휴대폰결제 서비스 점검 안내 (2023.03.10)",
        "[안내] SKT 휴대폰본인인증 서비스 SMS 시스템 점검 (2023.03.03~03.04, 03.05)",
        "[안내] 적립금 정책 일부 변경 안내 (2023.04.01~)",
        "[안내] 후기 적립금 정책 일부 변경 안내 (2023.04.01~)",
        "[안내] 개인정보처리방침 개정 내용 사전안내" };
    String[] person = { "컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리","컬리",};
    String[] date = {"2023-04-04","	2023-03-27","2023-03-23","2023-03-20","2023-03-17","2023-03-17","2023-02-17","2023-02-02","2023-02-02","2023-01-27","2023-01-25","2023-01-24","2023-01-23","2023-01-22","2023-01-21"};     

%>

    <div id="wrap">
        <div class="container">
            <div class="title">
                <h1>공지사항</h1>
                <span>컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                    </tr>
                        <%
                        for(int i=0; i<15; i++){
                            out.println("<tr><td>" +num[i]+ "</td>><td>" + subject[i] + "</td><td>" + person[i] + "</td><td>" + date[i] + "</td></tr>" );
                        }
                        %>
                    
                </table>
            </div>
        </div>
    </div>
</body>
</html>
