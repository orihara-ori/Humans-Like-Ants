# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'bootstrap', to: 'https://ga.jspm.io/npm:bootstrap@5.2.3/dist/js/bootstrap.esm.js'
pin '@popperjs/core', to: 'https://unpkg.com/@popperjs/core@2.11.6/dist/esm/index.js'
pin 'three', to: 'https://ga.jspm.io/npm:three@0.146.0/build/three.module.js'
pin 'three/OrbitControls', to: 'https://ga.jspm.io/npm:three@0.146.0/examples/jsm/controls/OrbitControls.js'
pin 'three/FontLoader', to: "https://ga.jspm.io/npm:three@0.146.0/examples/jsm/loaders/FontLoader.js\n"
pin 'three/TextGeometry', to: 'https://ga.jspm.io/npm:three@0.146.0/examples/jsm/geometries/TextGeometry.js'
pin "three/GLTFLoader", to: "https://ga.jspm.io/npm:three@0.146.0/examples/jsm/loaders/GLTFLoader.js
"
pin 'stats', to: 'https://ga.jspm.io/npm:three@0.146.0/examples/jsm/libs/stats.module.js'
pin 'd3', to: 'https://ga.jspm.io/npm:d3@7.7.0/src/index.js'
pin 'd3-array', to: 'https://ga.jspm.io/npm:d3-array@3.2.0/src/index.js'
pin 'd3-axis', to: 'https://ga.jspm.io/npm:d3-axis@3.0.0/src/index.js'
pin 'd3-brush', to: 'https://ga.jspm.io/npm:d3-brush@3.0.0/src/index.js'
pin 'd3-chord', to: 'https://ga.jspm.io/npm:d3-chord@3.0.1/src/index.js'
pin 'd3-color', to: 'https://ga.jspm.io/npm:d3-color@3.1.0/src/index.js'
pin 'd3-contour', to: 'https://ga.jspm.io/npm:d3-contour@4.0.0/src/index.js'
pin 'd3-delaunay', to: 'https://ga.jspm.io/npm:d3-delaunay@6.0.2/src/index.js'
pin 'd3-dispatch', to: 'https://ga.jspm.io/npm:d3-dispatch@3.0.1/src/index.js'
pin 'd3-drag', to: 'https://ga.jspm.io/npm:d3-drag@3.0.0/src/index.js'
pin 'd3-dsv', to: 'https://ga.jspm.io/npm:d3-dsv@3.0.1/src/index.js'
pin 'd3-ease', to: 'https://ga.jspm.io/npm:d3-ease@3.0.1/src/index.js'
pin 'd3-fetch', to: 'https://ga.jspm.io/npm:d3-fetch@3.0.1/src/index.js'
pin 'd3-force', to: 'https://ga.jspm.io/npm:d3-force@3.0.0/src/index.js'
pin 'd3-format', to: 'https://ga.jspm.io/npm:d3-format@3.1.0/src/index.js'
pin 'd3-geo', to: 'https://ga.jspm.io/npm:d3-geo@3.0.1/src/index.js'
pin 'd3-hierarchy', to: 'https://ga.jspm.io/npm:d3-hierarchy@3.1.2/src/index.js'
pin 'd3-interpolate', to: 'https://ga.jspm.io/npm:d3-interpolate@3.0.1/src/index.js'
pin 'd3-path', to: 'https://ga.jspm.io/npm:d3-path@3.0.1/src/index.js'
pin 'd3-polygon', to: 'https://ga.jspm.io/npm:d3-polygon@3.0.1/src/index.js'
pin 'd3-quadtree', to: 'https://ga.jspm.io/npm:d3-quadtree@3.0.1/src/index.js'
pin 'd3-random', to: 'https://ga.jspm.io/npm:d3-random@3.0.1/src/index.js'
pin 'd3-scale', to: 'https://ga.jspm.io/npm:d3-scale@4.0.2/src/index.js'
pin 'd3-scale-chromatic', to: 'https://ga.jspm.io/npm:d3-scale-chromatic@3.0.0/src/index.js'
pin 'd3-selection', to: 'https://ga.jspm.io/npm:d3-selection@3.0.0/src/index.js'
pin 'd3-shape', to: 'https://ga.jspm.io/npm:d3-shape@3.1.0/src/index.js'
pin 'd3-time', to: 'https://ga.jspm.io/npm:d3-time@3.1.0/src/index.js'
pin 'd3-time-format', to: 'https://ga.jspm.io/npm:d3-time-format@4.1.0/src/index.js'
pin 'd3-timer', to: 'https://ga.jspm.io/npm:d3-timer@3.0.1/src/index.js'
pin 'd3-transition', to: 'https://ga.jspm.io/npm:d3-transition@3.0.1/src/index.js'
pin 'd3-zoom', to: 'https://ga.jspm.io/npm:d3-zoom@3.0.0/src/index.js'
pin 'delaunator', to: 'https://ga.jspm.io/npm:delaunator@5.0.0/index.js'
pin 'internmap', to: 'https://ga.jspm.io/npm:internmap@2.0.3/src/index.js'
pin 'robust-predicates', to: 'https://ga.jspm.io/npm:robust-predicates@3.0.1/index.js'
