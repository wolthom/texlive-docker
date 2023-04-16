FROM ubuntu:22.04

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone
    
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install texlive texlive-xetex texlive-fonts-extra texlive-latex-extra texlive-fonts-recommended xzdec -y \
    && rm -rf /var/lib/apt/lists/*     

RUN apt-get update \
    && apt-get upgrade -y \
    && apt install -y pdftk \
    && apt-get install build-essential -y \
    && apt-get install -y ghostscript-x \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

