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



console.log(displaySelection);
console.log(displayers);
/* <div class="displayer container active">
    <h2 class="title">This is Course-Info</h2>
</div> */