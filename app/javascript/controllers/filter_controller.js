import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = [ "card" ]

  filter(event) {
    const filterCategory = event.target.innerHTML
    const cards = this.cardTargets
    cards.forEach(function (card) {
      const cardCategory = card.getAttribute('data-category')
      if (cardCategory !== filterCategory) {
        card.style.display = 'none';
      } else {
        card.style.display = '';
      }

    })

  }

  reset() {
    const cards = this.cardTargets
    cards.forEach(function (card) {
      const cardCategory = card.getAttribute('data-category')
        card.style.display = '';
    })
  }
}
