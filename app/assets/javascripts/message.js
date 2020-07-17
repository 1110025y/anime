
$(document).ready(function() {
     $('.box_container').hover(function(){ //box_containerにマウスを乗せた時
            var width = $(this).outerWidth() / 2; //box_containerの幅を取って半分にします
            $(this).find('.left').animate(  //class="left"にアニメーションを与えます
            	{right : width}, //上記で取ってきた半分のwidth分ずらします
            	{queue:false,duration:300});
            $(this).find('.right').animate( //上記の右側の処理です。
            	{ left : width },
            	{queue:false,duration:300});
        }, function(){  //マウスアウトの処理でオン時にずらした分を戻します
            $(this).find('.left').animate({ right : 0 },{queue:false,duration:300});
            $(this).find('.right').animate({ left : 0 },{queue:false,duration:300});
        });             
});



// 点滅用クラス
function func_switch_jq(id){
    // IDをチェック
    var $ele = $(id);
    if($ele.length == 0) return;

    $ele.fadeToggle("fast");

    // 0.5秒後にfunc_switch_jqを再実行
    setTimeout(function(elemId){
        func_switch_jq(elemId);
    }, 500, id);
}

$(function(){ 
    func_switch_jq("#switch_jq");
});
