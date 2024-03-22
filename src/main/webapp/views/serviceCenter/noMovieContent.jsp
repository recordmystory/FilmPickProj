<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

   /*컨텐츠부분*/
    .background{
        min-height: 500px;
        margin: 50px;
        background-color: rgb(39, 39, 39);
        display: flex;
        flex-direction: column;
    }

    .modal-body {
        position: relative;
    }

    .psModal{
        position: absolute;
        top: 19px;
        right: 19px;
    }

    .psButton-body{
        position: relative;
    }

    .psButton{
        position: absolute;
        top: 27.5px;
        right: 3px;
    }

    .background2{
        background: white;
        margin: 30px;
    }
    
    .backbtn{
	      width: 100px;
	      margin-left: 1250px;
    }
    
    /* 뒤늦게 추가함*/
    .dr{
      display: flex;
    }
    
    .dr *{
      margin-right: 20px;
    }

    .form-category *{
      margin-right: 5px
    }
    
    .person-table{
      border: 1px solid black;
      margin: 5px;
      border-collapse: separate;
      border-radius: 10px;
    }

    .person-table *{
      border-collapse: separate;
      border-radius: 10px;
    }

    .person-div{
      display: flex;
      /* border: 1px solid red; */
      width: 900px;
      flex-wrap:wrap
    }

    .person-div img{
      width: 80px;
      height: 80px;
    }
    
    .personImg{
      width: 80px;
      height: 80px;
    }
    
    .check{
   	  width:150px;
   	  border:1px solid gray;
   	  border-radius: 10px;
   	  padding:5px
   	}
   	.viewPerson{
   	  display: flex;
   	}
</style>
</head>
<body>

	<%@ include file="/views/common/header.jsp" %>
	
    <!-- 컨텐츠부분 시작 -->
    <div style="background-color: black;">
      <div class="content">

        
        <section class="content_wrap">
          <!-- Begin Page Content -->
          <div class="background">
              <div class="background2">
                      <div class="container-fluid"><br>
                          <h1 style="color:black;">없는영화신청</h1> <br>
                          <form action="" method="">
                              <div class="form-group">
                                  <label for="exampleFormControlInput1" style="color:black;">영화제목</label> <br>
                                  <input type="text" class="form-control" id="exampleFormControlInput1" name="" style="width: 600px;">
                              </div>

                              <br>

                              <div class="form-group">
                                  <label for="exampleFormControlSelect1" style="color:black;">영화관람등급</label>
                                  <select class="form-control" id="exampleFormControlSelect1" name="" style="width: 600px;">
                                      <option value="전체">전체관람</option>
                                      <option value="12세">12</option>
                                      <option value="15세">15</option>
                                      <option value="청불">청소년관람불가</option>
                                  </select>
                              </div>

                              <br>

                              <div class="form-group">
                                  <label for="exampleFormControlTextarea1" style="color:black;">영화줄거리</label> <br>
                                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="" style="width: 600px;"></textarea>
                              </div>
                              

                              <br>
                              <div class="form-group dr">
                                <div class="form-group" style="color:black;">
                                    개봉일
                                    <input type="date" name="dateIn" class="form-control" style="width: 300px;">
                                </div><br><br><br><br>
                                

                                <div class="form-group" style="color:black;">
                                    러닝타임
                                    <input type="text" name="runningTime" class="form-control" style="width: 300px;">
                                </div><br>
                              </div>
                              

                              <div class="form-group psButton-body" style="color:black;">
                                  출연/제작
                                  <input type="text" name="" class="form-control" style="width: 600px;">
                                  <button type="button" class="btn btn-secondary btn-sm psButton" data-toggle="modal" data-target="#searchModal" style="margin-right: 715px;">검색</button>
                              </div><br>

                              <div class="person-div">

                                <!--테이블이 생성될 공간-->

                              </div>
                              

                              <br><br>
                              <div class="form-group form-category" style="color:black;">
                              영화 장르 선택 <br>
                              
                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="SF" name="category">
                                      <label class="form-check-label" for="inlineCheckbox1">SF</label>
                                  
                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="스릴러" name="category">
                                      <label class="form-check-label" for="inlineCheckbox2">스릴러</label>
                                      
                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="로맨스" name="category">
                                      <label class="form-check-label" for="inlineCheckbox3">로맨스</label>
                                      
                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="액션" name="category">
                                      <label class="form-check-label" for="inlineCheckbox4">액션</label>

                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox5" value="판타지" name="category">
                                      <label class="form-check-label" for="inlineCheckbox5">판타지</label>

                                  
                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox6" value="코미디" name="category">
                                      <label class="form-check-label" for="inlineCheckbox6">코미디</label>

                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox7" value="에로" name="category">
                                      <label class="form-check-label" for="inlineCheckbox7">에로</label>

                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox8" value="범죄" name="category">
                                      <label class="form-check-label" for="inlineCheckbox8">범죄</label>

                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox9" value="애니메이션" name="category">
                                      <label class="form-check-label" for="inlineCheckbox9">애니메이션</label>

                                      <input class="form-check-input" type="checkbox" id="inlineCheckbox10" value="느와르" name="category">
                                      <label class="form-check-label" for="inlineCheckbox10">느와르</label>
                              </div>
                              <br><br>


                              <div class="form-group" style="color:black;">
                              국가
                              <br>
                                  <div class="form-check form-check-inline">
                                      <input type="radio" id="radio1" name="nation" value="1" checked> 
                                      <label for="radio1">국내</label>

                                      <input type="radio" id="radio2" name="nation" value="2">
                                      <label for="radio2">해외</label>
                                  </div>
                              </div>
                              <br>


                              <p style="color:black;">영화포스터</p>
                              <div class="custom-file" style="color:black;">
                                  <input type="file" class="custom-file-input" id="customFile1" name="">
                                  <label class="custom-file-label" for="customFile1" style="color:black;">파일추가</label>
                                  <img src="" alt="미리보기이미지">
                              </div>

                              <br>

                              <p style="color:black;">예고편영상</p>
                              <div class="custom-file" style="color:black;">
                                  <input type="file" class="custom-file-input" id="customFile2" name="">
                                  <label class="custom-file-label" for="customFile2" style="color:black;">파일추가</label>
                                  <img src="" alt="미리보기이미지">
                              </div>

                              <br>


                              <div class="form-group" style="color:black;">
                              기타 추가 희망 이미지 또는 동영상
                                  <div class="custom-file">
                                      <input type="file" class="custom-file-input" id="customFile3" name="">
                                      <label class="custom-file-label" for="customFile3" style="color:black;">파일추가</label>
                                      <img src="" alt="미리보기이미지">
                                  </div>
                              </div>


                              <br>

                              <div class="form-group" style="color:black;">
                                  <h4>사용자 요청사항(선택)</h4>
                                  <textarea name="" cols="70" rows="8" placeholder=" 추가적인 요청사항이 있을시 작성해주세요."></textarea>
                              </div>

                              <div style="color:black;">
                                  <input type="checkbox" id="idCheck" value="동의" name="" style="margin-left: 1000px;">
                                  <label class="form-check-label" for="idCheck">닉네임 정보제공 동의(선택)</label> 
                                  
                                  <button type="button" class="btn btn-outline-secondary" style="float: right;" data-toggle="modal" data-target="#submitModal">업로드</button> <br>
                                  
                                  <span style="color:  rgb(158, 158, 158); margin-left: 920px;">(동의시 영화정보에 닉네임이 기재됩니다)</span>
                              </div>
                                      <!-- 영화등록 Modal -->
                                      <div class="modal" id="submitModal" style="color:black;">
                                          <div class="modal-dialog">
                                              <div class="modal-content">
                                          
                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                      <h4 class="modal-title">영화등록</h4>
                                                      <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                                                  </div>
                                          
                                                  <!-- Modal body -->
                                                  <div class="modal-body">
                                                      신청하시겠습니까?
                                                  </div>
                                          
                                                  <!-- Modal footer -->
                                                  <div class="modal-footer">
                                                      <button type="button" class="btn btn-outline-secondary" style="float: right;" data-dismiss="modal">취소</button>
                                                      <button type="submit" class="btn btn-outline-secondary" style="float: right;">OK</button>
                                                  </div>
                                          
                                              </div>
                                          </div>
                                      </div>

                          </form>

                      </div>

                  </div>
                  <button type="button" class="btn btn-secondary backbtn" onclick="history.back();">뒤로가기</button> <br>
              </div> 
              
              <br><br>
          <!-- /.container-fluid -->

              <!-- 인물검색 Modal -->
              <div class="modal" id="searchModal" style="color:black;">
                  <div class="modal-dialog">
                      <div class="modal-content">
                  
                          <!-- Modal Header -->
                          <div class="modal-header">
                              <h4 class="modal-title">배우 검색</h4>
                              <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                          </div>
                  
                          <!-- Modal body -->
                          <div class="modal-body">
                              <input type="text" name="inputPerson" class="form-control inputPerson"">
                              <button type="button" class="btn btn-secondary btn-sm psModal btnPerson" onclick="searchPerson();">검색</button>
                              <hr>
                              <div class="viewPerson">
                                  
                              </div>
                          </div>
                  
                          <!-- Modal footer -->
                          <div class="modal-footer">
                              <button type="button" class="btn btn-outline-secondary" style="float: right;" id="personBtn">추가</button>
                              <button type="button" class="btn btn-outline-secondary" style="float: right;" id="personRemoveBtn">제거</button>
                              <button type="button" class="btn btn-outline-secondary" style="float: right;" data-dismiss="modal">닫기</button>
                          </div>
                  
                      </div>
                  </div>
              </div>

        </section>

        <script>
 
        function searchPerson(){
            let result = "";
            $.ajax({
                url:"<%=contextPath%>/search.pe",
                data:{name:$(".inputPerson").val()},
                type:"post",
                success:function(person){ // 인물번호, 인물이미지경로, 인물이름, 인물직업 조회
                	console.log(person.length);
                    if(person.length != 0){ // 받아온 person에 값이 담겨있을 때
                        for(let i=0; i<person.length; i++){
                            result = " ";
                            result =  "<div class='check'>"
                                    +       "<table>"
                                    +           "<tr>"
                                    +               "<td><img class='personImg' src='<%=contextPath%>/" + person[i].pFile + "'></td>"
                                    +           "</tr>"
                                    +           "<tr>"
                                    +               "<td class='personName'>" + person[i].pName + "</td>"
                                    +               "<input name='personNo' class='personNo' type='hidden' value='" + person[i].pNo + "'>"
                                    +           "</tr>"
                                    +           "<tr>"
                                    +               "<td>" + person[i].pJob + "</td>"
                                    +           "</tr>"
                                    +       "<input class='checkboxbox' type='checkbox'>"
                                    +       "</table>"
                                    +   "</div>";
                            $(".viewPerson").append(result);
                        }
                    } else if (person.length == 0){ // 받아온 person이 비어있을 때
                        result = " ";
                    	console.log("length는 0");
                        $(".viewPerson").html("검색된 인물이 없습니다.");
                    }
                },
                error:function() {
                	console.log("AJAX 통신 실패");
                }
                
            });
        }
        
         var count = 0; //최대 8명만 추가할 수 있는 조건
         // 없는영화 출연진 추가하는 스크립트
         $("#personBtn").click(function(){
        	
       		let inputChecked = [];	 
        	 
        //   $(".viewPerson input:checked").each(function(){
       // 	   inputChecked.push($(this));
        //   }); 
        	 
           if(count < 8){

           let result = "";
             result += "<table class='person-table'>"
                     +   "<tr>"
                     +     "<td><img src='../../resources/img/고경표.jpeg'></td>"
                     +   "</tr>"
                     +   "<tr>"
                     +     "<td>고경표</td>"
                     +   "</tr>"
                     +   "<tr>"
                     +     '<td><input type="text" placeholder="영화배역 입력" name="movieJob"></td>'
                     +   "</tr>"
                     +   '<input type="hidden" name="personNo" value="인물테이블인물번호">'
                     + "</table>"
                     + "<br><br>"
               $(".person-div").append(result);
               count++;
           }else{
             alert("8명이상 추가할 수 없습니다.");
           }
         });
		//인물 빼는 스크립트
         $("#personRemoveBtn").click(function(){
           $(".person-div").find("table").last().remove();
             if(count > 0){
               count--;
             }
         });

        </script>
    
      </div>
    </div>
    <!-- 컨텐츠부분 종료 -->  
	
	<%@ include file="/views/common/footer.jsp" %>

</body>
</html>