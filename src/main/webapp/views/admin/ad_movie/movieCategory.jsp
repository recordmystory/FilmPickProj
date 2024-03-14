<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 카테고리 관리</title>

<!-- 부트스트랩 기능을 위한 CDN 방식 연결 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!--  -------------------------------------  -->

<style>

	/*body style*/
	.bodyBox{
		padding: 5px 5px 5px 5px;
	    width: 1100px;
	    align-items: center;
	    margin: 0 auto;
	}
	
	h1{
		font-weight: bold !important;
		color: black;
	}

    .up{
        margin-right: 15px;
    }

    .genre_box{
        display: flex;
        flex-direction: column;
    }

</style>

</head>
<body>

	<!-- Header start -->
	<%@ include file="/views/admin/common/header.jsp" %>
	<!-- Header end -->
	
	
	<!-- section start -->
	<div class="bodyBox">
		<h1>영화 카테고리 관리</h1>
        
        <hr>
        
        <div class="d-flex justify-content-center container">
            <span>검색</span>&nbsp;&nbsp;&nbsp;
            <input type="text" placeholder="검색어를 입력해주세요">
            <button type="button">
                <img src="../img/icon_search.png">
            </button>          
        </div>
        
        <br><br>
        
        
        <div class="btn-group btn-group-lg">
            <button type="button" class="btn btn-outline-dark"><h3>장르</h3></button>
            <button type="button" class="btn btn-outline-dark"><h3>국가</h3></button>
        </div>
        
            
            
        <div>
            <br>
            <h5>현재 노출 중</h5>
            <br>

        <!-- 장르 선택시 보여지는곳  -->

            <div class="genre_box">
                <div class="form-check form-check-inline">
                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox1" value="option1">
                        <label class="form-check-label" for="inlineCheckbox1">SF</label>
                        <label class="up">△</label>
                        <!-- <div class="order">
                            <img src="../img/위로버튼.PNG" alt="">
                            <img src="../img/아래로버튼.PNG" alt="">
                        </div> -->
                    </div>
                    
                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">스릴러</label>
                        <label class="up">△</label>
                    </div>

                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">로맨스</label>
                        <label class="up">△</label>
                    </div>

                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">액션</label>
                        <label class="up">△</label>
                    </div>

                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">판타지</label>
                        <label class="up">△</label>
                    </div>

                </div>

                <div class="form-check form-check-inline">
                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">코미디</label>
                        <label class="up">△</label>
                    </div>

                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">에로</label>
                        <label class="up">△</label>
                    </div>

                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">범죄</label>
                        <label class="up">△</label>
                    </div>

                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">애니메이션</label>
                        <label class="up">△</label>
                    </div>

                    <div class="checkInput">
                        <input class="genre" type="checkbox" id="inlineCheckbox2" value="option2">
                        <label class="form-check-label" for="inlineCheckbox2">느와르</label>
                        <label class="up">△</label>
                    </div>
                </div>
            </div>


            <!-- 국가 선택시 보여지는것 -->

            <div class="nation_box">
                <div class="checkInput">
                    <input class="nation"  type="checkbox" id="inlineCheckbox2" value="option2">
                    <label class="form-check-label" for="inlineCheckbox2">국내</label>
                    <label class="up">△</label>
                

                    <input class="nation" type="checkbox" id="inlineCheckbox2" value="option2">
                    <label class="form-check-label" for="inlineCheckbox2">해외</label>
                    <label class="up">△</label>
                </div>
            </div>


            <button type="button" class="btn btn-outline-secondary modifyBtn" data-toggle="modal" data-target="#addModal">추가</button>
            <button type="button" class="btn btn-outline-secondary modifyBtn" data-toggle="modal" data-target="#changeModal">수정</button>
            <button type="button" class="btn btn-outline-danger modifyBtn" onclick="deleted();">삭제</button>
        </div>
    </div>

    <!-- 추가 Modal -->
    <div class="modal" id="addModal">
        <div class="modal-dialog">
            <div class="modal-content">
    
                <!-- Modal Header -->
                <div class="modal-header">
                <h4 class="modal-title">장르추가</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                    <input type="text" name="genreAdd" class="form-control" placeholder="추가할 장르 입력">
                </div>
        
                <!-- Modal footer -->
                <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" style="float: right;" data-dismiss="modal">추가</button>
                </div>
    
            </div>
        </div>
    </div>

    <!-- 수정 Modal -->
    <div class="modal" id="changeModal">
        <div class="modal-dialog">
            <div class="modal-content">
    
                <!-- Modal Header -->
                <div class="modal-header">
                <h4 class="modal-title">장르수정</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                    <input type="text" name="genreChange" class="form-control" placeholder="기존장르나오는공간">
                </div>
        
                <!-- Modal footer -->
                <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" style="float: right;" data-dismiss="modal">수정</button>
                </div>
    
            </div>
        </div>
    </div>

    <!-- 삭제 Modal -->
    <div class="modal" id="deleteModal" aria-hidden="true" style="display: none; z-index: 1050;">
        <div class="modal-dialog">
            <div class="modal-content">
    
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">장르삭제</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                    <h6>삭제하시겠습니까?</h6>
                </div>
        
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" style="float: right;" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-outline-danger" style="float: right;" data-toggle="modal" data-target="#deleteConfirmModal">OK</button>
                </div>
    
            </div>
        </div>
    </div>

    <!-- 삭제확인 -->
    <script>
    	function deleted(){
			let d = prompt("선택한 분류를 삭제하시겠습니까? \n 삭제를 희망하시면 삭제라고 입력해주세요");
			
			if(d=="삭제"){
	            alert("삭제되었습니다.")
	        }else{
	            alert("잘못입력하셨습니다. 다시 확인해주세요")
	        }
		}
    </script>
	<!-- section end -->

</body>
</html>