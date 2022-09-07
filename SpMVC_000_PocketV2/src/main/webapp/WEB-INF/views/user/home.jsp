<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
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
    <title>8BALL</title>
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
        border-collapse: collapse;
      }

      table.menu_table th,
      td {
        padding: 10px;
        font-size: 1.25rem;
      }
      
      .btn {
		display: inline-block;
		text-decoration: none;
		padding: 0.5rem 1rem;
		font-size: 1.25rem;
		line-height: 1.5;
		border-radius: 0.3rem;
		color: #fff;
		background-color: #007bff;
		border-color: #007bff;
		text-align: center;
		font-weight: 400;
		vertical-align: middle;
		border: 1px solid transparent;
		transition: all .15s ease-in-out;
		width: fit-content;
	}
	.btn:hover {
		color: #fff;
	    background-color: #0069d9;
	    border-color: #0062cc;
	    cursor: pointer;
	    
	}
	.i_click_plus:hover {
		cursor: pointer;
		color: #007bff;
	}
	.i_click_minus:hover {
		cursor: pointer;
		color: #f54242;
	}
	
    </style>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script>
      let time = 0;
      let cost = 150;
      let settext = "";

      let starFlag = true;

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
        document.getElementById("text").innerHTML = "";
      }
      function start_text() {
        document.getElementById("text").innerHTML =
          "시작버튼을 눌러 시작하시오.";
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

            init_text();

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
          start_text();
          if (time != 0) {
            $(".fa").css("color", "#BFBFBF");
            this.style.color = "#4C4C4C";
            clearInterval(timer);
            starFlag = true;
            time = 0;
            init();
            totalSum += cost;

            $.ajax("http://localhost:8080/pocket/insert/?total=" + totalSum + "&pocketId=" + `${POCKETID}`)

            cost = 150;
            document.getElementById("cost").innerHTML = totalSum + "₩";
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
        <header>
		</header>
          <div class="sidebox" onclick="how()">
            <i class="fa-solid fa-shoe-prints"></i> HOW TO PLAY</div>
          <div class="sidebox order" onclick="order()">
            <i class="fa-solid fa-basket-shopping"></i> ORDER
          </div>
          <div class="sidebox exit">
            <i class="fa-solid fa-right-from-bracket"></i
            ><a href="${rootPath}/pocketExit"> EXIT</a>
          </div>
        </div>
      </nav>
    </div>

    <!-- Content 부분 -->
    <div class="flex-items flex-right" id="contents">
        <h1><br>포켓볼 규칙</h1>
    	<h3>
    		<br><br>
	    	[ 일반적인 것 ]<br>
			<br>
			1. 브레이크샷을 친 후 포켓에 들어간 공이 자신의 넣어야 할 공이 됩니다.<br>
			
			  - 단색과 띠공이 모두 들어 갔을 경우에는 , 자신이 원하는 공을 선택하면 됩니다.<br>
			
			  - 포켓에 들어간 공이 없을 경우에는 , 다음 사람이 넣기 쉬운 공을 선택하면 됩니다.<br>
			
			2. 내 공과 상대방의 공이 동시에 들어 갔을 경우 , 모두 득점으로 인정되며 공격권은 유지됩니다.<br>
			
			3. 상대방의 공만 넣었을 경우 , 파울로 득점은 인정되며 공격권은 상대방에게 넘어 갑니다.<br>
			
			4. 포켓에 들어가거나 , 테이블 밖으로 나간 공은 다시 테이블에 올려 놓지 않습니다.<br>
			
			5. 8번공 또는 상대방의 공을 이용하여 , 내 공을 넣을 수 있습니다.<br>
			
			6. 자신의 마지막 공과 8번공이 동시에 들어가도 승리합니다.<br>
			
			<br>
			<br>
			[ 파울 ]<br>
			<br>
			  - 상대방에게 공격권이 넘어 가거나 , 프리볼이 주어진다.<br>
			
			1. 공이 테이블 밖으로 나갔을 경우<br>
			
			2. 수구 (흰공)이 포켓에 들어가거나 , 테이블 밖으로 나갔을 경우<br>
			
			3. 큐가 아닌 다른 것 ( 신체일부 등 )으로 공을 건드렸을 경우<br>
			
			<br>
			<br>
			[ 게임에서 패하는 경우 ]<br>
			<br>
			1. 브레이크 샷에서 8번 공을 넣는 경우<br>
			
			2. 자신의 공을 모두 넣기 전에 8번공을 넣는 경우<br>
			
			3. 8번공이 테이블 밖으로 나가는 경우<br>
			
			4. 수구와 8번공이 동시에 들어 갔을 경우<br>
			<br><br>
			출처 : https://wksaruki.tistory.com/4
    	</h3>
    </div>
  </div>
  <script>
    const contents = document.querySelector("#contents");
    
    var totalSum = 0;
    const how = () =>{
    	contents.innerHTML = `
    		<h1><br>포켓볼 규칙</h1>
    		<h3>
    		<br><br>
	    	[ 일반적인 것 ]<br>
			<br>
			1. 브레이크샷을 친 후 포켓에 들어간 공이 자신의 넣어야 할 공이 됩니다.<br>
			
			  - 단색과 띠공이 모두 들어 갔을 경우에는 , 자신이 원하는 공을 선택하면 됩니다.<br>
			
			  - 포켓에 들어간 공이 없을 경우에는 , 다음 사람이 넣기 쉬운 공을 선택하면 됩니다.<br>
			
			2. 내 공과 상대방의 공이 동시에 들어 갔을 경우 , 모두 득점으로 인정되며 공격권은 유지됩니다.<br>
			
			3. 상대방의 공만 넣었을 경우 , 파울로 득점은 인정되며 공격권은 상대방에게 넘어 갑니다.<br>
			
			4. 포켓에 들어가거나 , 테이블 밖으로 나간 공은 다시 테이블에 올려 놓지 않습니다.<br>
			
			5. 8번공 또는 상대방의 공을 이용하여 , 내 공을 넣을 수 있습니다.<br>
			
			6. 자신의 마지막 공과 8번공이 동시에 들어가도 승리합니다.<br>
			
			<br>
			<br>
			[ 파울 ]<br>
			<br>
			  - 상대방에게 공격권이 넘어 가거나 , 프리볼이 주어진다.<br>
			
			1. 공이 테이블 밖으로 나갔을 경우<br>
			
			2. 수구 (흰공)이 포켓에 들어가거나 , 테이블 밖으로 나갔을 경우<br>
			
			3. 큐가 아닌 다른 것 ( 신체일부 등 )으로 공을 건드렸을 경우<br>
			
			<br>
			<br>
			[ 게임에서 패하는 경우 ]<br>
			<br>
			1. 브레이크 샷에서 8번 공을 넣는 경우<br>
			
			2. 자신의 공을 모두 넣기 전에 8번공을 넣는 경우<br>
			
			3. 8번공이 테이블 밖으로 나가는 경우<br>
			
			4. 수구와 8번공이 동시에 들어 갔을 경우<br>
			<br><br>
			출처 : https://wksaruki.tistory.com/4
    	</h3>
    	`;
    };
    const order = () => {
      contents.innerHTML = `
    	  			<br><br>
       				<h1>메뉴판</h1>
       				<br>
       				<div class="item_list_container">
    						<table class="menu_table">
    							<c:forEach items="${ITEM_LIST}" var="item">
    								<tr>
    									<th>음료명 :</th>
    									<td>${item.name}</td>
    									<th>가격 :</th>
    									<td>${item.price}</td>
    									<td class="i_click_plus" onclick="getItems(${
                        item.id
                      }, ${1}, ${POCKETID})"><i class="fa-solid fa-plus"></i></td>
    									<td class="i_click_minus" onclick="removeItems(${
                        item.id
                      }, ${1}, ${POCKETID})"><i class="fa-solid fa-minus"></i></td>
    								</tr>

    							</c:forEach>
      						</table>
       				</div><br>
       				<div class="order_list">

       				</div>
       				<br>
       				<button class="btn" onclick="submit(${POCKETID})" type="button">주문</button>
       				`;
    };

    const submit = (id) => {
      fetch(`${rootPath}/order/get/` + id, {
        method: "POST",
        body: JSON.stringify(order_items),
        dataType: "json",
        headers: {
          "Content-Type": "application/json",
        },
      });
      
      // 총 주문 가격
      totalSum += sum;
      sum = 0;

      for (const item of order_items) {
        item.count = 0;
      }
      console.log(order_items);

      const orderList = document.querySelector(".order_list");
      orderList.innerHTML = "";
    };

    const orange = document.createElement("h1");
    const cola = document.createElement("h1");
    const americano = document.createElement("h1");

    const order_items = [
      {
        name: "오렌지 주스",
        id: 8,
        price: 1000,
        count: 0,
      },
      {
        name: "제로콜라",
        id: 9,
        price: 2000,
        count: 0,
      },
      {
        name: "아이스아메리카노",
        id: 10,
        price: 1500,
        count: 0,
      },
    ];
    
    let sum = 0;
    
    // 추가
    const getItems = (id, count, pocketId) => {
      console.log(id);
      console.log(pocketId);

      const orderList = document.querySelector(".order_list");
      orderList.textContent = "";

      order_items.map((item) => {
        if (id === item.id) {
          const h1 = document.createElement("h1");
          h1.innerHTML = "";
          console.log(item);

          // item add
          item.count += 1;

          for (const i of order_items) {
            h1.innerHTML += i.name + "x" + i.count + "<br/>";
          }
          sum += item.price
          document.querySelector(".order_list").appendChild(h1);
        }
      });
      
    // 주문 가격 계산 더하기
      const t_price = document.createElement("h1");
      t_price.textContent = sum;
      document.querySelector(".order_list").appendChild(t_price);
    };

    
    // 삭제
    const removeItems = (id, count, pocketId) => {
      const orderList = document.querySelector(".order_list");
      orderList.textContent = "";

      order_items.map((item) => {
        if (id === item.id) {
          const h1 = document.createElement("h1");
          h1.textContent = "";
          console.log(item);

          // item remove
          // 0까지만 내리기
          if (item.count !== 0) {
            item.count -= 1;
          	sum -= item.price;
          }
          for (const i of order_items) {
            h1.innerHTML += i.name + "x" + i.count + "<br/>";
          }
          document.querySelector(".order_list").appendChild(h1);
        }
      });
      
      // 주문 가격 계산 빼기
      
      const t_price = document.createElement("h1");
      t_price.textContent = sum;
      document.querySelector(".order_list").appendChild(t_price);
    };
    

  </script>
</html>
