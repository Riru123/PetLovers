import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["pageName"];

  connect() {
    this.load();
  }

  load() {
    const currentPath = window.location.pathname;
    const pages = this.pageNameTargets;

    pages.forEach(page => {
      const pagePath = page.dataset.page;

      if (pagePath === currentPath) {
        // page.classList.remove("test");
        page.classList.add("fw-bold");
      }
      else {
        // page.classList.add("test");
        page.classList.remove("fw-bold");
      }
    });
  }
}
