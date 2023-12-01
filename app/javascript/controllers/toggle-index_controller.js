import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-index"
export default class extends Controller {
  static targets = ["indexCard", "checkbox", "overlay", "title"]

  connect() {
    const url = `/pets?category=I+lost`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      if (this.checkboxTarget.checked == true) {
        const url = `/pets?category=I+found`
        fetch(url, {headers: {"Accept": "text/plain"}})
        .then(response => response.text())
        .then((data) => {
          this.titleTarget.innerHTML = ('All the found pets around you')
          this.indexCardTarget.innerHTML = (data)
          this.overlayTarget.classList.remove('card-container-index-overlay-missing')
          this.overlayTargets.forEach((overlay) => {
            overlay.classList.add('card-container-index-overlay-found');
          });
        })
      } else {
        const url = `/pets?category=I+lost`
        fetch(url, {headers: {"Accept": "text/plain"}})
        .then(response => response.text())
        .then((data) => {
          this.titleTarget.innerHTML = ('All the missing pets around you')
          this.indexCardTarget.innerHTML = (data)
          this.overlayTarget.classList.remove('card-container-index-overlay-found')
          this.overlayTargets.forEach((overlay) => {
            overlay.classList.add('card-container-index-overlay-missing');
          });
        })
      }
    })
  }


  showLost() {
    if (this.checkboxTarget.checked == true) {
      const url = `/pets?category=I+found`
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.titleTarget.innerHTML = ('All the found pets around you')
        this.indexCardTarget.innerHTML = (data)
        this.overlayTarget.classList.remove('card-container-index-overlay-missing')
        this.overlayTargets.forEach((overlay) => {
          overlay.classList.add('card-container-index-overlay-found');
        });
      })
    } else {
      const url = `/pets?category=I+lost`
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.titleTarget.innerHTML = ('All the missing pets around you')
        this.indexCardTarget.innerHTML = (data)
        this.overlayTarget.classList.remove('card-container-index-overlay-found')
        this.overlayTargets.forEach((overlay) => {
          overlay.classList.add('card-container-index-overlay-missing');
        });
      })
    }

  }

}
