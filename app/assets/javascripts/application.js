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


var body = document.getElementById("q");
	if(body){
		body.addEventListener('mouseenter',function(){
			console.log("working");
		});
	}


var myfunction = function(){
// 	var theUrl = "https://www.google.co.in/webhp?hl=en&sa=X&ved=0ahUKEwjMjs7H68nRAhXJCJoKHbpCBcwQPAgD";
//     var xmlHttp = new XMLHttpRequest();
//     console.log("outside ");
//     xmlHttp.onreadystatechange = function() {
//     	console.log("xml"+xmlHttp.readyState+"and"+xmlHttp.status); 
//         if (xmlHttp.readyState == 4 || xmlHttp.status == 200){
//             console.log("inside xml");
//         	return xmlHttp.responseText;
//         }
//     }
//     console.log("3");
//     xmlHttp.open("GET", theUrl, true); // true for asynchronous 
//     console.log("4");
//     xmlHttp.send(null);
//     console.log("5");

// });                                                    
window.location.replace("http://localhost:3000/show?q_id",'height=400,width=600,left=10,top=10,,scrollbars=yes,menubar=no'); return false;
};
var content = document.getElementsByClassName("qcontent");
if(content){
	for (var i = 0; i < content.length; i++) {
    content[i].addEventListener('click', myfunction, false);
}

}