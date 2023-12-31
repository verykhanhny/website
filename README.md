This is my website for fun.

The backend is on GCP Cloudrun. It is automatically built and deployed on push to main.
  - git push origin main

The frontend is on GitHub Pages. It is deployed by pushing to the gh-pages subtree.
  - git subtree push --prefix frontend origin gh-pages
