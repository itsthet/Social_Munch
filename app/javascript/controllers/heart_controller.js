import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["item", "recipeId"]
  connect() {
    console.log("hello from controller")
  }

  send() {
    console.log(this.recipeIdTarget.dataset.recipeId)
    const options = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
         "X-CSRF-Token": document.querySelector("meta[name='csrf-token']").content
      },

    };
    fetch(`/recipes/${this.recipeIdTarget.dataset.recipeId}/favourites`, options);
    console.log("Heart icon clicked!");
    this.toggleHeartColor();
  }

  toggleHeartColor() {

    this.itemTarget.style.fontWeight = "100";
    this.itemTarget.classList.toggle('text-light-green');
    this.itemTarget.classList.toggle('text-dark-green');
  }
}
