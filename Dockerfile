FROM phusion/passenger-ruby30:2.0.0

RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD webapp.conf /etc/nginx/sites-enabled/webapp.conf
RUN mkdir /home/app/webapp

COPY --chown=app:app sample /home/app/webapp
RUN cd /home/app/webapp && /usr/bin/bundle install
