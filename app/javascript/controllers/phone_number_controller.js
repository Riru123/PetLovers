import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="phone-number"
export default class extends Controller {
  static targets = ["number"]

  connect() {
  }

  phone(e) {
    e.preventDefault;
    this.numberTarget.classList.remove("d-none");
  }
}
