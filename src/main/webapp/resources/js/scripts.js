function searchNextSong() {
	if (document.querySelector("#myAudioPlayer") != null) {
		$.ajax({
			url : "/northCloudRadio/next-song",
			type : "GET",
			dataType : "text",
			error : function(jqXHR, textStatus, errorThrown) {
				console.log(errorThrown);
			},
			success : function(data, textStatus, jqXHR) {
				console.log('result = ' + data);
				var obj = JSON.parse(data);
				$("audio#myAudioPlayer source").attr("src", obj.src);
				$("audio#myAudioPlayer source").attr("type", obj.type);
				$("img#cover").attr("src", obj.cover);
				$("p#song-title").html(obj.name);
				var myPlayer = document.querySelector("#myAudioPlayer");
				myPlayer.load();// recharge la source
				myPlayer.play();

			}
		});
	}
}

$(function() {
	$('#slide1').parallax("center", 0, 0.1, true);
	$('#slide2').parallax("center", 900, 0.1, true);
	$('#slide3').parallax("center", 2900, 0.1, true);

	$("#myAudioPlayer").bind("ended", function(event) {
		searchNextSong();
	});

	$("button#stop").bind("click", function(event) {

		var myPlayer = document.querySelector("#myAudioPlayer");
		myPlayer.stop();
	});

	$("button#next").bind("click", function(event) {
		searchNextSong();
	});

	$("button#previous").bind("click", function(event) {
		searchNextSong();
	});

	$("#artist-search").autocomplete({
		source : function(request, response) {
			let username = document.querySelector("#artist-search").value;
			$.ajax({
				url : "/northCloudRadio/get-users?username=" + username,
				type : "GET",
				dataType : "text",
				error : function(jqXHR, textStatus, errorThrown) {
					alert("Erreur d'appel : " + textStatus);
					console.log(errorThrown);
				},
				success : function(data, textStatus, jqXHR) {
					var obj = JSON.parse(data);
					var usernames = [];
					$.each(obj, function(i) {
						usernames.push(obj[i].username);
					})
					response(usernames);
				}
			});
		}
	});

	searchNextSong();
	let footerHeight = $("footer").css("height");
	$("body").css("margin-bottom", footerHeight);
});