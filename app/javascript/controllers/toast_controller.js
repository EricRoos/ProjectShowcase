import { Controller } from "@hotwired/stimulus"
import { useDebounce } from 'stimulus-use'

export default class extends Controller {

  initialize() {
  }

  connect() {
    console.log('connected')
    setTimeout( () => {
      this.element.classList.remove('animate__fadeIn')
      this.element.classList.add('animate__fadeOut')
      this.element.addEventListener('animationend', () => {
        this.element.remove();
      }, { once: true });
    }, 2000);
  }

  disconnect() {
    //this.element.removeEventListener('turbo:submit-end', this.boundDisabler)
  }

}
