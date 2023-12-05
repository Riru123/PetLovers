import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="share"
export default class extends Controller {

  static targets = ["clipboard", "checkbox", "button"]

  connect() {
    const url = this.data.get('urlValue')
    this.clipboardTarget.textContent = url;
    this.clipboardTarget.classList.add("d-none");
    this.buttonTarget.classList.add("d-none");
  }

  share() {
    if (this.checkboxTarget.checked == false) {
      this.clipboardTarget.classList.add("d-none");
      this.buttonTarget.classList.add("d-none");

    } else {
      this.clipboardTarget.classList.remove("d-none");
      this.buttonTarget.classList.remove("d-none");

    }
  }

  copyClip() {
    const textToCopy = this.data.get('urlValue');
    navigator.clipboard.writeText(textToCopy).then(() => {
      console.log('Text copied to clipboard');
    }).catch((err) => {
      console.error('Unable to copy text to clipboard', err);
    });
  }
}
