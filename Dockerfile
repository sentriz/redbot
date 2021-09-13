FROM python:3.8.3-alpine3.11
RUN \
	apk add --no-cache build-base libffi-dev && \
	wget "https://gitlab.matrix.org/matrix-org/olm/-/archive/master/olm-master.tar.bz2" && \
	tar -xvf olm-master.tar.bz2 && \
	cd olm-master && \
	make && \
	cd python && \
	make olm-python3 && \
	cd .. && \
	make PREFIX="/usr" install && \
	pip install --user --requirement requirements.txt && \
	cd .. && \
	rm -rf olm* && \
	apk del build-base && \
	apk add --no-cache libstdc++
ENV PYTHONUNBUFFERED=1
COPY redbot /
CMD ["/redbot"]
