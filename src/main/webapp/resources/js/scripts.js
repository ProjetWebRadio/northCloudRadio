function searchNextSong(){
	$.ajax({
		url : "/northCloudRadio/next-song", //TODO get base URL to avoid /northCloudRadio
		type: "GET",
		dataType: "text", 
		error : function(jqXHR, textStatus, errorThrown){
			alert("Erreur d'appel : " + textStatus);
			console.log(errorThrown);
		},
		success : function(data, textStatus, jqXHR){
			console.log('result = ' + data);
			var obj = JSON.parse(data);
			$("audio#myAudioPlayer source").attr("src",obj.src);
			$("audio#myAudioPlayer source").attr("type",obj.type);
			
			var myPlayer = document.querySelector("#myAudioPlayer");
			myPlayer.load();//recharge la source
			myPlayer.play();
			
		}
	});
}

$(function(){
	
	$("#myAudioPlayer").bind("ended",function(event){
			searchNextSong();
	});
	
	
	$("button#stop").bind("click",function(event){
			
				var myPlayer = document.querySelector("#myAudioPlayer");
				myPlayer.stop();
	});

});