sh -c 'echo 1 >  /proc/sys/vm/drop_caches'
sh -c 'echo 2 >  /proc/sys/vm/drop_caches' 
sh -c 'echo 3 >  /proc/sys/vm/drop_caches'  
sync && echo 3 > /proc/sys/vm/drop_caches
