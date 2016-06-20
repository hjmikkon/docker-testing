FROM williamyeh/ansible:centos6

ADD ansible /srv/example
WORKDIR /srv/example
RUN ansible-playbook --version
RUN ansible-playbook mpass-app.yml -c local
EXPOSE 443
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
