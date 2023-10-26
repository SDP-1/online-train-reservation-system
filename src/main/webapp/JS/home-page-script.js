// Get references to the checkbox and date picker container
const checkbox = document.getElementById('flexSwitchCheckDefault');
const datePickerContainer = document.getElementById('datePickerContainer');

// Add an event listener to the checkbox
checkbox.addEventListener('change', function() {
	// Check if the checkbox is checked (true)
	if (this.checked) {
		// Show the date picker container
		datePickerContainer.style.display = 'block';
	} else {
		// Hide the date picker container
		datePickerContainer.style.display = 'none';
	}
});

// Add an event listener to the date input element validation
document.getElementById("recevation-date").addEventListener("change", function() {
    var selectedDate = new Date(this.value);
    var today = new Date();
    var searchButton = document.getElementById("searchButton");

    // Check if the selected date is in the past or today
    if (selectedDate < today) {
        document.getElementById("date-error-message").textContent = "Selected date is invalid.";
        searchButton.disabled = true;
    } else {
        document.getElementById("date-error-message").textContent = "";
        searchButton.disabled = false;
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


// Add an event listener to the first select element
document.getElementById("start-point-name").addEventListener("change", function() {
	// Get the selected option's value
	var selectedValue = this.value;

	// Get the second select element
	var destinationSelect = document.getElementById("degnination-name");

	// Loop through the options in the second select element
	for (var i = 0; i < destinationSelect.options.length; i++) {
		// Check if the option's value matches the selected value in the first select
		if (destinationSelect.options[i].value === selectedValue) {
			// Hide the selected option
			destinationSelect.options[i].style.display = "none";
		} else {
			// Show other options
			destinationSelect.options[i].style.display = "block";
		}
	}
});


// Add an event listener to the second select element
document.getElementById("degnination-name").addEventListener("change", function() {
	// Get the selected option's value
	var selectedValue = this.value;

	// Get the first select element
	var startPointSelect = document.getElementById("start-point-name");

	// Loop through the options in the first select element
	for (var i = 0; i < startPointSelect.options.length; i++) {
		// Check if the option's value matches the selected value in the second select
		if (startPointSelect.options[i].value === selectedValue) {
			// Hide the selected option
			startPointSelect.options[i].style.display = "none";
		} else {
			// Show other options
			startPointSelect.options[i].style.display = "block";
		}
	}
});


// log out conformation model JS 

// When the Logout button is clicked, show the confirmation modal
document.getElementById('logout-button').addEventListener(
	'click', function() {
		$('#logoutModal').modal('show');
	});

// When the confirmation modal's Yes button is clicked, log out and redirect
document.getElementById('confirm-logout').addEventListener(
	'click', function() {
		var form = document.createElement('form');
		form.action = 'LogOutServlet'; // Replace with the actual servlet URL
		form.method = 'POST';

		// Append the form to the document and submit it
		document.body.appendChild(form);
		form.submit();

	});

document.getElementById('close').addEventListener('click',
	function() {
		$('#logoutModal').modal('hide');
	});

document.getElementById('cancel-logout').addEventListener(
	'click', function() {
		$('#logoutModal').modal('hide');
	});

// log out conformation model JS end 














