FROM httpd:latest

WORKDIR /demo

COPY . .

RUN rm /usr/local/apache2/htdocs/index.html \
    && cp index.html /usr/local/apache2/htdocs

EXPOSE 80/tcp
