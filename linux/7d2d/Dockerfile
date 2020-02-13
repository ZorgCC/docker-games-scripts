FROM epicmorg/steamcmd

WORKDIR $VALVE_GAME_FOLDER

RUN steamcmd +login anonymous +force_install_dir $VALVE_GAME_FOLDER +app_update 294420 +quit && \
CMD $VALVE_GAME_FOLDER/7DaysToDieServer.x86_64 \
    -logfile $VALVE_GAME_FOLDER/7DaysToDieServer_Data/output_log__`date +%Y-%m-%d__%H-%M-%S`.txt \ 
	-quit -batchmode -nographics -dedicated -configfile=$VALVE_STEAMCMD_FOLDER/vol/serverconfig.xml
