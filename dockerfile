FROM nginx:1.18

RUN apt-get update && \
    apt-get install -y procps curl && \
    rm -rf /var/lib/apt/lists/*

COPY . /usr/share/nginx/html

COPY process-monitor.sh /process-monitor.sh
RUN chmod +x /process-monitor.sh

CMD sh -c "/process-monitor.sh & nginx -g 'daemon off;'"
