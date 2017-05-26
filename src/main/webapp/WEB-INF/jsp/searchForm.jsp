<%@ page contentType="text/html; charset=utf-8" %>
<div class="modal-body"><style>
<style>
.onMenu{background:#FFFFFF;text-align:center}
.onMenu a{font-weight:bold;color:#000000}
.offMenu{background:#EFEFEF;color:#CCCCCC;text-align:center}
.offMenu a{color:#CCCCCC;}
.hand{cursor:pointer}
</style>
<div class="modal-status-possessions modal-possessions">
	<section class="modal-search" style="height:470px">
		<div class="section-body">
			<form action="/SIRORAGI/searchList">
				<div class="searchStore">
					<div class="form-group">
						<input id="input-modal-searchKeyword" name="stxt" class="form-control col-xs-18 col-md-18" required="" placeholder="검색어 입력" autocomplete="off" type="text">	
						<button type="submit" class="btn btn-primary col-xs-6 col-md-6">검색</button>	

					</div>
					<table class="table col-md-22 col-xs-22" id="autoList" style="border:1px solid #CCCCCC;background:#FFFFFF;position:absolute;display:none;margin-top:20px;">
					<tbody id="trSearch"></tbody>
						</table>
					<div class="hotSearch">
						<div class="contents keywordList">

							<table class="table" style="border:0px solid #FFF;margin-top:10px">
							   <tbody>
								  <tr>
									 <td class="col-md-12 col-xs-12 onMenu" id="tdPop"><a href="#" id="btnPop">인기검색어</a></td>
									 <td class="col-md-12 col-xs-12 offMenu" id="tdNew"><a href="#" id="btnNew">최근검색어</a></td>

								  </tr>
								</tbody>
							</table>
							<table class="table" id="popList" style="border:0px solid #FFF;display:none1">
							   <tbody>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7%ED%82%A4%EC%A6%88'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">1</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧키즈</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%EB%B0%98%ED%8C%94%ED%8B%B0'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">2</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">반팔티</p></td>

								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=popbow'" style="">
									 <td class="col-md-2 col-xs-2"><p class="text-left">3</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">popbow</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=SESAME'" style="">
									 <td class="col-md-2 col-xs-2"><p class="text-left">4</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">SESAME</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">5</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧</p></td>

								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=I.O.I'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">6</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">I.O.I</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%9B%84%EB%93%9C%EC%A7%91%EC%97%85'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">7</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">후드집업</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7%ED%82%A4%EC%A6%88+pants'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">8</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧키즈 pants</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%EB%A7%A8%ED%88%AC%EB%A7%A8'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">9</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">맨투맨</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%EC%9B%90%ED%94%BC%EC%8A%A4'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">10</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">원피스</p></td>

								  </tr>
								 
							   </tbody>
							</table>

							<table class="table" id="newList" style="border:0px solid #FFF;display:none">
							   <tbody>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%EB%B0%98%ED%8C%94%ED%8B%B0'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">1</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">반팔티</p></td>

								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=POPbow'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">2</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">POPbow</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7%ED%82%A4%EC%A6%88'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">3</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧키즈</p></td>

								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=Sesame'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">4</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">Sesame</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7%ED%82%A4%EC%A6%88+PANTS'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">5</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧키즈 PANTS</p></td>

								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=I.O.I'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">6</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">I.O.I</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%EC%9B%90%ED%94%BC%EC%8A%A4'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">7</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">원피스</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7+'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">8</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧 </p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7+SHORT+T-SHIRTS'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">9</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧 SHORT T-SHIRTS</p></td>
								  </tr>
								  <tr class="hand" onclick="location.href='/store/search?stxt=%ED%8C%AC%EC%BD%A7%ED%82%A4%EC%A6%88+SHORT+T-SHIRTS'">
									 <td class="col-md-2 col-xs-2"><p class="text-left">10</p></td>
									 <td class="col-md-22 col-xs-22"><p class="text-left">팬콧키즈 SHORT T-SHIRTS</p></td>

								  </tr>
							   </tbody>
							</table>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
</div>
<div class="modal-button">
	<button class="button cancel btn-close">
		<span class="button-label">닫기</span>

	</button>
</div>


<script>
$(document).ready(function() {
	function ajax_search_keyword2(stxt){
		var sword = "";
		var rword = "";
		var href = "";
		var searchHtml = "";

		$.getJSON("../main/ajax", {mode:"search", stxt:stxt}, function(data){
			$(data.words).each(function(idx, v){
				sword = v.word ;
				href = encodeURI("../store/search?stxt="+ v.word);

				rword = sword.replace(stxt, '<font color=red>'+stxt+'</font>');
				searchHtml = searchHtml + "\r\n<tr class='hand' onclick=\"location.href='"+href+"'\"><td class='col-md-24 col-xs-24'><p class='text-left'>"+rword+"</p></td></tr>\r\n";
			});

			if(searchHtml != '')
				$("#trSearch").html(searchHtml);	

		});
	}
    $(function() {   
		$("#tdPop").click(function() {
			$("#tdPop").removeClass("offMenu");
			$("#tdPop").addClass("onMenu");
			$("#tdNew").removeClass("onMenu");
			$("#tdNew").addClass("offMenu");

			$("#popList").show();
			$("#newList").hide();
		});
		$("#tdNew").click(function() {
			$("#tdNew").removeClass("offMenu");
			$("#tdNew").addClass("onMenu");
			$("#tdPop").removeClass("onMenu");
			$("#tdPop").addClass("offMenu");

			$("#popList").hide();
			$("#newList").show();
		});
		$("#input-modal-searchKeyword").focus();

		$("#input-modal-searchKeyword").keyup(function(e) {
			if($(this).val() != '') {
				$("#autoList").show();

				$(".hotSearch").hide();
				$("#popList").hide();
				$("#newList").hide();
			} else {
				$("#autoList").hide();

				$(".hotSearch").show();
				$("#popList").show();
				$("#newList").hide();
			}

			var stxt = $("#input-modal-searchKeyword").val();	
			ajax_search_keyword2(stxt);
		});
	});

	$("#popList tr,#newList tr").hover(
	  function () {
		$(this).css("background","#F2F2F2");
	  }, 
	  function () {
		$(this).css("background","");
	  }
	);

	$("#autoList tr").live('hover',
		function (e) {
			if(e.type == "mouseleave"){
				$(this).css("background","");
			} else if(e.type == "mouseenter") {
				$(this).css("background","#F2F2F2");
			}
	});
});
</script></div>
		<div class="modal-foot">
		</div>