<<<<<<< HEAD
<%@ page contentType="text/html; charset=utf-8
" %>
=======
<%@ page contentType="text/html; charset=utf-8" %>
>>>>>>> e84fb078568739d3eeb369e628f292f7288eda2f
<div class="modal-body"><form name="frm" method="post" class="form-horizontal">
<input name="code_chk" type="hidden">
<input name="agreement" value="o" type="hidden">

<section style="padding:30px 20px;">

	<div class="form-group">
		<label for="inputEmail3" class="col-xs-4 col-lg-4 control-label">이메일</label>
		<div class="col-xs-20 col-lg-20 form-inline">
			<input name="email1" id="email1" class="form-control" size="10" type="text"> @ 
			<input name="email2" id="email2" class="form-control" size="10" type="text">  
			<a href="javascript:email_code();" class="btn btn-default form-control">인증번호받기</a>
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-4 control-label">인증번호</label>
		<div class="col-sm-20">
			<input name="sing_code" class="form-control" type="password">
		</div>
	</div>

	<div class="text-center" style="padding-top:10px">
		<a href="javascript:member_send();" class="btn btn-default">회원가입하기</a>
	</div>

</section>

</form></div>
<div class="modal-foot">
</div>