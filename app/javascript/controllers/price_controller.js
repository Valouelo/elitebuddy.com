import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = ["startTime", "endTime", "priceInput"]
  static values = { price: Number }

  calculatePrice() {
    const startTime = new Date(this.startTimeTarget.value)
    const endTime = new Date(this.endTimeTarget.value)
// 
    const millDiff = endTime - startTime
    const daysDiff = millDiff / (1000 * 3600 * 24)

    const pricePerDay = this.priceValue
    const totalPrice = pricePerDay * daysDiff

    this.priceInputTarget.value = totalPrice
  }
}
