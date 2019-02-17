#!/bin/bash

curl -X GET --header 'Accept: application/json' 'https://us.api.blizzard.com/data/wow/connected-realm/11/mythic-leaderboard/244/period/684?namespace=dynamic-us&locale=en_US&access_token=USHWZwqq1JLNygdPyusoGANaKFYQjsurIr' >> ../data/output.txt
