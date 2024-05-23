import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["button", "recipe"];

  filter(event) {

    console.log(this.buttonTargets)
    this.buttonTargets.forEach(button => {
      button.classList.remove('active');
    });

    event.target.classList.toggle('active');



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
