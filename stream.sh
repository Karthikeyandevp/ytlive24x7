ffmpeg -re -stream_loop -1 -i live.mp4 \
-vf "scale=1080:1920:force_original_aspect_ratio=decrease,pad=1080:1920:(ow-iw)/2:(oh-ih)/2" \
-c:v libx264 -preset veryfast -profile:v high -level 4.2 \
-b:v 3000k -maxrate 3000k -bufsize 6000k \
-pix_fmt yuv420p -g 60 \
-c:a aac -b:a 128k -ar 44100 \
-f flv rtmp://a.rtmp.youtube.com/live2/zbbu-y8e6-e3bs-ft82-3351
