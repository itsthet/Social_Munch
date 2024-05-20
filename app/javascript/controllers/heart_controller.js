import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["item", "recipeId", "favouriteId"];

  connect() {
    console.log("hello from controller");
  }

  send() {
    const recipeId = this.recipeIdTarget.dataset.recipeId;
    const favouriteId = this.favouriteIdTarget.dataset.favouriteId;
    const url = `/recipes/${recipeId}/favourites`;
    const delete_url = `/favourites/${favouriteId}`;
    let isFavorited = this.itemTarget.style.fontWeight != "100";

    console.log(isFavorited);

    const options = {
      method: isFavorited ? "DELETE" : "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector("meta[name='csrf-token']").content
      }
    };

    fetch(isFavorited ? delete_url : url, options)
      .then(response => {
        if (!response.ok) {
          throw new Error('Failed to update favorites');
        }
        return response.json();
      })
      .then(data => {
        console.log(data.favourite_id);
        this.setsFavouriteId(data.favourite_id);
        this.toggleHeartColor();
      })
      .catch(error => console.error('Error:', error));
  }

  setsFavouriteId(id) {
    if (id) {
      this.favouriteIdTarget.dataset.favouriteId = id;
    } else {
      this.favouriteIdTarget.dataset.favouriteId = "";
    }
  }

  toggleHeartColor() {
    if (this.itemTarget.style.fontWeight === "100") {
      this.itemTarget.style.fontWeight = "";
    } else {
      this.itemTarget.style.fontWeight = "100";
    }
  }
}
