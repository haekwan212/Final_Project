<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>first</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<link rel="stylesheet" type="text/css" href="<c:url value='/css/ui.css'/>" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<scRIPT language="Javascript">

function firstChange() {
 var x = document.frm.first.options.selectedIndex;
 var groups=document.frm.first.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++)
  group[i]=new Array();
 
 group[0][0]=new Option("대분류를 먼저 선택하세요","");
 group[1][0]=new Option("컴퓨터 회사 선택","");
 group[1][1]=new Option("삼성","ss");
 group[1][2]=new Option("대우","dw");
 group[1][3]=new Option("엘지","lg");
 group[2][0]=new Option("프린터 회사 선택","");
 group[2][1]=new Option("엡손","epson");
 group[2][2]=new Option("휴랫팩커드","hp");
 
 temp = document.frm.second;
 for (m = temp.options.length-1 ; m > 0 ; m--)
  temp.options[m]=null
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}
function secondChange() {
 var first = document.frm.first.options.selectedIndex;
 var x = document.frm.second.options.selectedIndex;
 var groups=document.frm.second.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++)
  group[i]=new Array();
 if(first == 1) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  group[1][0]=new Option("삼성컴퓨터 선택","");
  group[1][1]=new Option("섬성 팬티엄III","ss3");
  group[1][2]=new Option("삼성 팬티엄IV","ss4");
  group[1][3]=new Option("삼성 센스 노트북","ssnote");
  group[2][0]=new Option("대우 컴퓨터 선택","");
  group[2][1]=new Option("대우 데스크탑 프로","dw");
  group[3][0]=new Option("엘지 컴퓨터 선택","");
  group[3][1]=new Option("LG IBM PC","lgpc");
  group[3][2]=new Option("LG IBM NOTEBOOK ","lgnote");
 } else if(first == 2) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  group[1][0]=new Option("엡손 프린터 선택","");
  group[1][1]=new Option("엡손 잉크","epson_ink");
  group[1][2]=new Option("엡손 레이져","epson_laser");
  group[2][0]=new Option("휴렛캑커드 프린터 선택","");
  group[2][1]=new Option("HP 잉크젯","hp_ink");
  group[2][2]=new Option("HP 레이져젯","hp_laser");
 }
 
 temp = document.frm.third;
 for (m = temp.options.length-1 ; m > 0 ; m--)
  temp.options[m]=null
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}

</scRIPT>





</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup>
			<caption>상품 등록</caption>
			<tbody>
				<tr>
					<th scope="row">상품명</th>
					<td><input type="text" id="TITLE" name="GOODS_NAME" class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">가격</th>
					<td><input type="text" id="TITLE" name="GOODS_PRICE" class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">카테고리</th>
					<td>
						<select name=first onchange="firstChange();" size=1>
						<OPTION value=''>대분류</OPTION>
						<OPTION value=''>컴퓨터</OPTION>
						<OPTION value=''>프린터</OPTION>
						 
						</select>
						<SELECT name=second onchange="secondChange();" size=1>
						 <OPTION value=''>대분류를 먼저 선택하세요</OPTION>
						</SELECT>
					</td>
					
				</tr>
				<tr>
					<td colspan="2" class="view_text">
						<textarea rows="5" cols="100" title="내용" id="CONTENTS" name="GOODS_SIMPLE" placeholder="기본 설명"></textarea>
						<br/><br/>
						<textarea rows="10" cols="100" title="내용" id="CONTENTS" name="GOODS_DETAIL" placeholder="상세 설명"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<a href="#this" class="btn" id="addKind">컬러/사이즈/재고 추가</a>
						<div id="kindDiv">
							<p>
							<input type="text" placeholder='색상' id="text" name="GOODS_COLOR_0">
							<input type="text" placeholder='사이즈' id="text" name="GOODS_SIZE_0"> 
							<input type="text" placeholder='수량' id="text" name="GOODS_AMOUNT_0">
							<a href="#this" class="btn" id="delete" name="delete">삭제</a>
							</p>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					
					<p>썸네일 이미지 : <input type="file" id="file" name="GOODS_THUMBNAIL"></p>
					<br/>
					<a href="#this" class="btn" id="addFile">이미지 추가</a>
						<div id="fileDiv">
							<p>
							<input type="file" id="file" name="IMAGE_0">
							<a href="#this" class="btn" id="delete" name="delete">삭제</a>
							</p>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		<br/><br/>
		<a href="#this" class="btn" id="write">작성하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	
	<form id="commonForm" name="commonForm"></form>
	<script type="text/javascript">
		var gfv_count = 1;
		var gfc_count = 1;
	
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_insertBoard();
			});
			
			$("#addFile").on("click", function(e){ //파일 추가 버튼
				e.preventDefault();
				fn_addFile();
			});
			
			$("#addKind").on("click", function(e){ //파일 추가 버튼
				e.preventDefault();
				fn_addKind();
			});
			
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteKind($(this));
			});
		});
		
		function fn_openBoardList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
			comSubmit.submit();
		}
		
		function fn_insertBoard(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/sample/insertBoard.do' />");
			comSubmit.submit();
		}
		
		function fn_addKind(){
			var str = "<p><input type='text' placeholder='색상' name='GOODS_COLOR_"+(gfv_count)+"'>	<input type='text' placeholder='사이즈' name='GOODS_SIZE_"+(gfv_count)+"'> <input type='text' placeholder='수량' name='GOODS_AMOUNT_"+(gfv_count++)+"'> <a href='#this' class='btn' name='delete'>삭제</a></p>";
			$("#kindDiv").append(str);
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteKind($(this));
			});
		}
		
		function fn_deleteKind(obj){
			obj.parent().remove();
		}
		
		function fn_addFile(){
			var str = "<p><input type='file' name='IMAGE_"+(gfc_count++)+"'> <a href='#this' class='btn' name='delete'>삭제</a></p>";
			$("#fileDiv").append(str);
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			});
		}
		
		function fn_deleteFile(obj){
			obj.parent().remove();
		}
	</script>
</body>
</html>