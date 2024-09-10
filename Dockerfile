FROM pytorch/pytorch:2.4.1-cuda12.1-cudnn9-runtime
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
git \
aria2 \
python3-opencv \
python3-pip \
python3-gdbm \
python3-av \
python3-httpx \
python3-joblib \
python3-lark \
python3-matplotlib \
python3-mpmath \
python3-onnx \
python3-pandas \
python3-svglib \
&& apt clean

COPY scripts/.  /scripts/

USER root
VOLUME /root
WORKDIR /root
EXPOSE 8188
ENV CLI_ARGS=""
CMD ["bash","/scripts/entrypoint.sh"]
