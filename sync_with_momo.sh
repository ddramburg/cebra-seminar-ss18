#!/bin/bash
# rsync options: a = archive, z = zip, P = show Progress
# first get updates from the remote
rsync -azP momo:~/lehre/seminare/cebra-seminar-ss18/Teilnehmer.ods Teilnehmer.ods
rsync -azP momo:~/lehre/seminare/cebra-seminar-ss18/literatur literatur
# now push updates to the remote
rsync -azP Teilnehmer.ods momo:~/lehre/seminare/cebra-seminar-ss18/
rsync -azP literatur momo:~/lehre/seminare/cebra-seminar-ss18/
