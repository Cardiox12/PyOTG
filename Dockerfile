FROM python:3

COPY setup.sh /
ENTRYPOINT ["/bin/bash", "setup.sh"]
