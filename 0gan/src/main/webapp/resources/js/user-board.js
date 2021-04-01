  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').innerHTML = '<i class="fas fa-angle-down"></i>';
  } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').innerHTML = '<i class="fas fa-angle-up"></i>';
  }
}

items.forEach(item => item.addEventListener('click', openCloseAnswer));

function valid(){
 	let category = document.form.category.value;
 }
 
 $(document).ready(function(){ var fileTarget = $('.filebox .upload-hidden');
    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }
        $(this).siblings('.upload-name').val(filename);
    });
 });