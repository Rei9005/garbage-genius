import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert-preference"
export default class extends Controller {
  static targets = ["inputs"]
  connect() {
    console.log("connected")
  }

  toggle(e) {
    console.log(e.currentTarget.value)
    if(e.currentTarget.value === "yes") {
      this.inputsTarget.classList.remove("d-none")
    } else {
      this.inputsTarget.classList.add("d-none")

    }
  }
}
