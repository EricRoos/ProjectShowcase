import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  change(ev) {
    this.element.closest("form").requestSubmit();
  }
}
