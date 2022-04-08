import { Controller } from "@hotwired/stimulus"
import { useDebounce } from 'stimulus-use'

export default class extends Controller {
    static targets = [ "disableOnSubmit" ]

  initialize() {
    this.boundDisabler = this.disable.bind(this)
  }

  connect() {
    this.controller_mount = this.element
    this.element.addEventListener('turbo:submit-start', this.boundDisabler)
  }

  disconnect() {
    //this.element.removeEventListener('turbo:submit-end', this.boundDisabler)
  }

  disable() {
    // Prevent double submits and cancels
    if (this.hasDisableOnSubmitTarget)
      this.disableOnSubmitTargets.forEach( (e => { 
        console.log(e.setAttribute('disabled', true))
        console.log(e)
      } ) )
  }
}
