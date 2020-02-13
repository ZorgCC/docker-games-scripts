#!/bin/bash

echo ${VALVE_GAME_FOLDER}
echo ${VALVE_VOLUME_FOLDER}

ls -las ${VALVE_GAME_FOLDER}
ls -las ${VALVE_VOLUME_FOLDER}

${VALVE_GAME_FOLDER}/7DaysToDieServer.x86_64 -logfile ${VALVE_VOLUME_FOLDER}/7d2d_output_log__`date +%Y-%m-%d__%H-%M-%S`.txt -quit -batchmode -nographics -dedicated -configfile=${VALVE_VOLUME_FOLDER}/serverconfig.xml
