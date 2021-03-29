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