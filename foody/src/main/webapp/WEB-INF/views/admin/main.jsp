<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ include file="../common/config.jsp" %>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<script>
$(function(){
	//Better to construct options first and then pass it as a parameter
	var options = {
		title: {
			text: "월별 가입자 통계"              
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "line",
			dataPoints: [
				{ label: '${cntUser.withM[4].month}',  y: ${cntUser.withM[4].cnt}  },
				{ label: '${cntUser.withM[3].month}', y: ${cntUser.withM[3].cnt}  },
				{ label: '${cntUser.withM[2].month}', y: ${cntUser.withM[2].cnt}  },
				{ label: '${cntUser.withM[1].month}',  y: ${cntUser.withM[1].cnt}  },
				{ label: '${cntUser.withM[0].month}',  y: ${cntUser.withM[0].cnt}  }
			]
		}
		]
	};

	$("#chartContainer").CanvasJSChart(options);
});

</script>
<style>
html{height: 100%;}
body{
	height: 100%;
	max-height: 100%;
	min-height: 100%;
	overflow: hidden;
}
.adminContainer{
	overflow: auto;
    display: flex;
}
#dashBoard {
    min-width: 1040px;
    margin: auto;
    min-height: 640px;
    height: 94%;
    width: 94%;
    justify-content: center;
}
#dashBoard .container {
    min-height: 300px;
    height: 45%;
    min-width: 500px;
    width: 44%;
    background-color: #FAF4C0;
    margin: 2%;
    float: left;
}
#chartContainer {
	height: 80%;
	width: 80%;
}
</style>
<link rel="stylesheet" type="text/css" href="/foody/resources/css/leftMenu.css">
<title>메인 페이지</title>
</head>
<body>
<%@ include file="../admin/leftMenu.jsp" %>
<div class="adminContainer">
	<div id="dashBoard">
		<h1 class="title">메인 페이지</h1>
		<div class="container" id='userReport'>
			<h2>가입자현황</h2>
			총 가입자 수: ${cntUser.all} 명<br>
			<div id="chartContainer"></div>
		</div>
		<div class="container" id='rcpReport'>
			<h2>레시피현황</h2>
			총 레시피 수: ${cntRcp.all}<br>
			최근 7일간 등록된 레시피: ${cntRcp.weekAll}<br>
			기확인된 레시피 건수: ${cntRcp.checked}<br>
			미확인 레시피 건수: ${cntRcp.notChecked}
		</div>
		<div class="container" id='replyReport'>
			<h2>댓글현황</h2>
			총 댓글 수: <br>
			최근 7일간 등록된 댓글 수: <br>
			신고된 댓글 건수: <br>
			신고 처리가 완료된 댓글 건수: <br>
			신고 처리가 필요한 댓글 건수: <br>
		</div>
		<div class="container" id='qnaReport'>
	
		</div>
	</div>
</div>
</body>
</html>