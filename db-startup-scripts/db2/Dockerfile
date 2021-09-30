FROM ibmcom/db2

RUN mkdir /var/custom && \
	mkdir /var/custom/sql && \
	mkdir /var/custom/data 

COPY ./*.sql /var/custom/sql/
COPY ./data/*.csv /var/custom/data/
COPY db2-entrypoint.sh /var/custom/

RUN chmod 444 /var/custom/sql/*.sql  && \
	chmod 444 /var/custom/data/*.csv && \
	chmod a+x /var/custom/db2-entrypoint.sh