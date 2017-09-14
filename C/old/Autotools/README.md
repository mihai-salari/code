Example of producing a package for public distribution with **Autotools**.

Run ```sh hello_world_auto.conf``` to let Autotools generate all necessary files and the tarball.

User can extract the tarball (e.g. *hello-1.tar.gz* here), and run following commands to install it on their system:
```
./configure
make
sudo make install
```
![Autotools](http://choonsiong.com/public/pic/Autotools.png)

*(from Beginning 21st Century C, 2nd Edition by Ben Klemens O'Reilly. Copyright 2014 Ben Klemens, 978-1-491-90389-6)*