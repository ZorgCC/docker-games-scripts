##############################################
# 7d2d dedicated server
##############################################
FROM epicmorg/linux-steamcmd
LABEL maintainer="Guah0s"

#Install 7d2d dedicated server
RUN steamcmd +login anonymous +force_install_dir ${VALVE_GAME_FOLDER} +app_update 294420 +quit

#Copy run script and set permissions
COPY serverconfig.xml ${VALVE_VOLUME_FOLDER}/serverconfig.xml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR ${VALVE_GAME_FOLDER}

VOLUME ${VALVE_VOLUME_FOLDER}

#Run the server
CMD ["/entrypoint.sh", "-fg"]
ENTRYPOINT ["/usr/bin/tini", "--"]