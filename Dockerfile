FROM python:3-slim
RUN apt update && apt install -y \
      git \
      build-essential \
      pkg-config \
      libgd-dev \
      libshp-dev
RUN git clone https://www.uninformativ.de/git/asciiworld.git /app/asciiworld
WORKDIR /app/asciiworld
RUN make

FROM python:3-slim
RUN apt update && apt install -y \
      libshp-dev \
      libgd-dev \
      && \
    pip install requests
USER 1001
WORKDIR /app/
COPY --from=0 /app/asciiworld/asciiworld /app/asciiworld/
COPY --from=0 /app/asciiworld/ne_110m_land.shp /app/asciiworld/
COPY --from=0 /app/asciiworld/ne_110m_land.shx /app/asciiworld/
COPY mip.py /app/mip.py
CMD ["/usr/local/bin/python", "/app/mip.py"]
