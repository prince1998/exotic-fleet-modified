const items = document.querySelectorAll(".accordion a");

function toggleAccordion(){
    this.classList.toggle('active');

    /* This will add class .active to the next sibling, i.e. the <div> with class .content */
    this.nextElementSibling.classList.toggle('active');
}

items.forEach(item => item.addEventListener('click',toggleAccordion));
