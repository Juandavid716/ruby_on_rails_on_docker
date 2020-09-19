document.addEventListener("DOMContentLoaded", function(event) {
    const btn = document.getElementById('showModal');
    const modalDlg = document.getElementById('image-modal');
    const imageModalCloseBtn = document.getElementById('image-modal-close');
    btn.addEventListener('click', function() {
        modalDlg.classList.add('is-active');
    });

    imageModalCloseBtn.addEventListener('click', function() {
        modalDlg.classList.remove('is-active');
    });
});
console.log('Hello from My JS')

/*$("#showmodal").click(function() {
    $('.modal').addclass('is-active')
        /*$(".modal").toggle("slow", function() {
            // Animation complete.
        });*/