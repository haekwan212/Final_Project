<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="modal-body"><div class="share-sns_sub">
	<a href="https://www.facebook.com/sharer/sharer.php?u=http://www.pancoat.com/" class="button button-ghost col-xs-8" onclick="postToFeed();return false;">
		<span class="icon icon-facebook"></span>
		<!--<span class="button-label facebook-share-count count">0</span>-->
	</a>
	<div class="share-sns_sub2">
		<a href="https://twitter.com/intent/tweet?url=http://www.pancoat.com/" class="button button-ghost col-xs-8">
			<span class="icon icon-twitter"></span>
			<!--<span class="button-label twitter-share-count count">0</span>-->
		</a>
		<a href="https://story.kakao.com/s/share?url=http://www.pancoat.com/" class="button button-ghost col-xs-8" style="border-left:0;">
			<span class="icon icon-kakaostory"></span>
			<!--<span class="button-label twitter-share-count count">0</span>-->
		</a>
	</div>
	<!-- <a href="#">1</a> -->
</div>

<script type="text/javascript">
$(".share-sns_sub2 a").click(function(){
	var count = $(this).children("span").text();
	$(this).children("span").text(count);
	window.open($(this).attr("href"), "popFacebook", "width=600, height=546");
	return false;
});
</script>

<script>
  window.fbAsyncInit = function() {
	FB.init({
	  appId      : '1136475446381253',
	  status: true, 
	  cookie: true,
	  xfbml: true,
	  version    : 'v2.4'
	});
  };

function postToFeed(){
  FB.ui({
  	method: 'feed',  	
  	link: 'http://www.pancoat.com/',
	name : 'PANCOAT [ÆÒÄà¼¥] MULTI TWEEN FLOWER STRIPE SEMI OVER T-SHIRT (MIDNIGHT BLACK)_PPOEURS29VC6',
  	caption: '[ÆÒÄà¼¥] MULTI TWEEN FLOWER STRIPE SEMI OVER T-SHIRT (MIDNIGHT BLACK)_PPOEURS29VC6',
	picture: 'http://pic.styleindex.co.kr/data/goods/pshp/m/149/1496390649',
	description: '[ÆÒÄà¼¥] MULTI TWEEN FLOWER STRIPE SEMI OVER T-SHIRT (MIDNIGHT BLACK)_PPOEURS29VC6',
	}, function(response){});
};
  (function(d, s, id){
	 var js, fjs = d.getElementsByTagName(s)[0];
	 if (d.getElementById(id)) {return;}
	 js = d.createElement(s); js.id = id;
	 js.src = "//connect.facebook.net/en_US/sdk.js";
	 fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script></div>