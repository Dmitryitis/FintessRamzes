function CountPass(item) {
    var item_view = 'pass_view';
    var item_correct = 'pass_correct';
    document.getElementById(item_view).innerHTML = document.getElementById(item).value.length++;
    if (document.getElementById(item).value.length >= 6) {
        document.getElementById(item_correct).innerHTML = 'uu';
    }
    else {
        document.getElementById(item_correct).innerHTML = 'uu';
    }
}

function CorrectPass(item) {
    var item_pass_value = document.getElementById('pass_id').value;
    var item_pass_length = document.getElementById('pass_id').value.length;
    var item_correct = 'repass_correct';
    if (item_pass_length >= 6) {
        if (document.getElementById(item).value === item_pass_value) {
            document.getElementById(item_correct).innerHTML = 'uu';
            document.getElementById('check_repass').value = 1;
        }
        else if (document.getElementById(item).value.length >= 6) {
            document.getElementById(item_correct).innerHTML = 'uu';
            document.getElementById('check_repass').value = 0;
        }
    }
    checkAll();
}