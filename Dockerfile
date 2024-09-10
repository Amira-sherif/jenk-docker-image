FROM jenkins/jenkins
USER root
RUN apt-get update && apt-get install -y docker.io
RUN apt-get clean &&rm -rf /var/lib/apt/lists/*
RUN usermod -aG docker jenkins
CMD ["bash","-c","usr/local/bin/jenkins.sh"]
