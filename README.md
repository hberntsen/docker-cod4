1. Clone this repository
2. Copy the main and zone folder(except main/video) from an installed and
   patched CoD4 to the cod4 subfolder.
3. Build the docker image, e.g. ```docker build --tag=cod4image .```
4. Run the docker image: ```docker run --user=root -d -p 28960:28960/udp cod4image```
5. Connect to the server!

If you want to customize the server.cfg file you can mount
/home/cod4/main/server.cfg as a volume.
The server binary originates from
http://www.opferlamm-clan.de/wbb2/thread.php?threadid=16895&threadview=0&hilight=&hilightuser=0&page=1
and the punkbuster files from
http://www.pbbans.com/forums/files/call-of-duty-4-linux-file93.html
