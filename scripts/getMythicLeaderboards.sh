#!/bin/bash
api_token="USHWZwqq1JLNygdPyusoGANaKFYQjsurIr"

#Region Loop


#Connected Realm ID loop
for connectedrealmid in {10,11,12}
do
mkdir -p ../data/MythicLeaderboards/${connectedrealmid}

#Dungon ID loop
for dungeonid in {244,245,246,247,248,249,250,251,252,353}
do
mkdir -p ../data/MythicLeaderboards/${connectedrealmid}/${dungeonid}

#Period loop
for periodid in {680..684} #need to figure out seasons and period IDs.....
do

if [ -e ../data/MythicLeaderboards/${connectedrealmid}/${dungeonid}/${periodid}.json ]; then
    echo "File exists, ../data/MythicLeaderboards/${connectedrealmid}/${dungeonid}/${periodid}.json"
else 
    url="https://us.api.blizzard.com/data/wow/connected-realm/$connectedrealmid/mythic-leaderboard/$dungeonid/period/$periodid?namespace=dynamic-us&locale=en_US&access_token=$api_token"
	echo $url
	curl -X GET --header 'Accept: application/json' "$url" >> ../data/MythicLeaderboards/${connectedrealmid}/${dungeonid}/${periodid}.json
fi 

done
done
done
