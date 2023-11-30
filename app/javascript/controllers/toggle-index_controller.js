import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-index"
export default class extends Controller {
  static targets = ["indexCard", "checkbox"]

  connect() {
    const url = `/pets?category=I+lost`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.indexCardTarget.insertAdjacentHTML("beforeend", data)
    })
  }

  showLost() {
    if (this.checkboxTarget.checked == true) {
      const url = `/pets?category=I+found`
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.indexCardTarget.innerHTML = ""
        this.indexCardTarget.insertAdjacentHTML("beforeend", data)
      })
    } else {
      const url = `/pets?category=I+lost`
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.indexCardTarget.innerHTML = ""
        this.indexCardTarget.insertAdjacentHTML("beforeend", data)
      })
    }

  }

}
