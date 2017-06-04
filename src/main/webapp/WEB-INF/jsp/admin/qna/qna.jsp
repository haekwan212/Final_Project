<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<head>
<script type="text/javascript">
function delchk(){
    return confirm("삭제하시겠습니까?");
}
</script>
<style type="text/css">
.paging{text-align:center;height:32px;margin-top:5px;margin-bottom:15px;}
.paging a,
.paging strong{display:inline-block;width:36px;height:32px;line-height:28px;font-size:14px;border:1px solid #e0e0e0;margin-left:5px;
-webkit-border-radius:3px;
   -moz-border-radius:3px;
		border-radius:3px;
-webkit-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
	-moz-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}
</style>
</head>

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">Q&A</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         Q&A 내역을 불러오는 페이지입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px;">
						<div class="col-sm-6">
						<a href="/SIRORAGI/qna/qnaList?categoryNum=0"><button type="button" class="btn btn-outline btn-default">전체</button></a>
						<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--카테고리--</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=1&searchNum=0&isSearch=">상품문의</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=2&searchNum=0&isSearch=">배송문의</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=3&searchNum=0&isSearch=">입금문의</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=4&searchNum=0&isSearch=">교환&반품문의</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=5&searchNum=0&isSearch=">기타문의</option>
							</select>
								<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--카테고리--</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=6&searchNum=0&isSearch=답변대기">답변대기</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=6&searchNum=0&isSearch=답변완료">답변완료</option>
								<option value ="/SIRORAGI/qna/qnaList?categoryNum=6&searchNum=0&isSearch=문의종료">문의종료</option>
							</select>
							</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 Q&A수 : ${totalCount}</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table
								class="table table-striped table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row">
										<th style="width: 6%; text-align:center;">글번호</th>
										<th style="width: 11%; text-align:center;">카테고리</th>
										<th style="width: 8%; text-align:center;">아이디</th>
										<th style="width: 35%; text-align:center;">글제목</th>
										<th style="width: 10%; text-align:center;">문의날짜</th>
										<th style="width: 10%; text-align:center;">답변상태</th>
										<th style="width: 10%; text-align:center;">답변날짜</th>
										<th style="width: 10%; text-align:center;">관리</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="qnaList"  items="${list}" varStatus="stat">
								<c:url var="viewURL" value="openQnaDetail" >
									<c:param name="QNA_NUMBER" value="${qnaList.QNA_NUMBER }" />
								</c:url>									
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">${qnaList.QNA_NUMBER}</td>
										<td style="text-align:center;vertical-align:middle;">${qnaList.QNA_CATEGORY}</td>
										<td style="text-align:center;vertical-align:middle;"><%-- <a href="/SIRORAGI/qna/qnaList?categoryNum=0&searchNum=0&isSearch=${qnaList.MEMBER_ID}">${qnaList.MEMBER_ID }</a> --%>
											${qnaList.MEMBER_ID}</td>
										<td style="text-align:center;vertical-align:middle;">${qnaList.QNA_TITLE}</td>
										<td style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${qnaList.QNA_REGDATE}" pattern="YY.MM.dd HH:mm" /></td>
										<td style="text-align:center;vertical-align:middle;">${qnaList.QNA_REPSTATE }</td>
										<td style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${qnaList.QNA_REPDATE}" pattern="YY.MM.dd HH:mm" /></td>
										<td style="text-align:center;vertical-align:middle;">
											<a href="${viewURL}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
										<c:url var="viewURL2" value="qnaDelete" >
											<c:param name="QNA_REF" value="${qnaList.QNA_REF }" />
											<c:param name="categoryNum" value="${categoryNum}" />
											<c:param name="QNA_IMAGE1" value="${qnaList.QNA_IMAGE1}" />
											<c:param name="QNA_IMAGE2" value="${qnaList.QNA_IMAGE2}" />
											<c:param name="QNA_NUMBER" value="${qnaList.QNA_NUMBER }" />
										</c:url>
										<c:url var="viewURL3" value="qnaReplyDelete" >
											<c:param name="QNA_NUMBER" value="${qnaList.QNA_NUMBER }" />
										</c:url>
										 <a href="${viewURL2}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk()"></a>
										 </td>									
									</tr>
								</c:forEach>
								<!-- Q&A가 없을때 -->
									<c:if test="${fn:length(list) le 0}">
										<tr><td colspan="9" style="text-align:center;">Q&A가 없습니다.</td></tr>
									</c:if> 
									
								</tbody>
							</table>
						</div>
					</div>
					<div class="paging">
						${pagingHtml}
					</div>
					<div class="row">
							<div style="text-align:center;">
								<div id="dataTables-example_filter" class="dataTables_filter">
									<form action="">
									<c:if test="${categoryNum == null}">
									<input type="hidden" name="categoryNum" id="categoryNum" value="0" />
									</c:if>
									<c:if test="${categoryNum == '0'}">
									<input type="hidden" name="categoryNum" id="categoryNum" value="0" />
									</c:if>
									<c:if test="${categoryNum == '1'}">
									<input type="hidden" name="categoryNum" id="categoryNum" value="1" />
									</c:if>
									<c:if test="${categoryNum == '2'}">
									<input type="hidden" name="categoryNum" id="categoryNum" value="2" />
									</c:if>
									<c:if test="${categoryNum == '3'}">
									<input type="hidden" name="categoryNum" id="categoryNum" value="3" />
									</c:if>
									<c:if test="${categoryNum == '4'}">
									<input type="hidden" name="categoryNum" id="categoryNum" value="4" />
									</c:if>
									<c:if test="${categoryNum == '5'}">
									<input type="hidden" name="categoryNum" id="categoryNum" value="5" />
									</c:if>
										<select class="form-control" name="searchNum" id="searchNum">
										<option value="0">아이디</option>
										<option value="1">제목</option>
									</select>
										<input class="form-control" type="text" name="isSearch" id="isSearch"/>
										<span>
										<button type="submit" class="btn btn-default">검색</button>
										</span>
									</form>
								</div>							
							</div>
					</div>
	  				<a href="/SIRORAGI/qna/qnaForm"><button type="button" class="btn btn-outline btn-default">Q&A등록</button></a>		
				</div>
			</div>
			<!-- /.table-responsive -->		
		</div>
	</div>
        <!-- /.panel -->   
</div>

