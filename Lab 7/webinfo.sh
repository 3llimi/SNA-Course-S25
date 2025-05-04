#!/bin/bash


PORT=8080


generate_page() {
    echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"
    echo "<html><body>"
    echo "<h1>System Information</h1>"
    echo "<pre>"
    echo "<b>Uptime:</b>"
    uptime
    echo
    echo "<b>Inode Usage:</b>"
    df -i
    echo
    echo "<b>Memory Usage:</b>"
    free -h
    echo
    echo "<b>Disk Space Usage:</b>"
    df -h
    echo
    echo "<b>Last 15 lines of /var/log/syslog:</b>"
    tail -n 15 /var/log/syslog
    echo "</pre>"
    echo "</body></html>"
}


echo "Starting web server on port $PORT..."
while true; do
    (generate_page) | nc -l -p $PORT -q 1
done
