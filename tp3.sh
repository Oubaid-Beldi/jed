#1
a) 644 rw-r--r--
b) 755 rwxr-xr-x
c) 000 ---------
d) 711 rwx--x--x
e) 700 rwx------
f) 555 r-xr-xr-x
g) 705 rwx---r-x
h) 111 --x--x--x
i) 600 rw-------
j) 731 rwx-wx--x

#2
775 = rwx r-x r-x
   -> rw- --x -w- = 612

#cmd 1)
chmod u-x file

chmod g-r file

chmod o-r file
chmod o-x file
chmod o+w file

#cmd 2)
chmod 612 file

#4

chmod +x cmd

#5

mkdir -p dir{1..3}/subdir && touch dir{1..3}/subdir/file.txt
chmod o=r dir{1..3}/subdir/file.txt
ls -l dir{1..3}/subdir/file.txt

#6

umask

#7

mkdir dir
touch file
ls -l

#8

umask 0077

#9

we need 761 -> rwx rw- --x
default perms are 777
777 - 761 = 0016

umask 0016

#10

umask 0022

#11

echo "quelques caractères" > test

#12

sudo -i
chown root test

#13

chgrp root test

#14

chown jed:root test

#15

exit

#16

nope

#17

nope
