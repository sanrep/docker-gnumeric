docker-gnumeric
***************
Docker image ``sanrep/gnumeric`` to use ``gnumeric``, or more specifically ``ssconvert`` tool.

Pull the image::

    $ docker pull sanrep/gnumeric

Run docker container from directory with files to convert::

    $ docker run -it --rm -u $(id -u):$(id -g) -v .:/data sanrep/gnumeric bash

From the container use ``ssconvert`` to convert files::

    $ ssconvert my_file.xls my_file.csv

To close and remove the container::

    $ exit


Building image
==============
Create latest ``sanrep/gnumeric`` image::

    $ docker build -t sanrep/gnumeric:latest .
    $ docker push sanrep/gnumeric
