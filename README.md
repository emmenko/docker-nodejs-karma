A [Docker](https://www.docker.com/) container with

- node 0.10 (latest)
- npm 2.7.x
- chrome + firefox for karma headless testing


```bash
# run it

$ docker run emmenko/nodejs-karma:v0.1.3 sh -lc "ps aux |grep Xvfb"
stdin: is not a tty
Starting virtual X frame buffer: Xvfb.
root         1  0.0  0.0   4444  1708 ?        Ss   09:45   0:00 sh -lc ps aux |grep Xvfb
root        12  0.0  0.0   4344   976 ?        R    09:45   0:00 start-stop-daemon --start --quiet --pidfile /var/run/xvfb.pid --make-pidfile --background --exec /usr/bin/Xvfb -- :99 -screen 0 1024x768x24 -ac +extension GLX +render -noreset
root        14  0.0  0.0   4444   120 ?        R    09:45   0:00 sh -lc ps aux |grep Xvfb
```