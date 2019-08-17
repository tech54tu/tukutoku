// $(function() {
//   $('input[type=button]').on("click", function(){
//     var input = $("[name=check]").prop("checked")
//     console.log(input)
//   });
// });

// $(function() {
//   $('input[type=button]').on('click', function(){
//     if($("[name=check]").prop('checked')){
//       console.log('1');
//     }else{
//       console.log('0');
//     }
//   });
// });

// function clickBtn(){
// 	const ary = [];
// 	const check = document.judge.check;

// 	for (let i = 0; i < check.length; i++){
// 		if(check[i].checked){
// 			ary.push(check[i].value);
// 		}
// 	}
// 	document.getElementById("span1").textContent = ary;
// }


function clickBtn1(){
  const user_answers     = [];
  const question_answers = [];
  const check = document.judge.check;
  
  gon.questions.forEach(question => {
    question_answers.push(question.answer);
  });
  console.log(question_answers);

	for (let i = 0; i < check.length; i++){
		if(check[i].checked){
      user_answers.push(check[i].value);
		}
	}

  document.getElementById("user-answer").textContent = user_answers;

  console.log(user_answers);

  var isEqual = true;
  for (var i = 0; i < user_answers.length; i++) {
      if (user_answers[i] !== question_answers[i]) {
        isEqual = false;
      }else if(user_answers[i] == question_answers[i]) {
        isEqual = true;
      }
      console.log( isEqual );
  }
}

// $(function() {
//   $("#answer-button").on("click", function() {
//     $("#question_answer").hide();
//   });
// });

// $(function() {
//   $("#answer-button").on("click", function() {
//     $("#question_answer").show();
//   });
// });

