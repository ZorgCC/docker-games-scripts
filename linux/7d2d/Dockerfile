##############################################
# 7d2d dedicated server
##############################################
FROM epicmorg/linux-steamcmd
LABEL maintainer="EpicMorg DevTeam, developer@epicm.org"

WORKDIR $VALVE_GAME_FOLDER

#Install 7d2d dedicated server
RUN steamcmd +login anonymous +force_install_dir $VALVE_GAME_FOLDER +app_update 294420 +quit && \
    mkdir $VALVE_VOLUME_FOLDER

#Copy run script and set permissions
COPY run_7d2d.sh $VALVE_GAME_FOLDER/run_7d2d.sh && chmod +x $VALVE_GAME_FOLDER/run_7d2d.sh

#Run the server
ENTRYPOINT $VALVE_GAME_FOLDER/run_7d2d.sh
