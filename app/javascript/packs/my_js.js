document.addEventListener("DOMContentLoaded", function(event) {
    setTimeout(afterTwoSeconds, 2000);

    function afterTwoSeconds() {
        // run this code two seconds after executing run. 
        var elem = document.getElementsByClassName('notification');
        elem[0].remove();
    }

});

console.log('Hello from My JS')

/*$("#showmodal").click(function() {
    $('.modal').addclass('is-active')
        /*$(".modal").toggle("slow", function() {
            // Animation complete.
        });*/