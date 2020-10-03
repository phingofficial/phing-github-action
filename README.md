# Phing GITHub Action
Run your Phing Build in your Github Actions.

> **PH**ing **I**s **N**ot **G**NU make; it's a PHP project build system or build tool based on Apache Ant. You can do anything with it that you could do with a traditional build system like GNU make, and its use of simple XML build files and extensible PHP "task" classes make it an easy-to-use and highly flexible build framework.

## Configuration

Create your Github Workflow config in `.github/workflows/build.yml` or similar to run your build against `build.xml`

```
name: CI

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2
      - name: Phing Build
        uses: phingofficial/phing-github-action@main
```

To execute a build with `custom/path/to/build.xml` as a phing build file use:

```
name: CI

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2
      - name: Phing Build
        uses: phingofficial/phing-github-action@main
        with:
            buildfile: custom/path/to/build.xml
```

## Phing in Action

[Example "Phing Build" Project](https://github.com/phingofficial/phing-github-action-example/runs/1203313448?check_suite_focus=true#step:4:9)
