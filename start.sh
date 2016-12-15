Xvfb :1 -screen 0 1024x786x24 &
x11vnc -display :1 -bg -nopw -listen 0.0.0.0 -xkb
openbox
