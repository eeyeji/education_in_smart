/* 이메일 옵션(도메인) 선택 후 도메인 자동 완성  가능*/

function changeEmail(){
    var email_add = document.getElementById('email_add');
    var email_sel = document.getElementById('email_sel');

    //사용자가 선택한 옵션과  순서와 값 구하기 
    var idx = email_sel.options.selectedIndex;
    var val = email_sel.options[idx].value;

    email_add.value = val;
    
}