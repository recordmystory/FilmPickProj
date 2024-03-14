<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>explorationPage</title>
<style>

    #wrap, #wrap *{
    	box-sizing: border-box;
    }
    #wrap{
        border: 1px solid black;
        background-color: black;
        display: flex;
        flex-direction: column;
        width: 100%;
        max-width: 1300px;
        margin: auto;
    }
    select>option{
        color: black;
    }
    #category{
        border: 1px solid black;
        background-color: #5E5E5E;
        height: 65px;
        display: flex;
        justify-content: space-evenly;
        margin-top: 100px;
        margin-bottom: 20px;
    }
    #category select{
        margin: 12px;
    }
    #content{
        margin: auto;
        border: 1px solid black;    
        background-color: #272727;
        width: 95%;
        min-height: 800px;
    }
    #filter{
        display: flex;
        justify-content: right;
        margin-top: 5px;
        margin-right: 15px;
        margin-bottom: 20px;
    }
    .movie {
        grid-template-columns: repeat(4, minmax(0, 1fr));
    }
    .post{
        width: 95%;
        height: 95%;
        position: relative;
        display: inline-block;
    }
    .box_post{
        display: flex;
        justify-content: center;
        height: 300px;
        margin: 10px;
        overflow: hidden;
    }
    .post:hover{
        filter: brightness(1.03);
    }
    .post:hover>div{
        display: block;
    }
    .box_context{
        width: 230px;
        height: 50px;
        background-color: rgba(0, 0, 0, 0.2);
        font-size: 10px;
        display: none;
        position: absolute;
        top: 221px;
        padding: 5px;
    }
    .post_context{
        width: 210px;
        color: white;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
    }
    .btnw{
    	width: 200px;
    }
    
</style>
</head>
<body>

<header>

	<%@ include file="/views/common/header.jsp" %>
	
</header>
<section>

    <div id="wrap">
        <div id="category">
            
            <select class="btn btnw" name="currentScreen" style="background-color: whitesmoke; color: black;">
                <option value="mvall">전체영화</option>
                <option value="curr">현재상영중인영화</option>
                <option value="new">개봉예정영화</option>
            </select>
			
            <select class="btn btnw" name="category" style="background-color: whitesmoke; color: black;">
            	<option value="">장르</option> 
                <option value="SF">SF</option>
                <option value="스릴러">스릴러</option>
                <option value="로맨스">로맨스</option>
                <option value="액션">액션</option>
                <option value="판타지">판타지</option>
                <option value="코미디">코미디</option>
                <option value="에로">에로</option>
                <option value="범죄">범죄</option>
                <option value="애니메이션">애니메이션</option>
                <option value="느와르">느와르</option>
            </select>

            <select class="btn btnw" name="viewRating"  style="background-color: whitesmoke; color: black;">
                <option value="">등급</option>
                <option value="overall">전체관람가</option>
                <option value="12old">12세 이상</option>
                <option value="15old">15세 이상</option>
                <option value="adult">청소년 관람불가</option>
            </select>

            <select class="btn btnw" name="yesrs" style="background-color: whitesmoke; color: black;">
                <option value="">연대</option>
                <option value="newyear">올해개봉작</option>
                <option value="2020s">2020년대</option>
                <option value="2010s">2010년대</option>
                <option value="2000s">2000년대</option>
                <option value="1990s">1990년대</option>
                <option value="1980s">1980년대이전</option>
            </select>

            <select class="btn btnw" name="nation" style="background-color: whitesmoke; color: black;">
                <option value="">국가</option>
                <option value="ko">국내영화</option>
                <option value="nko">해외영화</option>
            </select>

        </div>
        <div id="content">
            <div id="filter">
                <select class="btn btn-outline" name="filter" style="color: #b4b4b4;">
                    <option value="popular">인기순</option>
                    <option value="lately">최신순</option>
                    <option value="korean">가나다순</option>
                    <option value="reviews">리뷰순</option>
                </select>
            </div>
            <div class="movie">
                <div>
                    <div class="box_post"> <!-- 이렇게 a로하지말고 하지말고 각 div로 만들어야함 그래야 순위가 바뀔거같음 -->
                        <a class="post" href=""><img class="post" src="../../resources/img/파묘.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가나다가가나나아자차카타파하가</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div>  
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/듄2.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">듄2</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/건국전쟁.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">건국전쟁</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/웡카.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">웡카</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/가여운것들.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가여운것들</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                    </div>

                    <div class="box_post">
                        <a class="post" href=""><img class="post" src="../../resources/img/파묘.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가나다가가나나아자차카타파하가</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div>  
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/듄2.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">듄2</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/건국전쟁.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">건국전쟁</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/웡카.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">웡카</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/가여운것들.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가여운것들</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                    </div>

                    <div class="box_post">
                        <a class="post" href=""><img class="post" src="../../resources/img/파묘.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가나다가가나나아자차카타파하가</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div>  
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/듄2.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">듄2</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/건국전쟁.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">건국전쟁</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/웡카.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">웡카</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/가여운것들.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가여운것들</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                    </div>

                    <div class="box_post">
                        <a class="post" href=""><img class="post" src="../../resources/img/파묘.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가나다가가나나아자차카타파하가</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div>  
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/듄2.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">듄2</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/건국전쟁.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">건국전쟁</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/가여운것들.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가여운것들</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/웡카.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">웡카</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                    </div>

                    <div class="box_post">
                        <a class="post" href=""><img class="post" src="../../resources/img/파묘.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가나다가가나나아자차카타파하가</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div>  
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/듄2.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">듄2</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/건국전쟁.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">건국전쟁</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/웡카.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">웡카</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                        <a class="post" href=""><img class="post" src="../../resources/img/가여운것들.jpeg" alt="">
                            <div class="box_context">
                                <div class="post_context">가여운것들</div>
                                <div class="post_context">별점</div>
                                <div class="post_context">개봉연도,국가</div> 
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</section>
<footer>
	
	<%@ include file="/views/common/footer.jsp" %>
	
</footer>

</body>
</html>