FROM nginx:1.21.0-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY conf /etc/nginx/conf.d
COPY uwsgi_params /etc/nginx/uwsgi_params
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf