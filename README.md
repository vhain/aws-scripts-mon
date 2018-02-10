##  Dependencies
```
   sudo yum install perl-DateTime perl-CPAN perl-Net-SSLeay perl-IO-Socket-SSL perl-Digest-SHA gcc  \
    zip unzip perl-JSON perl-IO-Zlib  perl-libwww-perl perl-Sys-Syslog perl-LWP-Protocol-https.noarch
```


## Run

```
./mon-put-instance-data.pl --mem-used-incl-cache-buff --mem-util --disk-space-util --count-process --disk-path=/ --from-cron
```