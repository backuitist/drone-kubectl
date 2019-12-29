FROM bitnami/kubectl:1.13

COPY init-kubectl kubectl /opt/backuity/kubectl/bin/

USER root

ENV PATH="/opt/backuity/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
