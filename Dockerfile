FROM nginx:alpine

# Install inotify-tools at build time
RUN apk add --no-cache inotify-tools

# Start a watcher in the background, keep Nginx in foreground
CMD sh -c "\
    ( while inotifywait -e modify,create,delete /etc/nginx/conf.d; do \
          nginx -s reload; \
      done ) & \
    nginx -g 'daemon off;'"

