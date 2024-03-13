<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원활동내역 조회</title>
<style>
table{
    margin-top: 20px;
}
.title>h1{
    font-weight: bold;
}
.user-info{
    height: 200px;
    border: 2px solid lightgray;
    margin-top: 80px;
    display: flex;
}
.userprofile1{
    width: 20%;
    display: flex;
    justify-content: center; 
    align-items: center; 
    height: 100%; 
}
.userprofile2{
    width: 80%;
    display: flex;
    flex-direction: column;
    margin-top: 45px;
    margin-bottom: 45px;
}

.user-profile-nickname, .user-profile-totalWrite{
    height: 50%;
    padding: 0px;
}

.user-profile2-text{
    margin-right: 10px;
}
#table-body >  tr > td{
        border-top: 1px solid black;
}
#table-head > tr > th{
    border-top: 1px solid rgb(67, 58, 58);
    border-bottom: 1px solid black;
    background-color: rgba(239, 239, 239, 0.58);
}
.board-content{
    margin-top: 5px;
    color: lightgray;
}
table{
    
}
</style>
</head>
<body>
	<%@ include file="/views/admin/common/header.jsp" %>
    <div class="container-fluid">
    	<div class="container">
        <div class="container user-info">
            <div class="userprofile1">
                <img src="../img/profile_person.png" style="width: 70%;">
            </div>
            <div class="userprofile2">
                <div class="container user-profile-nickname">
                    <span class="user-profile2-text" style="font-weight: bold;">닉네임</span>
                    <span class="user-profile2-text">|</span>
                    <span>Level 3</span>
                </div>
                <div class="container user-profile-totalWrite">
                    <span>총 게시글 개수 <b>55</b>개</span>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="container" style="margin-top: 15px; padding-left: 0px;">
                <button type="button" class="btn btn-dark rounded-0 shadow" onclick="location.href='/film/views/admin/ad_member/memberBoardPostView.jsp'">게시글</button><button type="button" class="btn btn-light rounded-0 shadow" onclick="location.href='/film/views/admin/ad_member/memberReplyPostView.jsp'">댓글</button><button type="button" class="btn btn-dark rounded-0 shadow">리뷰</button>
            </div>
            <table class="table table" style="margin-top: 0px;">
                <thead id="table-head">
                    <tr class="table-active">
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody id="table-body">
                    <tr>
                        <td>999</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="container" style="margin-top: 10px;"><img src="../img/board_content_img.png">
                                <span class="board-content">장르는 스릴러로 추천 부탁드릴게요</span>
                            </div>
                        </td>
                        <td>닉네임원</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>552</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="container" style="margin-top: 10px;"><img src="../img/board_content_img.png">
                                <span class="board-content">장르는 스릴러로 추천 부탁드릴게요</span>
                            </div>
                        </td>
                        <td>닉네임투</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>166</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임쓰리</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>231</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임포</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>643</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임파이브</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>123</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임식스</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>333</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임세븐</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>555</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임에잇</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr>
                        <td>231</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임나인</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td>987</td>
                        <td>
                            넷플릭스 볼만한 거 추천 부탁드려요 [7]
                            <div class="board-content">장르는 스릴러로 추천 부탁드릴게요</div>
                        </td>
                        <td>닉네임텐</td>
                        <td>24.02.05</td>
                        <td>27</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-center container">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    </div>
</body>
</html>