<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    .radio-star {
    display: inline-block;
    font-size: 11px;
    line-height: 15px;
    vertical-align: top;
}

    </style>
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
					<input type="text" id="is-title" name="subject" class="xx-control" required="">
				</div>
			</div>
			<div class="list-item">
				<div class="item-title col-xs-24 col-md-6">
					<label for="is-title"><strong>평가하기</strong></label>
				</div>
				<div class="item-contents col-xs-24 col-md-18 rating">
					<span class="radio-star">
						<label for="l-star1-1"><font color="#00B0E0" size="5">★</font></label>
						<input type="radio" id="l-star1-1" name="REVIEW_GRADE" class="radio" value="1">
						<label for="l-star1-2"><font color="#00B0E0" size="5">★★</font></label>
						<input type="radio" id="l-star1-2" name="REVIEW_GRADE" class="radio" value="2">
						<label for="l-star1-3"><font color="#00B0E0" size="5">★★★</font></label>
						<input type="radio" id="l-star1-3" name="REVIEW_GRADE" class="radio" value="3">
						<label for="l-star1-4"><font color="#00B0E0" size="5">★★★★</font></label>
						<input type="radio" id="l-star1-4" name="REVIEW_GRADE" class="radio" value="4">
						<label for="l-star1-5"><font color="#00B0E0" size="5">★★★★★</font></label>
						<input type="radio" id="l-star1-5" name="REVIEW_GRADE" class="radio" value="5">
					</span>
				</div>
			</div>
			<div class="list-item">
				<div class="item-title col-xs-24 col-md-6">
					<label for="is-file"><strong>이미지 첨부</strong></label>
				</div>
				<div class="item-contents col-xs-24 col-md-8">
					<input type="file" id="is-file" name="REVIEW_IMAGE" class="xx-control" required="">
				</div>
			</div>
			<div class="list-item">
				<div class="item-title col-xs-24 col-md-6">
					<label for="is-contents"><strong>구매 후기</strong></label>
				</div>
				<div class="item-contents col-xs-24 col-md-18">
					<textarea name="REVIEW_CONTENT" id="is-contents" rows="8" class="xx-control" required=""></textarea>
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
