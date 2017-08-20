FROM jenkins
# if we want to install via apt
USER root
RUN apt-get update
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
# drop back to the regular jenkins user - good practice
USER jenkins