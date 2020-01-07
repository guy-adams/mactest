FROM openjdk
RUN yum -y install net-tools wget bzip2 unzip logrotate cronie ; yum clean all;
#FROM tomcat:9.0.16-jre11
# Note that the ADD command will transparently extract the files
RUN wget http://li.nux.ro/download/nux/misc/el6/x86_64//macchanger-1.6.0-2.el6.nux.x86_64.rpm
RUN rpm -i macchanger-1.6.0-2.el6.nux.x86_64.rpm
RUN macchanger
ADD start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh
#CMD bash
