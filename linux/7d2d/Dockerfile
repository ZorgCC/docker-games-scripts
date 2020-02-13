FROM epicmorg/steamcmd

WORKDIR $VALVE_GAME_FOLDER

RUN steamcmd +login anonymous +force_install_dir $VALVE_GAME_FOLDER +app_update 294420 +quit
COPY run_7d2d.sh $VALVE_GAME_FOLDER/run_7d2d.sh
CMD $VALVE_GAME_FOLDER/run_7d2d.sh
