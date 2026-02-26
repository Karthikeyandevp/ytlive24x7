ffmpeg -re -stream_loop -1 -i live.mp4 \
vf "scale=1080:1920" \
-c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
-pix_fmt yuv420p -g 50 \
-c:a aac -b:a 128k -ar 44100 \
-f flv rtmp://a.rtmp.youtube.com/live2/zbbu-y8e6-e3bs-ft82-3351
