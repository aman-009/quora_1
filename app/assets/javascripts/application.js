// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



// var myfunction = function(){                                                
// window.location.replace("http://localhost:3000/show?q_id="+q_id,'height=400,width=600,left=10,top=10,,scrollbars=yes,menubar=no'); 
// return false;
// };
// //page.php?id=" + product_id
// //http://polimovie.deib.polimi.it/Version3/index.php?campaign=<?php echo $Campaign_id; ?>&worker=<?php echo $Worker_id; ?>'
// var content = document.getElementsByClassName("qcontent");

// if(content){
// 	for (var i = 0; i < content.length; i++) {
// 		var q_id = 10;   
//     	content[i].addEventListener('click', myfunction, false);
// 	}

// }

// var createQuestion = document.getElementById("create_question");

// if(createQuestion){
// 	createQuestion.addEventListener('submit', function(event){
// 		event.preventDefault();
// 		console.log("tried submitting");
// 		var url = "/question_json";
// 		var content = document.getElementById("content");
// 		data = {
// 			title :title.value,
// 			content: content.value,
// 			random :12345,
// 		}

// 		if(!content.value || (content.value && content.value.length<1)){
// 			//noty({text: "cannot create empty question", theme: "relax", type: 'error', layout: 'topRight'})
// 			return;
// 		}

// 		$.ajax({
// 			url:url,
// 			method: "POST",
// 			data: data,  //basically data bheja jaega url pe aur wha pe json form mai recieve hoga
// 			//a json object is sentto the serveralong with the request
// 			//aggr bhenjne mai success huw then only this will execute
// 			success: function(resul) { //result is that new row created in db
// 				console.log(resul);
// 				var list = document.getElementById("questions");
// 				next_elem = list.firstElementChild;
// 				var new_elem = document.createElement('div');
// 				new_elem.innerHTML = resul.title;
// 				list.insertBefore(new_elem,next_elem);

// 			},
// 			error: function(error){
// 				console.log(error);
// 			}

// 		});
// 	});
// }


// var createUpvote = document.getElementById("create_upvote");

// if(createUpvote){
// 	createUpvote.addEventListener('submit', function(event){
// 		event.preventDefault();
// 		console.log("tried submitting");
// 		var url = "/upvote_json";


// 	});
// }