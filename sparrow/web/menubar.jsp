<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
<style>
  #all{
    position:fixed;
    left:0px;
    top:-5px;
    width:100%;
    height:70px;
    border-bottom:1px solid rgba(80,80,80,0.1);
    background:white;
  }
  
  #searchBar{
    width:1150px;
    height:40px;    
    margin-left:90px;
    margin-top:17px;
    margin-bottom:10px;
    padding-left:50px;
    background:rgba(80,80,80,0.1);
    border-radius:5px; 
    border:0px;
    outline:none;
    font-weight: bolder;
    font-size:medium;
  }
  
  #outline{
    position:absolute;
    left:90px;
    top:15px;
    width:1195px;
    height:40px;
    border:4px solid rgb(128, 191, 255);
    border-radius:10px;
    visibility:hidden;
  }
  
  #plane{
    position:absolute;
    top:13px;
    left:18px;
    border-radius:50%;
    padding:10px;
    font-size:30px;
  }
  
  #plane:hover{
    background:rgba(80,80,80,0.1);
    cursor:pointer;
  }
  
  #home{
    position:absolute;
    left:1317px;
    top:2px;
    font-size:20px;
    padding:15px;
    padding-top:9px;
    padding-bottom:9px;
    border-radius:100px;
    font-weight: bolder;
    font-size:medium;
    color:rgba(80,80,80,0.5);
  }
  
  #home:hover{
    background:rgba(80,80,80,0.1);
    cursor:pointer;
  }
  
  #searching{
    position:absolute;
    top:27px;
    left:105px;
    font-size:20px;
    
  }
  
  #pic{
    position:absolute;
    top:22px;
    left:1380px;
    border-radius:100%;
    padding:7px;
    font-size:15px;
    background:rgba(80,80,80,0.3);
  }
  
  #name{
    position:absolute;
    top:0px;
    left:1372px;
    padding-left:45px;
    padding-right:20px;
    padding-top:10px;
    padding-bottom:10px;
    border-radius:25px;
    font-weight: bolder;
    font-size:medium;
    color: rgba(80,80,80,0.5);
  }
  
  #name:hover{
    background:rgba(80,80,80,0.1);
    cursor:pointer;
  }
  
  #alert{
    position:absolute;
    top:15px;
    left:1570px;
    font-size:25px;
    padding:15px;
    padding-top:9px;
    padding-bottom:9px;
    border-radius:100px;
  }
  
  #alert:hover{
    background:rgba(80,80,80,0.1);
    cursor:pointer;
  }
  
  #menu{
    position:absolute;
    top:15px;
    left:1630px;
    padding:15px;
    padding-top:9px;
    padding-bottom:9px;
    border-radius:100px;
    font-size: 25px;
  }

  #menu:hover{
    background:rgba(80,80,80,0.1);
    cursor:pointer;
  }
  

</style>	
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="all">
    <i class="fas fa-plane" id="plane" onclick="location.href='index.jsp'"></i>
    <i class="fas fa-search" id="searching" style="color:rgba(80,80,80,0.3)"></i>
    <p id="home" onclick="location.href='index.jsp'">홈</p>
    <i class="fas fa-user" id="pic" style="color:white"></i>
    <span id=""><p id="name">dddddddddd</p></span> <!-- 한글 공백없이 8자, 영어 최대 13자 -->
    <i class="fas fa-comment-dots" id="alert" style="color:rgba(80,80,80,0.3)"></i>
    <i class="fas fa-bars" id="menu" style="color:rgba(80,80,80,0.3)"></i>
    <div id="outline"></div>
    <input type="text" id="searchBar" placeholder="검색" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false">
    
  </div> 
  <script>
    $('#searchBar').click(function(){
    	$('#outline').css('visibility','visible');
    });
    
    $('#outline').click(function(){
    	$('#searchBar').focus();
    })
    
    $('html').click(function(e){
    	var searchBar = $('#searchBar');
    	if(!searchBar.is(e.target)){
    		$('#outline').css('visibility','hidden');
    	}
    });
  </script> 
</body>
</html>