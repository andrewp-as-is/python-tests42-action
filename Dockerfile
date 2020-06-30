FROM python:3

LABEL "com.github.actions.name"="tests42"
LABEL "com.github.actions.description"="run scripts in tests/ folder"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/andrewp-as-is/python-tests42-action"
LABEL "homepage"="https://github.com/andrewp-as-is/python-tests42-action"
LABEL "maintainer"="andrewp-as-is"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
