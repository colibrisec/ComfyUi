FROM pytorch/pytorch:2.4.1-cuda12.1-cudnn9-runtime\

RUN apt update && apt install git

COPY scripts/.  /scripts/

USER root
VOLUME /root
WORKDIR /root
EXPOSE 8188
ENV CLI_ARGS=""
CMD ["bash","/scripts/entrypoint.sh"]
