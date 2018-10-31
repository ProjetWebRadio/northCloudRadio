function searchNextSong(){
	$(function(){
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
				$("img#cover").attr("src", obj.cover);
				
				var myPlayer = document.querySelector("#myAudioPlayer");
				myPlayer.load();//recharge la source
				myPlayer.play();
				
			}
		});
	});
}



$(function(){
	$('.center').slick({
		  centerMode: true,
		  centerPadding: '60px',
		  slidesToShow: 3,
		  responsive: [
		    {
		      breakpoint: 768,
		      settings: {
		        arrows: false,
		        centerMode: true,
		        centerPadding: '40px',
		        slidesToShow: 3
		      }
		    },
		    {
		      breakpoint: 480,
		      settings: {
		        arrows: false,
		        centerMode: true,
		        centerPadding: '40px',
		        slidesToShow: 1
		      }
		    }
		  ]
		});
	
	
	$('#slide1').parallax("center", 0, 0.1, true);
    $('#slide2').parallax("center", 900, 0.1, true);
    $('#slide3').parallax("center", 2900, 0.1, true);
	searchNextSong();
	
	$("#myAudioPlayer").bind("ended",function(event){
			searchNextSong();
	});
	
	
	$("button#stop").bind("click",function(event){
			
				var myPlayer = document.querySelector("#myAudioPlayer");
				myPlayer.stop();
	});
    
	$("button#next").bind("click",function(event){
		     searchNextSong();
	});

    $("button#previous").bind("click",function(event){
		    searchNextSong();
	});
});