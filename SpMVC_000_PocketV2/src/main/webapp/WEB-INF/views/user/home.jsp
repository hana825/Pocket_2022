<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&family=Raleway&family=Gowun+Dodum&display=swap"
      rel="stylesheet"
    />
    <title>Pocket</title>
    <style>
      @font-face {
        font-family: "GongGothicLight";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicLight.woff")
          format("woff");
        font-weight: normal;
        font-style: normal;
      }
      * {
        margin: 0px;
        padding: 0px;
        font-family: "GongGothicLight";
      }
      html {
      	height: 100%;
      }
      body {
      	height: 100%;
      }

      nav.nav {
        width: 100%;
        height: 100%;
        background-color: #ccc;
      }
      .box {
        justify-content: left;
        align-items: center;
      }
      .timerBox {
        outline: 2px solid black;
      }
      .timerBox .time {
        font-size: 30pt;
        color: #4c4c4c;
        text-align: center;
        font-family: "Orbitron", sans-serif;
      }
      .costBox {
        outline: 2px solid black;
      }
      .costBox .cost {
        font-size: 30pt;
        color: #4c4c4c;
        text-align: center;
        font-family: "Orbitron", sans-serif;
      }
      .btnBox {
        margin: 20px auto;
        text-align: center;
      }
      .btnBox .fa {
        margin: 0px 15px;
        font-size: 30pt;
        color: #555;
        cursor: pointer;
      }
      .sidebar {
      }
      .sidebox {
        padding: 10px;
        cursor: pointer;
        font-family: "GongGothicLight";
        font-weight: 900;
        font-size: 1.5rem;
        color: #555;
      }
      div.sidebox i {
        color: #555;
      }
      a {
        text-decoration: none;
        color: inherit;
      }
      section#bodyContents {
        display: inline-block;
      }


	  /* 나눈거 */
      .flex-container {
        display: flex;
        height: inherit;
      }
      .flex-side {
        width: 25%;
      }
      .flex-right {
        width: 75%;
        display: flex;
	    align-items: center;
	    flex-direction: column;
      }
      
      
      
      .item_list_container {
	    align-items: center;
	    display: flex;
	    flex-direction: column;
	    border: 1px solid #000;
      }
      
      table.menu_table {
      	box-sizing: border-box;
   		padding: 10px 0;
      }
      
      table.menu_table th, td {
      	padding: 10px;
      }
      
      
    </style>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script>
<<<<<<< HEAD
      let time = 0;
      let cost = 150;
      let settext = "";
      
      let starFlag = true;
=======
      var time = 0;
      var cost = 150;
      var settext = "";
      
      var starFlag = true;
>>>>>>> 1a60fce466d85b71d5fefe773a7dcdcfd61e2fb5
      $(document).ready(function () {
        buttonEvt();
      });

      function init() {
        document.getElementById("time").innerHTML = "00:00:00";
      }
      function init_c() {
        document.getElementById("cost").innerHTML = "0₩";
      }
      
      function init_text() {
    	document.getElementById("text").innerHTML = "시작버튼을 눌러 시작하시오.";
      }

      function buttonEvt() {
        let hour = 0;
        let min = 0;
        let sec = 0;
        let timer;

        // start btn
        $("#startbtn").click(function () {
          if (starFlag) {
            $(".fa").css("color", "#BFBFBF");
            this.style.color = "#4C4C4C";
            starFlag = false;

            if (time == 0) {
              init();
            }
            if (cost == 0) {
              init_c();
            }

            timer = setInterval(function () {
              time++;

              min = Math.floor(time / 60);
              hour = Math.floor(min / 60);
              sec = time % 60;
              min = min % 60;

              let th = hour;
              let tm = min;
              let ts = sec;
              if (th < 10) {
                th = "0" + hour;
              }
              if (tm < 10) {
                tm = "0" + min;
              }
              if (ts < 10) {
                ts = "0" + sec;
              }

              if (time % 60 === 0) {
                cost += 150;
              }
              document.getElementById("cost").innerHTML = cost + "₩";

              document.getElementById("time").innerHTML =
                th + ":" + tm + ":" + ts;
            }, 1000);
          }
        });

        // pause btn
        $("#pausebtn").click(function () {
          if (time != 0) {
            $(".fa").css("color", "#BFBFBF");
            this.style.color = "#4C4C4C";
            clearInterval(timer);
            starFlag = true;
          }
        });

        // stop btn
        $("#stopbtn").click(function () {
          if (time != 0) {
            $(".fa").css("color", "#BFBFBF");
            this.style.color = "#4C4C4C";
            clearInterval(timer);
            starFlag = true;
            time = 0;
            init();
            cost = 150;
            document.getElementById("cost").innerHTML = "0₩";
          }
        });
      }
    </script>
  </head>
  <div class="flex-container">
    <div class="flex-items flex-side">
      <nav class="nav">
      	<!-- Stopwatch -->
        <div id="box" class="box">
          <div id="timerBox" class="timerBox">
            <div id="time" class="time">00:00:00</div>
          </div>
          <div id="costBox" class="costBox">
            <div id="cost" class="cost">0₩</div>
          </div>
          <div class="btnBox">
            <i id="startbtn" class="fa fa-play" aria-hidden="true"></i>
            <i id="pausebtn" class="fa fa-pause" aria-hidden="true"></i>
            <i id="stopbtn" class="fa fa-stop" aria-hidden="true"></i>
          </div>
          <div id="text">시작버튼을 눌러 시작하시오.</div>
        </div>
		
		<!-- menu -->
        <div class="sidebar">
          <div class="sidebox order" onclick="order()">
            <i class="fa-solid fa-basket-shopping"></i>ORDER
          </div>
          <div class="sidebox footprint">
            <i class="fa-solid fa-shoe-prints"></i> FOOTPRINT
          </div>
          <div class="sidebox exit">
            <i class="fa-solid fa-right-from-bracket"></i
            ><a href="${rootPath}/pocketExit"> EXIT</a>
          </div>
        </div>
      </nav>
    </div>
    
    <!-- Content 부분 -->
  	<div class="flex-items flex-right" id="contents"></div>
  </div>
  <script>
    const contents = document.querySelector("#contents");
    const order = () => {
      contents.innerHTML = `
    				<h1>이곳은 주문 페이지</h1>
					
    				<div class="item_list_container">
    					<h2>MENU</h2>
						<table class="menu_table">
	    					<c:forEach items="${ITEM_LIST}" var="item">
		    							<tr onclick="getItems(${item.id}, ${1}, ${POCKETID})">
		    								<th>음료명 :</th>
		    								<td>${item.name}</td>
		    								<th>가격 :</th>
		    								<td>${item.price}</td>
		    							</tr>
	    					</c:forEach>
  						</table>
  						
    				</div>
    				<div class="order_list">

    				</div>
    				`;
    };
    

    const getItems = (id, count, pocketId) => {
      fetch(`${rootPath}/order/get/` + id + "/" + count + "/" + pocketId)
	        .then((res) => res.json())
	        .then((json) => {
	        	const orderList = document.querySelector(".order_list");
	        	orderList.textContent = "";
	        	const orange = document.createElement("h1")
	        	const coke = document.createElement("h1")
	        	const americano = document.createElement("h1")
	        	let orangeCnt = 0;
	        	let cokeCnt = 0;
	        	let americanoCnt = 0;
	        	json.map((item)=>{
<<<<<<< HEAD
	        		if(item.id === 8){
=======
	        		if(item.id === 1){
>>>>>>> 1a60fce466d85b71d5fefe773a7dcdcfd61e2fb5
	        		//오렌지
	        		orangeCnt++
	        		orange.textContent = "오렌지쥬스 X "+orangeCnt;
	        		orderList.appendChild(orange);
<<<<<<< HEAD
	        		} else if(item.id === 9){
=======
	        		} else if(item.id === 2){
>>>>>>> 1a60fce466d85b71d5fefe773a7dcdcfd61e2fb5
	        		//제로콜라
	        		cokeCnt++
	        			coke.textContent = "콜라 X "+cokeCnt;
	        		orderList.appendChild(coke);
<<<<<<< HEAD
	        		} else if(item.id === 10){
=======
	        		} else if(item.id === 3){
>>>>>>> 1a60fce466d85b71d5fefe773a7dcdcfd61e2fb5
	        		//아아
	        		americanoCnt++
	        			americano.textContent = "아이스아메리카노 X "+americanoCnt;
	        		orderList.appendChild(americano);
	        		}

	        	})
	        });
    };
  </script>
</html>