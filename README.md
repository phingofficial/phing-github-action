# <img src="https://raw.githubusercontent.com/phingofficial/phing-github-action/main/action.svg" width="50" /> Phing GITHub Action
Run your Phing Build in your Github Actions.

> **PH**ing **I**s **N**ot **G**NU make; it's a PHP project build system or build tool based on Apache Ant. You can do anything with it that you could do with a traditional build system like GNU make, and its use of simple XML build files and extensible PHP "task" classes make it an easy-to-use and highly flexible build framework.

## Configuration

Create your GITHub Workflow config in `.github/workflows/build.yml` or similar to run your build against `build.xml`

```yaml
name: CI

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2
      - name: Phing Build
        uses: phingofficial/phing-github-action@v1
```

To execute a build with `custom/path/to/build.xml` as a phing build file use:

```yaml
name: CI

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2
      - name: Phing Build
        uses: phingofficial/phing-github-action@v1
        with:
            buildfile: custom/path/to/build.xml
```

Run targets:

```yaml
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
            targets: build deploy
```

Invoke with user properties:

```yaml
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
            user-properties: foo=bar my=self you=too
```

### Control output:

| parameter | description |
|---|---|
| quiet         | be extra quiet                                    |
| silent        | print nothing but task outputs and build failures |
| verbose       | be extra verbose                                  |
| debug         | print debugging information                       |
| emacs         | produce logging information without adornments    |
| longtargets   | show target descriptions during build             |

**It does not matter which value was set to activate the options.
So `verbose: false` will also enable verbose logging.**

```yaml
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
            verbose: true
            debug: true
```

### Versions

By default, the action will use `phing 2.16.3`.
To change that behavior use the action with the `version` parameter.
```yaml
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
            version: 3.0.0-alpha4
```

## Phing in Action

[Example "Phing Build" Project](https://github.com/phingofficial/phing-github-action-example/runs/1203313448?check_suite_focus=true#step:4:9)
