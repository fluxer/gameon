#!/bin/sh

for i in $(find /lib /usr/lib -name '*.so') /bin/* /sbin/* /usr/bin/* /usr/sbin/*;do
	ldd "$i" 2&> error.log | grep -q $@ && echo $i
done
