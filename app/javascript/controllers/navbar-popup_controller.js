import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-popup"
export default class extends Controller {
  static targets = ["popup", "navbar", "darkBackground"]
  connect() {
  }
// Code this callback function
  displayPopup(event) {
    // Hide the navbar
    this.navbarTarget.classList.add("d-none");
    console.log("hello")
    // Display the popup
    this.popupTarget.classList.remove("d-none");
    this.darkBackgroundTarget.classList.remove("d-none");

  }
}
