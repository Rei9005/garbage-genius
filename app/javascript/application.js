// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener("DOMContentLoaded", function() {
  var arrowIcon = document.querySelector('.arrow-icon');
  var scrollTopIcon = document.querySelector('.scroll-top-icon');

  window.addEventListener('scroll', function() {
      var pageHeight = document.documentElement.scrollHeight || document.body.scrollHeight;
      if (window.scrollY > pageHeight / 2) {
          arrowIcon.style.display = 'none';
          scrollTopIcon.style.display = 'block';
      } else {
          arrowIcon.style.display = 'block';
          scrollTopIcon.style.display = 'none';
      }
  });

  if (scrollTopIcon) {
      scrollTopIcon.addEventListener("click", function(e) {
          e.preventDefault();
          window.scrollTo({
              top: 0,
              behavior: 'smooth'
          });
      });
  }

  if (arrowIcon) {
      arrowIcon.addEventListener("click", function(e) {
          e.preventDefault();
          window.scrollTo({
              top: document.body.scrollHeight,
              behavior: 'smooth'
          });
      });
  }
});
