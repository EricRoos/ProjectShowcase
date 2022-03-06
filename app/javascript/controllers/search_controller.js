import { Controller } from "@hotwired/stimulus"
import { useDebounce } from 'stimulus-use'

export default class extends Controller {
  static debounces = ['change'];
  connect() {
    useDebounce(this, { wait: 500 });
    this.search();
  }

  change(ev) {
    this.search();
  }

  search() {
    this.element.closest("form").requestSubmit();
  }
}
