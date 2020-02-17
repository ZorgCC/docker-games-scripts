##############################################
# 7d2d dedicated server
##############################################
FROM epicmorg/linux-steamcmd
LABEL maintainer="Guahos, chipmunkzombie@gmail.com"

#Steam App ID
ARG STEAM_APP_ID=294420

#Vols & dirs
WORKDIR ${VALVE_GAME_FOLDER}
VOLUME ${VALVE_VOLUME_FOLDER}
ENV LD_LIBRARY_PATH ${VALVE_STEAMCMD_FOLDER}/linux64/
RUN mkdir ${VALVE_VOLUME_FOLDER}/worldsave && chmod 777 ${VALVE_VOLUME_FOLDER}/worldsave && \
    mkdir ${VALVE_VOLUME_FOLDER}/worlddata && chmod 777 ${VALVE_VOLUME_FOLDER}/worlddata

#Expose ports
EXPOSE 26900/tcp
EXPOSE 26900/udp
EXPOSE 26901/udp
EXPOSE 26902/udp
EXPOSE 26903/udp
EXPOSE 8080/tcp
EXPOSE 8081/tcp

#Install 7d2d dedicated server
RUN steamcmd +login anonymous +force_install_dir ${VALVE_GAME_FOLDER} +app_update $STEAM_APP_ID +quit

#Copy run script and set permissions
COPY serverconfig.xml ${VALVE_VOLUME_FOLDER}/serverconfig.xml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


#Run the server
CMD ["/bin/bash", "/entrypoint.sh"]

