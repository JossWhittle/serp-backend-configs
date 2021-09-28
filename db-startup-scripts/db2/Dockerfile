FROM ibmcom/db2

RUN mkdir /var/custom
RUN mkdir /var/custom/sql
RUN mkdir /var/custom/data

ARG 

COPY ./*.sql /var/custom/sql/
COPY ./data/*.csv /var/custom/data/
COPY db2-entrypoint.sh /var/custom/

RUN chmod 444 /var/custom/sql/*.sql
RUN chmod 444 /var/custom/data/*.csv
RUN chmod a+x /var/custom/db2-entrypoint.sh