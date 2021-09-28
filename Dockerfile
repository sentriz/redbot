FROM alpine:3.14.2
RUN apk add --no-cache build-base libffi-dev python3 python3-dev py3-olm && \
	python3 -m ensurepip && \
	python3 -m pip install --user matrix-nio[e2e] requests && \
	apk del build-base python3-dev
ENV PYTHONUNBUFFERED=1
COPY redbot /
CMD ["/redbot"]
