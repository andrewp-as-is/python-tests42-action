# :white_check_mark: python-tests42-action

This GitHub action runs `tests/` scripts

## Usage

```yaml
- uses: actions/checkout@v1
- uses: actions/setup-python@v1
- uses: andrewp-as-is/python-tests42-action@master
```

#### Example:

`.github/workflows/tests42.yml`
```yaml
name: tests42
on: [push, pull_request]
jobs:
  build:
    runs-on: [ubuntu-latest]
    steps:
    - uses: actions/checkout@v1
    - uses: actions/setup-python@v1
    - uses: andrewp-as-is/python-tests42-action@master
```

Windows not supported
