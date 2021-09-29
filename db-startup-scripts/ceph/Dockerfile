# CEPH DAEMON BASE IMAGE
FROM registry.redhat.io/rhceph/rhceph-5-rhel8:latest AS builder

RUN wget -q https://sourceforge.net/projects/s3tools/files/s3cmd/2.1.0/s3cmd-2.1.0.zip && \
	unzip s3cmd-2.1.0.zip && \
	rm s3cmd-2.1.0.zip 

FROM registry.redhat.io/rhceph/rhceph-5-rhel8:latest

COPY --from=builder /s3cmd-2.1.0/ /s3install/
COPY /data/ ./put_from_base/

ARG DEV_BUCKET
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

RUN cd s3install/ && \
 	python3 setup.py install && \
	export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID  && \
	export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

RUN s3cmd mb s3://"testingtesting"