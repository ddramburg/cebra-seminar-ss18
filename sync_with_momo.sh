#!/bin/bash
# rsync options: a = archive, u = update, z = zip, P = show Progress
# first get updates from the remote
echo "Fetch from momo"
rsync -auzP momo:~/lehre/seminare/cebra-seminar-ss18/Teilnehmer.ods Teilnehmer.ods
rsync -auzP momo:~/lehre/seminare/cebra-seminar-ss18/literatur/ literatur
rsync -auzP momo:~/lehre/seminare/cebra-seminar-ss18/ausarbeitungen/ ausarbeitungen
# now push updates to the remote
echo "Push to momo"
rsync -auzP Teilnehmer.ods momo:~/lehre/seminare/cebra-seminar-ss18/
rsync -auzP literatur momo:~/lehre/seminare/cebra-seminar-ss18/
rsync -auzP ausarbeitungen momo:~/lehre/seminare/cebra-seminar-ss18/
