##############################################
# 7d2d dedicated server
##############################################
FROM epicmorg/linux-steamcmd
LABEL maintainer="Guahos, chipmunkzombie@gmail.com"

#Vols, dirs & vars
WORKDIR ${VALVE_GAME_FOLDER}
VOLUME ${VALVE_VOLUME_FOLDER}
ARG STEAM_APP_ID=294420
ENV LD_LIBRARY_PATH ${VALVE_STEAMCMD_FOLDER}/linux64/

#Expose ports
EXPOSE 26900/tcp
EXPOSE 26900/udp
EXPOSE 26901/udp
EXPOSE 26902/udp
EXPOSE 8080/tcp
EXPOSE 8081/tcp

#Install 7d2d dedicated server
RUN steamcmd +login anonymous +force_install_dir ${VALVE_GAME_FOLDER} +app_update $STEAM_APP_ID +quit

#Copy run script and set permissions
COPY serverconfig.xml ${VALVE_VOLUME_FOLDER}/serverconfig.xml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


#Run the server
CMD /entrypoint.sh
ENTRYPOINT ["/usr/bin/tini", "--"]

