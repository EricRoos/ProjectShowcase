import { Controller } from "@hotwired/stimulus"
import { useDebounce } from 'stimulus-use'

export default class extends Controller {
  static debounces = ['change'];
  connect() {
    useDebounce(this, { wait: 500 });
  }

  change(ev) {
    this.element.closest("form").requestSubmit();
  }
}
