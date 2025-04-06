// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Edit eventListener
const checkbox = document.getElementById("completed");
checkbox.addEventListener('click', (event) => {
  console.log(event);
});
