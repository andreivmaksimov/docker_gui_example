FROM ubuntu
MAINTAINER Andrey Maksimov 'maksimov.andrei@gmail.com'
RUN apt-get update && \
	apt-get install -y firefox && \
	rm -rf /var/lib/apt/lists/*

CMD [ "firefox" ]
