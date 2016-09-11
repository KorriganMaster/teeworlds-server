FROM ubuntu:latest
MAINTAINER KorriganMaster <contact@korrigansoft.com>
RUN apt-get update && apt-get install -y \
		teeworlds-server
RUN ln -s /usr/games/teeworlds-server /usr/local/bin/teeworlds-server
RUN useradd teeworlds --home /teeworlds --create-home
COPY ./entrypoint.sh /
RUN chmod a+x /entrypoint.sh
COPY ./serverconfig.cfg /teeworlds
RUN mkdir /teeworlds/datas
RUN chown -R teeworlds:teeworlds /teeworlds
USER teeworlds
WORKDIR /teeworlds
EXPOSE 8303/udp
ENTRYPOINT /entrypoint.sh