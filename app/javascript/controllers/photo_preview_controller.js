// app/javascript/controllers/photo_preview_controller.js
import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="photo-preview"
export default class extends Controller {
  // Declare our two targets
  static targets = ["input", "preview"]

  // Code this callback function
  displayPreview(event) {
    const reader = new FileReader();
    reader.onload = (event) => {
      this.previewTarget.src = event.currentTarget.result;
    }
    reader.readAsDataURL(this.inputTarget.files[0])
    this.previewTarget.classList.remove('hidden');
  }
}
