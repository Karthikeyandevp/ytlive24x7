ffmpeg -re -stream_loop -1 -i live.mp4 \
-c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
-pix_fmt yuv420p -g 50 -c:a aac -b:a 128k \
-f flv rtmp://a.rtmp.youtube.com/live2/wghq-2ghu-dqyj-qaee-5zs4
