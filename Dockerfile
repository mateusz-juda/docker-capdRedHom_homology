FROM capd/capd-builder-ubuntu_x86:latest

ADD bin/ /usr/local/bin/
ADD lib/ /usr/local/lib/
RUN (cd /usr/local/lib/ && gzip -d libcapdRedHom.so.3.gz)

ENV LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}

CMD /usr/local/bin/capdRedHom_homology
