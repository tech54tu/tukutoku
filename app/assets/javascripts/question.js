$(document).on('turbolinks:load', function(){
  $('#judge-button').on('click', function(e) {
    let user_answers     = [];
    let question_answers = [];
    let checks           = document.getElementsByName("check");
    let html_user        = `<td class="answer-td"><span>あなたの回答</span></td>`
    let html_question    = `<td class="answer-td"><span>問題の解答</span></td>`
    let html_judge       = `<td class="answer-td"><span>正誤判定</span></td>`
    let html_maru        = `<td class="answer-td center"><span class="maru">○</span></td>`
    let html_batu        = `<td class="answer-td center"><span class="batu">×</span></td>`
    // ユーザーの回答を取得
    $('#user-table').append(html_user)
    for (let i = 0; i < checks.length; i++){
      if(checks[i].checked){
        $('#user-table').append(html_maru)
        user_answers.push('○');
      }
      else {
        $('#user-table').append(html_batu)
        user_answers.push('×');
      }
    }
    // DBに保存されている解答を取得
    $('#question-table').append(html_question)
    gon.questions.forEach(question => {
      if (question.answer == "○"){
        $('#question-table').append(html_maru)
      }
      else {
        $('#question-table').append(html_batu)
      }
      question_answers.push(question.answer);
    });
    // ユーザーの回答とDBの解答を比較
    $('#judge-table').append(html_judge)
    for (let i = 0; i < user_answers.length; i++) {
      if (user_answers[i] == question_answers[i]) {
        $('#judge-table').append(html_maru)
      }
      else {
        $('#judge-table').append(html_batu)
      }
    }
  });
});