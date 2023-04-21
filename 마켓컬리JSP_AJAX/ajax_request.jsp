<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="./js/jquery-2.2.4.min.js"></script>
    <style>
        #wrap{width: 100%;}
        #wrap .container{width: 100%; max-width: 500px; margin: 0 auto;}
        #wrap .container .title{width: 100%; text-align: center; font-size: 28px; padding: 0 0 30px 0; }
        #wrap .container .content{width: 100%;}
        #wrap .container .content form{}
        #wrap .container .content form label{ }
        
        #wrap .container .content form label .input{display: block; width: 500px; height: 40px; margin: 0 0 15px 0; font-size: 16px;}
        #wrap .container .content form label .radio1{font-size: 16px; margin-bottom: 15px;}
        #wrap .container .content form label .radio2{font-size: 16px; margin-bottom:15px ;}
        #wrap .container .content form label .chk1{font-size: 16px; margin-bottom:15px ;}
        #wrap .container .content form label .submit-btn{width: 508px; height: 40px; font-size: 16px; margin-bottom: 50px ;}

        #wrap .result{width: 100%; height: 600px; background-color: #f7f7f7; margin-bottom:100px ; border: 1px solid #666; font-size: 20px; line-height: 140%; }
        #wrap .result h1{text-align: center; margin: 0 auto; }


    </style>
</head>
<body>
    <div id="wrap">
        <div class="container">
            <div class="title">
                <h1>회원가입</h1>
            </div>
            <div class="content">
                <form>
                    <label for=""><input class="input" type="text" name="id" id="id" required autofocus placeholder="아이디를 입력하세요"></label>
                    <label for=""><input class="input" type="text" name="pw" id="pw" placeholder="비밀번호를 입력하세요"></label>
                    <label for=""><input class="input" type="text" name="pw_ok" id="pwOk" placeholder="비밀번호를 한번 더 입력하세요"></label>
                    <label for=""><input class="input" type="text" name="name" id="name" placeholder="이름을 입력하세요"></label>
                    <label for=""><input class="input" type="text" name="e_mail" id="eMail" placeholder="이메일을 입력하세요"></label>
                    <label for=""><input class="input" type="text" name="hp" id="hp" placeholder="전화번호를 입력하세요"></label>
                    <label for=""><input class="input" type="text" name="addr" id="addr" placeholder="주소를 입력하세요"></label>
                    <label for="">성별<br>
                        <input class="radio1" type="radio" name="gender" id="gender1" value="남자">남자
                        <input class="radio1" type="radio" name="gender" id="gender2" value="여자">여자
                        <input class="radio1" type="radio" name="gender" id="gender3" value="선택안햄" checked>선택안함
                    </label>
                    <label for=""><input class="input" type="text" name="birth" id="birth" placeholder="생년월일을 입력하세요"></label>
                    <label for="">추가 입력사항<br>
                        <input class="radio2" type="radio" name="add" id="add" value="친구초대 추천인 아이디">친구초대 추천인 아이디
                        <input class="radio2" type="radio" name="add" id="add" value="참여 이벤트명">참여 이벤트명<br>
                    </label>
                    <label for="">이용약관동의<br>
                        <input class="chk1" type="checkbox" name="chk" id="chk1" value="이용약관동의">이용약관동의
                        <input class="chk1" type="checkbox" name="chk" id="chk2" value="개인정보 수집∙이용 동의">개인정보 수집∙이용 동의<br>
                        <input class="chk1" type="checkbox" name="chk" id="chk3" value="무료배송, 할인쿠폰 등 혜택/정보 수신 동의">무료배송, 할인쿠폰 등 혜택/정보 수신 동의<br>
                        <input class="chk1" type="checkbox" name="chk" id="chk4" value="본인은 만 14세 이상입니다.">본인은 만 14세 이상입니다.<br>
                    </label>
                    <label for=""><input class="submit-btn" type="submit" name="btn" id="btn" value="입력완료"></label>
                </form>
            </div>
            <div class="result">
                <h1>AJAX RESULT</h1>
            </div>
        </div>
    </div>
    <script>
        (($)=>{
           $('.submit-btn').on({
            click(e){
                e.preventDefault();
                const formData={
                    id : $('#id').val(),
                    pw : $('#pw').val(), 
                    pw_ok : $('#pwOk').val(), 
                    name : $('#name').val(), 
                    e_mail : $('#eMail').val(), 
                    addr : $('#addr').val(), 
                    hp : $('#hp').val(), 
                    gender1 : $('#gender1').val(), 
                    gender2 : $('#gender2').val(), 
                    gender3 : $('#gender3').val(), 
                    birth : $('#birth').val(), 
                    add : $('#add').val(), 
                    chk1 : $('#chk1').val(), 
                    chk2 : $('#chk2').val(), 
                    chk3 : $('#chk3').val(), 
                    chk4 : $('#chk4').val()
                }
                $.ajax({
                    url:'./ajax_response.jsp',
                    type:'POST',
                    data:formData,
                    success(res){
                        console.log(res);
                        $('.result').html(res);
                    },
                    error(err){
                        console.log("ajax 실패" ,err);

                    }
                });
               
            }
           })
        })(jQuery);
    </script>
</body>
</html>