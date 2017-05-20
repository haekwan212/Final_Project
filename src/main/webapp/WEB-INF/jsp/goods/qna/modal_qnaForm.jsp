<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal-body"><form method="post" action="process" enctype="multipart/form-data">
<input type="hidden" name="mode" value="cs">
<input type="hidden" name="goodsno" value="1489998868">
	<section class="inquiry box-shadow">
		<div class="section-body list-horizontal">
			<div class="list-item">
				<div class="item-title col-xs-24 col-md-6">
					<label for="is-title"><strong>제목</strong></label>
				</div>
				<div class="item-contents col-xs-24 col-md-18">
					<input type="text" id="is-title" name="QNA_TITLE" class="xx-control" required="">
				</div>
			</div>
			<div class="list-item">
				<div class="item-title col-xs-24 col-md-6">
					<label for="is-password"><strong>비밀번호</strong></label>
				</div>
				<div class="item-contents col-xs-24 col-md-8">
					<input type="password" id="is-password" name="QNA_PASSWORD" class="xx-control" required="">
				</div>
			</div>
			<div class="list-item">
				<div class="item-title col-xs-24 col-md-6">
					<label for="is-contents"><strong>문의 내용</strong></label>
				</div>
				<div class="item-contents col-xs-24 col-md-18">
					<textarea name="QNA_CONTENT" id="is-contents" rows="8 " class="xx-control" required=""></textarea>
				</div>
			</div>
		</div>
	</section>
	<div class="modal-button">
		<button type="submit" class="button">
			<span class="button-label">확인</span>
		</button>
		<button class="button button-dimmed cancel btn-close">
			<span class="button-label">닫기</span>
		</button>
	</div>
</form>
<script src="/theme/store/js/main.js"></script></div>
