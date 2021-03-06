<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 	<% request.setCharacterEncoding("utf-8"); %>
 	<% response.setContentType("text/html; charset=utf-8"); %>
 	<script>
 	function update(order_code,flag){
 		var order_code = order_code;
 		var en_flag = encodeURIComponent(flag);
 		var mem_num = ${sessionScope.MEMBER_NUMBER};
 	if(confirm("정말 주문취소 하시겠습니까?") == true){
 		$.ajax({
 			url: "/SIRORAGI/orderlist/payUpdate",
 			data : {"ORDER_CODE": order_code, "MEMBER_NUMBER":mem_num, "flag":en_flag},
 			type: "get",
 			async:false,
 			success : function(data){
 				$("#account-contentsWrap").html(data);
 			}
 		})}else{
 			return;
 		}
 	}
function pay_update2(order_code,flag){
	var order_code = order_code;
	var en_flag = encodeURIComponent(flag);
	var mem_num = ${sessionScope.MEMBER_NUMBER};
if(confirm("구매확정 하시겠습니까?") == true){
	$.ajax({
		url: "/SIRORAGI/orderlist/payUpdate",
		data : {"ORDER_CODE": order_code, "MEMBER_NUMBER":mem_num, "flag":en_flag},
		type: "get",
		async:false,
		success : function(data){
			$("#account-contentsWrap").html(data);
		}
	})}else{
		return;
	}
}
$( document ).ready(function() {
	$('#tb01').rowspan(2);
	$('#tb01').rowspan(3);
	$('#tb01').rowspan(4);
	$('#tb01').rowspan(5);
	$('#tb01').rowspan(6);
	$('#tb01').rowspan(7);
	$('#tb01').rowspan(8);
});
$.fn.rowspan = function(colIdx, isStats) {       
	return this.each(function(){      
		var that;     
		$('tr', this).each(function(row) {      
			$('td:eq('+colIdx+')', this).filter(':visible').each(function(col) {
				
				if ($(this).html() == $(that).html()
					&& (!isStats 
							|| isStats && $(this).prev().html() == $(that).prev().html()
							)
					) {            
					rowspan = $(that).attr("rowspan") || 1;
					rowspan = Number(rowspan)+1;

					$(that).attr("rowspan",rowspan);
					
					// do your action for the colspan cell here            
					$(this).hide();
					
					//$(this).remove(); 
					// do your action for the old cell here
					
				} else {            
					that = this;         
				}          
				
				// set the that if not already set
				that = (that == null) ? this : that;      
			});     
		});    
	});  
}; 
 	</script>
<div class="account-order-list">
			<section class="order-list section box-shadow">
				<div class="section-head left border">
					<h3>주문 내역</h3>
				</div>
				<div class="section-body">
					<div class="table-responsive">
						<table class="table" id="tb01">
							<thead>
								<tr>
									<th class="info-img">상품 정보</th>
									<th class="info-caption">&nbsp;</th>
									<th class="date">주문 일자</th>
									<th class="number">주문 번호</th>
									<th class="payment">결제 금액/방법</th>
									<th class="delivery">배송 정보</th>
									<th class="situation">결제 상태</th>
									<th class="stiuation">주문 상태</th>
									<th class="action">구매 결정</th>
								</tr>
							</thead>
							<c:choose>
							<c:when test="${list eq null }">
							<tbody>
							</tbody>
							</c:when>
							<c:otherwise>
							<tbody>
							<c:forEach items="${list }" var="order">
									<tr>
									<td class="info-img"><a href="/SIRORAGI/goodsDetail?GOODS_NUMBER=${order.GOODS_NUMBER }">
									<img img_layer="/SIRORAGI/file/goodsfile/${order.GOODS_THUMBNAIL}" goodsno="${order.GOODS_NUMBER }" src="/SIRORAGI/file/goodsfile/${order.GOODS_THUMBNAIL}" class="img-responsive"></a>
									<input type="hidden" id="order" value="${order.ORDER_NUMBER}" name="order">
									</td>
									<td class="info-caption">
									<strong class="brand">SIRORAGI</strong>
									<em class="name">${order.GOODS_NAME}*${order.ORDER_AMOUNT}개</em>
									</td>
									<td class="payment">${order.GOODS_TOTAL }원/무통장입금</td>
									<td class="date">${order.ORDER_DATE}</td>
									<td class="number" id="order">${order.ORDER_CODE }</td>
									<td class="delivery">${order.DELIVERY_STATE }</td>
									<td class="situation"><div style='display: none;'>${order.ORDER_CODE}</div>${order.GOODS_PAY_STATE }</td>
									<c:choose>
									<c:when test="${order.GOODS_STATE eq '주문취소'}">
									<td class="situation"><div style='display: none;'>${order.ORDER_CODE}</div><font color='red'>${order.GOODS_STATE }</font></td>
									</c:when>
									<c:when test="${order.GOODS_STATE eq '반품신청' or order.GOODS_STATE eq '교환신청'}">
									<td class="situation"><div style='display: none;'>${order.ORDER_CODE}</div><font color='orange'>${order.GOODS_STATE }</font></td>
									</c:when>
									<c:otherwise>
									<td class="situation"><div style='display: none;'>${order.ORDER_CODE}</div><font color='green'>${order.GOODS_STATE }</font></td>
									</c:otherwise>
									</c:choose>
									<c:choose>
									<c:when test="${order.DELIVERY_STATE eq '결제대기' or order.DELIVERY_STATE eq '배송준비중' }">
									<td class="action">
									<input type="button" id="flag" class="btn btn-danger" onclick='update("${order.ORDER_CODE}","구매취소")'  value="구매취소">
									</td>
									</c:when>
									<c:when test="${order.GOODS_STATE eq '구매확정' or order.GOODS_STATE eq '주문취소'}">
									<td class="action">
									</td>
									</c:when>
									<c:when test="${order.DELIVERY_STATE eq '배송완료' and order.GOODS_PAY_STATE eq '결제완료'}">
									<td class="action">
									<input type="button" id="flag" class="btn btn-success" onclick='pay_update2("${order.ORDER_CODE}","구매확정")'  value="구매확정">
									</td>
									</c:when>
									</c:choose>
									</tr>
							</c:forEach>	
							</tbody>
							</c:otherwise>
							</c:choose>
						</table>
					</div>
				</div>
				<div class="section-foot">
					<div class="page-navigator-horizon">
						
					</div>
				</div>
			</section>
			
			<section class="order-list-guide section box-shadow">
				<div class="section-head left border">
					<h3>도움이 필요하세요?</h3>
				</div>
				<div class="section-body guide-list">
					<div class="guide-arlet">
						<strong>알려드립니다</strong>
						<ul>
							<li>2개 이상의 상품을 한번에 주문하셨더라도, 여러 브랜드의 제품을 주문하시면 브랜드 별로 개별 배송됩니다.
							</li>
							<li>적립금은 구매 결정 후에 지급되며, 구매 결정후에는 환불 및 교환이 불가능합니다. 구매결정은 신중히 진행해 주시기 바랍니다.
								<br>상품이 정상적으로 배송되었으나, 구매 결정을 하지 않으시면 상품 배송 후 2주 뒤에 자동으로 구매 결정됩니다.</li>
						</ul>
					</div>
					<div class="guide-situation">
						<strong>진행 현황 가이드</strong>
						<ul>
							<li><span>입금 완료 :</span> 주문요청이 완료된 상태</li>
							<li><span>배송 준비중 :</span> 상품을 포장하고 배송을 보내기 위한 준비를 하는 상태</li>
							<li><span>배송 완료 :</span> 상품이 고객님께 배송된 상태. 송장번호가 등록되며 배송업체별로 트래킹이 가능</li>
							<li><span>구매 결정 완료 :</span> 상품이 고객님께 전달되었고, 구매 결정 버튼을 누른 상태. 적립금이 지급되었으며, 후기 작성이 가능</li>
							<li><span>후기 작성 완료 :</span> 상품에 대한 후기 등록이 완료되었고, 후기작성으로 추가 적립금이 지급된 상태</li>
						</ul>
					</div>
				</div>
			</section>
		</div>