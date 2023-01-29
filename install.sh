# Initialize the recipe.
mkdir app \
  && cd app \
  && lando init \
  --source cwd \
  --recipe drupal10 \
  --webroot web \
  --name recommended-project

# Install files, start the container, and install the app.
lando composer create-project --dev nketchum/recommended-project:dev-nketchum.10.1.x tmp && cp -r tmp/. . && rm -rf tmp
lando start
lando drush site:install --db-url=mysql://drupal10:drupal10@database/drupal10 -y
lando info