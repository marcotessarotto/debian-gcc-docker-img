FROM debian:latest

USER root 

# Install OS dependencies 
RUN apt-get update && apt-get install -yq --no-install-recommends \
    build-essential \
#    emacs \
    git \
    net-tools \
#    netcat \
#    python-dev \
#    tzdata \
    unzip \
    nano \
    openssh-server \
    sudo 
#    && rm -rf /var/lib/apt/lists/*

RUN adduser utente --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "utente:units" | chpasswd

#CMD service ssh start && while true; do sleep 3000; done
CMD ["bash"]

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID


EXPOSE 22
