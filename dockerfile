FROM nginx:latest
COPY . /usr/share/nginx/html
COPY process-monitor.sh /process-monitor.sh
COPY process-monitor.sh /process-monitor.sh
RUN chmod +x /process-monitor.sh
