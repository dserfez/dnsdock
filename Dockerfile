FROM frolvlad/alpine-glibc
ADD dnsdock /sbin/dnsdock
CMD ["/sbin/dnsdock"]

