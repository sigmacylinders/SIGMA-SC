document.addEventListener("DOMContentLoaded", function () {
    var container = document.getElementById("controlAddIn");

    if (!container) {
        console.error("controlAddIn not found.");
        return;
    }

    // Clear existing content (if any)
    container.innerHTML = '';


    // Create button group
    var buttonGroup = document.createElement("div");
    buttonGroup.style.display = "flex";
    buttonGroup.style.gap = "20px";

    // Create buttons
    var btnRequest = document.createElement("button");
    btnRequest.textContent = "Request Quotation";
    btnRequest.className = "logistics-button";
    btnRequest.onclick = function () {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("RequestQuotationClicked", []);
    };

    var btnBooking = document.createElement("button");
    btnBooking.textContent = "Place Booking";
    btnBooking.className = "logistics-button";
    btnBooking.onclick = function () {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("PlaceBookingClicked", []);
    };

    // Add buttons to group
    buttonGroup.appendChild(btnRequest);
    buttonGroup.appendChild(btnBooking);

    // Add group to container
    container.appendChild(buttonGroup);
});