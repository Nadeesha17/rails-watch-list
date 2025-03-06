pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# Pin Bootstrap and Popper.js (only once, using CDN)
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true

# Pin Lodash from CDN
pin "lodash", to: "https://cdn.jsdelivr.net/npm/lodash-es@4.17.21/lodash.js"

# FontAwesome
pin "fontawesome", to: "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.0/js/all.min.js"

pin "application", preload: true
pin "application", to: "application.js"
