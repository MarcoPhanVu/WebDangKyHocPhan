$( document ).ready(function() {
    const mainDisplaySection = document.querySelector(".displayer-section");
    
    const displaySelection = document.querySelectorAll('[data-target]');
    const displayers = document.querySelectorAll(".displayer");
    
    
    displaySelection.forEach(selection => {
        selection.addEventListener("click", (ev) => {
            // console.log(ev);
            let target = selection.dataset.target;
    
            let displayChoosen = document.querySelector(`[data-destination=${target}]`);
    
            displayers.forEach(display => {
                display.classList.add("hidden");
                display.classList.remove("active");
                
                // Display nào được chọn thì sẽ được hiện
                displayChoosen.classList.add("active");
    
                if (display.classList.contains("active")) {
                    display.classList.remove("hidden");
                }
            });
        });
    });

    $('.course-selector-item').each(function() {
        $(this).on('click', (ev) => { // Highlight the selected course and de-highlight the others
            console.log($(this));
            let selected = $(this).data('coursemain'); // THIS SHIT TAKES LOWERCASE!!!!!
            // let selected = $(this).attr('data-courseMain');
            $('.course-selector-item').each(function() {
                $(this).removeClass('selected');
            });
            $(this).addClass('selected');
            
            
            $.ajax({
                type: 'post',
                url: 'course-item.php'
            });
        });
    });
    
    // console.log(displaySelection);
    // console.log(displayers);
});    


