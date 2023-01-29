# Lando for: nketchum/recommended-project
A portable Lando development environment for drupal-based website projects. This
is an optional–but recommended—component for more efficient collaboration.

## Summary
This package contains an installation script that references a
Drupal "recipe" provided by Lando at https://github.com/lando/drupal.
This script inherits from https://docs.lando.dev/drupal/getting-started.html
and includes only one or two customizations. Upon execution, this script
creates the composer project, installs the vendor files, scaffolds the
website, and installs the application.

## Instructions

1. Pull the repository into a working directory:
```
$ git pull nketchum/recommended-project-lando
```

2. Set permissions and execute the installation script.
```
$ chmod +x install.sh
$ ./install.sh
```

3. Monitor the installation and await for the resulting information. Not the
```
$ [success] Installation complete.  User name: admin  User password: <PASSWORD>
```

4. Visit the website at one of the generated urls. The last url in the list is
recommended—it is both secure and excludes port numbers.
```
urls:
 [ 'https://localhost:51509',
   'http://localhost:51510',
   'http://recommended-project.lndo.site:8000/',
   'https://recommended-project.lndo.site/' ]
```