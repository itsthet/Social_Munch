import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typedjs"
export default class extends Controller {
  static targets = [
    "input"
  ]
  connect() {
    console.log(this.inputTarget)
    const typed = new Typed(this.inputTarget, {
      strings: ["Type Your Ingredients ..."],
      typeSpeed: 50,
    });

  //   return () => {
  //     // Destroy Typed instance during cleanup to stop animation
  //     typed.destroy();
  //   };
  // }, [];
  }
}
