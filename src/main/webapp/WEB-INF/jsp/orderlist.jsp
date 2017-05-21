<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="account-1to1">
		<section class="individual-progress-list account-individual-list section box-shadow">
			<div class="section-head left border">
				<h3>진행중인 1:1문의</h3>
			</div>
			<!-- heading-title//end -->
			<div class="section-body">
				<div class="table-responsive">
					<table class="table list-dropdown">
						<thead>
							<tr>
								<th class="category">분류</th>
								<th class="subject">내용</th>
								<th class="date-write">등록일</th>
								<th class="date-answer">답변일</th>
								<th class="situation">진행 현황</th>
							</tr>
						</thead>
						<tbody>
							<!--  -->
						</tbody>
					</table>
				</div>
			</div>
			<!--section-body//end-->
			<div class="section-foot">
				<button class="button col-xs-offset-6 col-xs-12 col-md-offset-9 col-md-6" target="modal" data-size="md" data-label="1:1 문의 작성" href="w_mycs">
					<span class="button-label">1:1 문의 작성하기</span>
				</button>
			</div>
			<!-- table-responsive//end -->
		</section>
		<!-- progress-list//end -->

		<section class="individual-past-list account-individual-list section box-shadow">
			<div class="section-head left border">
				<h3>지난 1:1 문의</h3>
			</div>
			<!-- heading-title//end -->
			<div class="section-body">
				<div class="table-responsive">
					<table class="table list-dropdown">
						<thead>
							<tr>
								<th class="category">분류</th>
								<th class="subject">내용</th>
								<th class="date-write">등록일</th>
								<th class="date-answer">답변일</th>
								<th class="situation">진행 현황</th>
							</tr>
						</thead>
						<tbody>
							<!--  -->
							<tr class="brief answer-yes">
								<td class="category">
									회원
								</td>
								<td class="subject">
									<p>안녕하세요 </p>
								</td>
								<td class="date-write">
									05-17 21:04
								</td>
								<td class="date-answer">
									05-18 09:28
								</td>
								<td class="situation">
									처리완료
								</td>
							</tr>
							<tr class="detail answer-yes" style="display: none;">
								<td colspan="6">
									<div class="contents">
										<div class="description">
											<p>이거 사이즈 어떤가요</p>
										</div>
											<div style="max-width:300px">
											<img src="http://pic.styleindex.co.kr/pshp/qna/591c3c626b836.jpg" class="img-responsive">
											</div>
									</div>
									<!-- contents//end -->
									<div class="answer">
										<p><span class="icon"></span>고객님 안녕하세요!<br>
저희 제품에 관심을 가져 주셔서 감사드립니다.<br>
사이즈는 일반적인 정사이즈로 생각 하시면 됩니다만 원단이나 혼용율에 따라서도 착용감이 다를 수 있으니 상세 정보 및 실측 참고하여 제품 구매를 부탁 드립니다.<br>
개인의 체형이나 취향이 따라 사이즈 선택이 다를 수 있어 사이즈 선택이나 권유는 어려우니 이점 양해 바랍니다<br>
감사합니다.
										</p>
										<div class="info">
											<p class="date">2017-05-18 09:28:33</p>
										</div>
										<!--
										<div class="alert">
											<p>이 상품의 문의가 종료되었습니다. 감사합니다.</p>
										</div>
										-->
										<!-- info//end -->
									</div>
									<!-- answer//end -->
								</td>
							</tr>
							<!--  -->
						</tbody>
					</table>
				</div>
			</div>
			<!-- table-responsive//end -->
			<div class="section-foot">
				<div class="page-navigator-horizon">
					<div class="page-navigator-horizon"><div class="page-number"> <a class="active">1</a> </div></div>
				</div>
			</div>
			<!-- account-list-page-navigator//end -->
		</section>
		<!-- past-list//end -->
		<section class="asking-list-guide section box-shadow">
			<div class="section-head left border">
				<h3>도움이 필요하세요?</h3>
			</div>
			<!-- section-head//end -->
			<div class="section-body guide-list">
				<div class="guide-arlet">
					<strong>알려드립니다</strong>
					<ul>
						<li>상품 문의는 각 상품의 상품문의를 이용하시면 가장 빠르게 답변을 얻으실 수 있습니다.</li>
						<li>받으신 답변에 대해 평가를 해주시면, 향후 답변 서비스 향상에 많은 도움이 됩니다.</li>
					</ul>
				</div>
				<div class="guide-situation">
					<strong>문의 진행 현황 가이드</strong>
					<ul>
						<li><span>답변 대기 :</span> 문의가 정상적으로 접수되었고, 담당자가 답변을 준비하는 상태. 진행중인 1:1 문의에서 확인 가능</li>
						<li><span>답변 완료 :</span> 문의에 대한 답변이 등록된 상태. 진행중인 1:1 문의에서 확인 가능</li>
						<li><span>문의 종료 :</span> 답변에 대한 평가가 완료되어 해당 문의가 종료된 상태. 지난 1:1 문의에서 확인 가능</li>
					</ul>
				</div>
			</div>
			<!-- list//end -->
		</section>
		<!-- asking-list-guide//end -->
	</div>