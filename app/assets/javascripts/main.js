$(document).ready(function(){

  $("#fs").click(function(){
    $("#fsmodal").modal('show');
  });

  $("#rel").click(function(){
    $("#relmodal").modal('show');
  });

  $("#op").click(function(){
    $("#opmodal").modal('show');
  });

  $("#pe").click(function(){
    $("#pemodal").modal('show');
  });

  $("#comp").click(function(){
    $("#compmodal").modal('show');
  });

  $("#sec").click(function(){
    $("#secmodal").modal('show');
  });

  $("#trans").click(function(){
    $("#transmodal").modal('show');
  });

  $("#maint").click(function(){
    $("#maintmodal").modal('show');
  });

});

var arr = ["Very strongly prefers", "Strongly prefers", "Prefers", "Slightly prefers", "Equally prefers", "Slightly prefers", "Prefers", "Strongly prefers", "Very strongly prefers"];

function fcm_fcr(val) {
	var chara = "";
	if (val < 5){
		chara = " Functional Correctness";
	}
	else if (val > 5){
		chara = " Functional Completeness";
	}
	else{ // val == 5
		chara = " Functional Correctness and Functional Completeness";
	}
    document.getElementById("fcm_fcr_output_id").innerHTML = arr[val - 1] + chara;
}

function fcm_fa(val) {
	var chara = "";
	if (val < 5){
		chara = " Functional Appropriateness";
	}
	else if (val > 5){
		chara = " Functional Completeness";
	}
	else{ // val == 5
		chara = " Functional Appropriateness and Functional Completeness";
	}
    document.getElementById("fcm_fa_output_id").innerHTML = arr[val - 1] + chara;
}

function fcr_fa(val) {
	var chara = "";
	if (val < 5){
		chara = " Functional Appropriateness";
	}
	else if (val > 5){
		chara = " Functional Correctness";
	}
	else{ // val == 5
		chara = " Functional Appropriateness and Functional Correctness";
	}
    document.getElementById("fcr_fa_output_id").innerHTML = arr[val - 1] + chara;
}

