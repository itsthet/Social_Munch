import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["button", "recipe"];

  filter(event) {
    console.log("hello");
    const filter = event.target.dataset.filter;

    this.recipeTargets.forEach(recipe => {
      const requirements = recipe.dataset.requirements.split(", ");
      if (filter === 'all' || requirements.includes(filter)) {
        recipe.classList.remove('hidden');
      } else {
        recipe.classList.add('hidden');
      }
    });
  }
}
