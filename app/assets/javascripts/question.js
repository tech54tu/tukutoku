function clickBtn1(){
  const user_answers     = [];
  const question_answers = [];
  const judge_answers    = [];
  const check            = document.getElementsByName("check");

// ユーザーの回答を取得
	for (let i = 0; i < check.length; i++){
		if(check[i].checked){
      user_answers.push('○');
    }
    else {
      user_answers.push('×');
    }
	}
  document.getElementById("user-answer").textContent = user_answers;

// DBに保存されている解答を取得
  gon.questions.forEach(question => {
    question_answers.push(question.answer);
  });
  document.getElementById("question-answer").textContent = question_answers;

// ユーザーの回答と問題の解答を比較
  for (var i = 0; i < user_answers.length; i++) {
    if (user_answers[i] == question_answers[i]) {
      judge_answers.push('○');
    }
    else {
      judge_answers.push('×');
    }
  }
  document.getElementById("judge-answer").textContent = judge_answers;
}