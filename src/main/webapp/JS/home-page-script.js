// Get references to the checkbox and date picker container
const checkbox = document.getElementById('flexSwitchCheckDefault');
const datePickerContainer = document.getElementById('datePickerContainer');

// Add an event listener to the checkbox
checkbox.addEventListener('change', function () {
    // Check if the checkbox is checked (true)
    if (this.checked) {
        // Show the date picker container
        datePickerContainer.style.display = 'block';
    } else {
        // Hide the date picker container
        datePickerContainer.style.display = 'none';
    }
});


function resetSearch() {
    // Clear the input values
    document.getElementById("start-point-name").selectedIndex = 0;
    document.getElementById("degnination-name").selectedIndex = 0;

    document.getElementById("passengerCount").value = "";

    document.getElementById("flexSwitchCheckDefault").checked = false;
    datePickerContainer.style.display = 'none';

    document.getElementById("returnDate").value = "";
    document.getElementById("recevation-date").value = "";

    // Hide the return date vicibilyty off
    document.getElementById("datePickerContainer").style.display = "none";
}


function scrollToBookSeatSection(section) {
    // Get the element with the id "specific-section"
    var section = document.getElementById(section);

    // Check if the element exists
    if (section) {
        // Use the scrollIntoView method to scroll to the element
        section.scrollIntoView({ behavior: "smooth" }); // You can use "auto" instead of "smooth" for instant scrolling
    }
}