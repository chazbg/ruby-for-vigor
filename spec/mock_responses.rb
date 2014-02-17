#CHAMPIONS, FELLOW_PLAYERS, GAME_STATS, GAMES, CHALLENGER, ENTRY, LEAGUE, SUMMARY, MASTERIES, RUNES, SUMMONER_BY_NAME, RANKED_STATS, SUMMONER_SPELLS, ITEMS

CHAMPIONS = '{"champions": [
        {
          "botMmEnabled": false,
          "defenseRank": 4,
          "attackRank": 8,
          "id": 266,
          "rankedPlayEnabled": true,
          "name": "Aatrox",
          "botEnabled": false,
          "difficultyRank": 6,
          "active": true,
          "freeToPlay": true,
          "magicRank": 3
        },
        {
            "botMmEnabled": false,
            "defenseRank": 4,
            "attackRank": 3,
            "id": 103,
            "rankedPlayEnabled": true,
            "name": "Ahri",
            "botEnabled": false,
            "difficultyRank": 8,
            "active": true,
            "freeToPlay": false,
            "magicRank": 8
        },
        {
          "botMmEnabled": false,
          "defenseRank": 3,
          "attackRank": 5,
          "id": 84,
          "rankedPlayEnabled": true,
          "name": "Akali",
          "botEnabled": false,
          "difficultyRank": 6,
          "active": true,
          "freeToPlay": false,
          "magicRank": 8
        },
        {
          "botMmEnabled": true,
          "defenseRank": 9,
          "attackRank": 6,
          "id": 12,
          "rankedPlayEnabled": true,
          "name": "Alistar",
          "botEnabled": false,
          "difficultyRank": 8,
          "active": true,
          "freeToPlay": false,
          "magicRank": 5
        }
       ]}'.freeze
 
FELLOW_PLAYERS = '
                [
                  {
                     "championId": 7,
                     "teamId": 100,
                     "summonerId": 19548574
                  },
                  {
                     "championId": 81,
                     "teamId": 100,
                     "summonerId": 19540266
                  },
                  {
                     "championId": 40,
                     "teamId": 100,
                     "summonerId": 20293238
                  },
                  {
                     "championId": 101,
                     "teamId": 200,
                     "summonerId": 19626527
                  },
                  {
                     "championId": 19,
                     "teamId": 200,
                     "summonerId": 22314945
                  },
                  {
                     "championId": 67,
                     "teamId": 200,
                     "summonerId": 20641850
                  },
                  {
                     "championId": 79,
                     "teamId": 200,
                     "summonerId": 25210892
                  },
                  {
                     "championId": 157,
                     "teamId": 200,
                     "summonerId": 22089707
                  },
                  {
                     "championId": 102,
                     "teamId": 100,
                     "summonerId": 19540286
                  }
               ]'
   
GAME_STATS = '{
                  "totalDamageDealtToChampions": 22675,
                  "item2": 3065,
                  "goldEarned": 16974,
                  "item1": 3207,
                  "wardPlaced": 11,
                  "totalDamageTaken": 57617,
                  "item0": 3143,
                  "trueDamageDealtPlayer": 30564,
                  "physicalDamageDealtPlayer": 140410,
                  "trueDamageDealtToChampions": 3213,
                  "killingSprees": 2,
                  "totalUnitsHealed": 1,
                  "level": 18,
                  "neutralMinionsKilledYourJungle": 109,
                  "magicDamageDealtToChampions": 9466,
                  "turretsKilled": 3,
                  "magicDamageDealtPlayer": 73093,
                  "neutralMinionsKilledEnemyJungle": 15,
                  "assists": 17,
                  "magicDamageTaken": 21191,
                  "numDeaths": 7,
                  "totalTimeCrowdControlDealt": 2995,
                  "largestMultiKill": 1,
                  "physicalDamageTaken": 32576,
                  "win": false,
                  "team": 100,
                  "totalDamageDealt": 244069,
                  "largestKillingSpree": 4,
                  "totalHeal": 11236,
                  "item4": 3110,
                  "item3": 3273,
                  "item6": 3350,
                  "item5": 3091,
                  "minionsKilled": 98,
                  "timePlayed": 2788,
                  "physicalDamageDealtToChampions": 9996,
                  "championsKilled": 7,
                  "trueDamageTaken": 3849,
                  "goldSpent": 16840,
                  "neutralMinionsKilled": 124
               }'
GAMES = '{
         "games": [
            {
               "gameType": "MATCHED_GAME",
               "fellowPlayers": [
                  {
                     "championId": 7,
                     "teamId": 100,
                     "summonerId": 19548574
                  },
                  {
                     "championId": 81,
                     "teamId": 100,
                     "summonerId": 19540266
                  },
                  {
                     "championId": 40,
                     "teamId": 100,
                     "summonerId": 20293238
                  },
                  {
                     "championId": 101,
                     "teamId": 200,
                     "summonerId": 19626527
                  },
                  {
                     "championId": 19,
                     "teamId": 200,
                     "summonerId": 22314945
                  },
                  {
                     "championId": 67,
                     "teamId": 200,
                     "summonerId": 20641850
                  },
                  {
                     "championId": 79,
                     "teamId": 200,
                     "summonerId": 25210892
                  },
                  {
                     "championId": 157,
                     "teamId": 200,
                     "summonerId": 22089707
                  },
                  {
                     "championId": 102,
                     "teamId": 100,
                     "summonerId": 19540286
                  }
               ],
               "stats": {
                  "totalDamageDealtToChampions": 22675,
                  "item2": 3065,
                  "goldEarned": 16974,
                  "item1": 3207,
                  "wardPlaced": 11,
                  "totalDamageTaken": 57617,
                  "item0": 3143,
                  "trueDamageDealtPlayer": 30564,
                  "physicalDamageDealtPlayer": 140410,
                  "trueDamageDealtToChampions": 3213,
                  "killingSprees": 2,
                  "totalUnitsHealed": 1,
                  "level": 18,
                  "neutralMinionsKilledYourJungle": 109,
                  "magicDamageDealtToChampions": 9466,
                  "turretsKilled": 3,
                  "magicDamageDealtPlayer": 73093,
                  "neutralMinionsKilledEnemyJungle": 15,
                  "assists": 17,
                  "magicDamageTaken": 21191,
                  "numDeaths": 7,
                  "totalTimeCrowdControlDealt": 2995,
                  "largestMultiKill": 1,
                  "physicalDamageTaken": 32576,
                  "win": false,
                  "team": 100,
                  "totalDamageDealt": 244069,
                  "largestKillingSpree": 4,
                  "totalHeal": 11236,
                  "item4": 3110,
                  "item3": 3273,
                  "item6": 3350,
                  "item5": 3091,
                  "minionsKilled": 98,
                  "timePlayed": 2788,
                  "physicalDamageDealtToChampions": 9996,
                  "championsKilled": 7,
                  "trueDamageTaken": 3849,
                  "goldSpent": 16840,
                  "neutralMinionsKilled": 124
               },
               "gameId": 1320439867,
               "spell1": 11,
               "teamId": 100,
               "spell2": 4,
               "gameMode": "CLASSIC",
               "mapId": 1,
               "level": 30,
               "invalid": false,
               "subType": "NORMAL",
               "championId": 72,
               "createDate": 1392142875153
            },
            {
               "gameType": "MATCHED_GAME",
               "fellowPlayers": [
                  {
                     "championId": 69,
                     "teamId": 200,
                     "summonerId": 31109267
                  },
                  {
                     "championId": 7,
                     "teamId": 200,
                     "summonerId": 24100087
                  },
                  {
                     "championId": 30,
                     "teamId": 100,
                     "summonerId": 21926284
                  },
                  {
                     "championId": 157,
                     "teamId": 200,
                     "summonerId": 21952862
                  },
                  {
                     "championId": 101,
                     "teamId": 200,
                     "summonerId": 30831185
                  },
                  {
                     "championId": 15,
                     "teamId": 100,
                     "summonerId": 42267104
                  },
                  {
                     "championId": 50,
                     "teamId": 100,
                     "summonerId": 20607630
                  },
                  {
                     "championId": 222,
                     "teamId": 200,
                     "summonerId": 20505003
                  },
                  {
                     "championId": 1,
                     "teamId": 100,
                     "summonerId": 31503625
                  }
               ],
               "stats": {
                  "totalDamageDealtToChampions": 12140,
                  "item2": 3110,
                  "barracksKilled": 1,
                  "goldEarned": 15729,
                  "item1": 3273,
                  "wardPlaced": 9,
                  "totalDamageTaken": 30384,
                  "item0": 3140,
                  "trueDamageDealtPlayer": 28678,
                  "physicalDamageDealtPlayer": 113932,
                  "trueDamageDealtToChampions": 1332,
                  "killingSprees": 2,
                  "totalUnitsHealed": 1,
                  "level": 18,
                  "neutralMinionsKilledYourJungle": 86,
                  "magicDamageDealtToChampions": 5243,
                  "turretsKilled": 1,
                  "magicDamageDealtPlayer": 48741,
                  "neutralMinionsKilledEnemyJungle": 32,
                  "assists": 13,
                  "magicDamageTaken": 12216,
                  "numDeaths": 3,
                  "totalTimeCrowdControlDealt": 1751,
                  "largestMultiKill": 1,
                  "physicalDamageTaken": 16759,
                  "team": 100,
                  "win": true,
                  "totalDamageDealt": 191352,
                  "largestKillingSpree": 3,
                  "totalHeal": 8251,
                  "item4": 3209,
                  "item3": 3065,
                  "item6": 3350,
                  "item5": 3091,
                  "minionsKilled": 43,
                  "timePlayed": 2271,
                  "physicalDamageDealtToChampions": 5565,
                  "championsKilled": 7,
                  "trueDamageTaken": 1408,
                  "goldSpent": 14025,
                  "neutralMinionsKilled": 118
               },
               "gameId": 1320344472,
               "spell1": 11,
               "teamId": 100,
               "spell2": 4,
               "gameMode": "CLASSIC",
               "mapId": 1,
               "level": 30,
               "invalid": false,
               "subType": "NORMAL",
               "championId": 72,
               "createDate": 1392137806486
            }
         ],
         "summonerId": 20548044
      }'.freeze

CHALLENGER = '{
   "queue": "RANKED_SOLO_5x5",
   "name": "Miss Fortune\'s Weaponmasters",
   "entries": [
      {
         "isHotStreak": false,
         "isFreshBlood": true,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "29119981",
         "leaguePoints": 296,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "PkD zDEADex",
         "wins": 145
      },
      {
         "isHotStreak": false,
         "isFreshBlood": true,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "37087925",
         "leaguePoints": 300,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "Fury III",
         "wins": 124
      },
      {
         "isHotStreak": false,
         "isFreshBlood": false,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "29326845",
         "leaguePoints": 549,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "Prince Yami",
         "wins": 126
      },
      {
         "isHotStreak": false,
         "isFreshBlood": true,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "20183201",
         "leaguePoints": 275,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "NitriX",
         "wins": 96
      }
    ],
   "tier": "CHALLENGER"
}'.freeze

ENTRY = '[{
   "isHotStreak": false,
   "isFreshBlood": false,
   "leagueName": "Akali\'s Berserkers",
   "isVeteran": false,
   "tier": "DIAMOND",
   "lastPlayed": -1,
   "playerOrTeamId": "20548044",
   "leaguePoints": 0,
   "rank": "V",
   "isInactive": false,
   "queueType": "RANKED_SOLO_5x5",
   "playerOrTeamName": "ChazBG",
   "wins": 55
}]'.freeze

LEAGUE = '
[{
   "queue": "RANKED_SOLO_5x5",
   "name": "Akali\'s Berserkers",
   "participantId": "20548044",
   "entries": [
      {
         "isHotStreak": false,
         "isFreshBlood": false,
         "leagueName": "Akali\'s Berserkers",
         "isVeteran": false,
         "tier": "DIAMOND",
         "lastPlayed": -1,
         "playerOrTeamId": "23767865",
         "leaguePoints": 22,
         "rank": "IV",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "TomPo17",
         "wins": 81
      },
      {
         "isHotStreak": false,
         "isFreshBlood": false,
         "leagueName": "Akali\'s Berserkers",
         "isVeteran": false,
         "tier": "DIAMOND",
         "lastPlayed": -1,
         "playerOrTeamId": "20965636",
         "leaguePoints": 53,
         "rank": "V",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "Korq1",
         "wins": 29
      },
      {
         "isHotStreak": false,
         "isFreshBlood": false,
         "leagueName": "Akali\'s Berserkers",
         "isVeteran": false,
         "tier": "DIAMOND",
         "lastPlayed": -1,
         "playerOrTeamId": "383115",
         "leaguePoints": 0,
         "rank": "V",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "ZelgradiS",
         "wins": 67
      }
      ],
   "tier": "DIAMOND"
}]
      '.freeze
  
SUMMARY = '
{
   "playerStatSummaries": [
      {
         "playerStatSummaryType": "AramUnranked5x5",
         "aggregatedStats": {
            "totalChampionKills": 7,
            "totalAssists": 43,
            "totalTurretsKilled": 1
         },
         "modifyDate": 1389952462000,
         "wins": 0
      },
      {
         "playerStatSummaryType": "CoopVsAI",
         "aggregatedStats": {
            "totalNeutralMinionsKilled": 543,
            "totalMinionKills": 1479,
            "totalChampionKills": 187,
            "totalAssists": 204,
            "totalTurretsKilled": 23
         },
         "modifyDate": 1389952462000,
         "wins": 14
      },
      {
         "playerStatSummaryType": "OdinUnranked",
         "aggregatedStats": {
            "averageNodeCaptureAssist": 1,
            "maxNodeNeutralizeAssist": 5,
            "maxChampionsKilled": 33,
            "totalChampionKills": 1864,
            "averageChampionsKilled": 11,
            "averageNumDeaths": 10,
            "maxNodeCapture": 14,
            "maxObjectivePlayerScore": 1280,
            "maxAssists": 29,
            "averageCombatPlayerScore": 469,
            "maxNodeCaptureAssist": 4,
            "averageObjectivePlayerScore": 657,
            "maxTeamObjective": 2,
            "totalAssists": 1978,
            "averageNodeCapture": 8,
            "maxNodeNeutralize": 12,
            "averageTotalPlayerScore": 1126,
            "averageTeamObjective": 1,
            "averageNodeNeutralize": 6,
            "averageNodeNeutralizeAssist": 1,
            "maxTotalPlayerScore": 2343,
            "averageAssists": 11,
            "maxCombatPlayerScore": 1303,
            "totalNodeNeutralize": 643,
            "totalNodeCapture": 784
         },
         "modifyDate": 1389952462000,
         "wins": 86
      },
      {
         "playerStatSummaryType": "RankedPremade3x3",
         "aggregatedStats": {},
         "losses": 0,
         "modifyDate": 1347564241000,
         "wins": 0
      },
      {
         "playerStatSummaryType": "RankedSolo5x5",
         "aggregatedStats": {
            "totalNeutralMinionsKilled": 5251,
            "totalMinionKills": 7480,
            "totalChampionKills": 504,
            "totalAssists": 902,
            "totalTurretsKilled": 87
         },
         "losses": 40,
         "modifyDate": 1391576544000,
         "wins": 55
      },
      {
         "playerStatSummaryType": "RankedTeam5x5",
         "aggregatedStats": {},
         "losses": 0,
         "modifyDate": 1336222629000,
         "wins": 0
      },
      {
         "playerStatSummaryType": "Unranked",
         "aggregatedStats": {
            "totalNeutralMinionsKilled": 94145,
            "totalMinionKills": 182233,
            "totalChampionKills": 11278,
            "totalAssists": 18586,
            "totalTurretsKilled": 1682
         },
         "modifyDate": 1392114075000,
         "wins": 1269
      },
      {
         "playerStatSummaryType": "Unranked3x3",
         "aggregatedStats": {
            "totalNeutralMinionsKilled": 392,
            "totalMinionKills": 621,
            "totalChampionKills": 35,
            "totalAssists": 55,
            "totalTurretsKilled": 2
         },
         "modifyDate": 1389952462000,
         "wins": 3
      }
   ],
   "summonerId": 20548044
}
'.freeze

MASTERIES = '
{"20548044": {
   "pages": [
      {
         "id": 34435171,
         "talents": [
            {
               "id": 4311,
               "rank": 1,
               "name": "Phasewalker"
            },
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4322,
               "rank": 3,
               "name": "Summoner\'s Insight"
            },
            {
               "id": 4332,
               "rank": 1,
               "name": "Runic Affinity"
            },
            {
               "id": 4323,
               "rank": 1,
               "name": "Strength of Spirit"
            },
            {
               "id": 4113,
               "rank": 4,
               "name": "Sorcery"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4123,
               "rank": 3,
               "name": "Mental Force"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4313,
               "rank": 3,
               "name": "Meditation"
            },
            {
               "id": 4133,
               "rank": 1,
               "name": "Arcane Mastery"
            },
            {
               "id": 4143,
               "rank": 3,
               "name": "Archmage"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            },
            {
               "id": 4131,
               "rank": 1,
               "name": "Spell Weaving"
            }
         ],
         "name": "Mastery Page 1",
         "current": false
      },
      {
         "id": 34435172,
         "talents": [
            {
               "id": 4233,
               "rank": 3,
               "name": "Hardiness"
            },
            {
               "id": 4242,
               "rank": 1,
               "name": "Swiftness"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4213,
               "rank": 2,
               "name": "Enchanted Armor"
            },
            {
               "id": 4251,
               "rank": 1,
               "name": "Second Wind"
            },
            {
               "id": 4114,
               "rank": 1,
               "name": "Butcher"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4113,
               "rank": 4,
               "name": "Sorcery"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4123,
               "rank": 3,
               "name": "Mental Force"
            },
            {
               "id": 4262,
               "rank": 1,
               "name": "Tenacious"
            },
            {
               "id": 4241,
               "rank": 3,
               "name": "Perseverance"
            },
            {
               "id": 4133,
               "rank": 1,
               "name": "Arcane Mastery"
            },
            {
               "id": 4234,
               "rank": 1,
               "name": "Resistance"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            }
         ],
         "name": "Amumu",
         "current": false
      },
      {
         "id": 34435173,
         "talents": [
            {
               "id": 4212,
               "rank": 2,
               "name": "Recovery"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4141,
               "rank": 1,
               "name": "Blade Weaving"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4142,
               "rank": 3,
               "name": "Warlord"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            },
            {
               "id": 4112,
               "rank": 3,
               "name": "Fury"
            },
            {
               "id": 4131,
               "rank": 1,
               "name": "Spell Weaving"
            }
         ],
         "name": "AD",
         "current": false
      },
      {
         "id": 34435174,
         "talents": [
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4154,
               "rank": 1,
               "name": "Arcane Blade"
            },
            {
               "id": 4114,
               "rank": 1,
               "name": "Butcher"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4113,
               "rank": 4,
               "name": "Sorcery"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4123,
               "rank": 3,
               "name": "Mental Force"
            },
            {
               "id": 4141,
               "rank": 1,
               "name": "Blade Weaving"
            },
            {
               "id": 4224,
               "rank": 1,
               "name": "Bladed Armor"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4133,
               "rank": 1,
               "name": "Arcane Mastery"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            },
            {
               "id": 4131,
               "rank": 1,
               "name": "Spell Weaving"
            }
         ],
         "name": "Eve J0ngle",
         "current": false
      },
      {
         "id": 34435175,
         "talents": [
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4114,
               "rank": 1,
               "name": "Butcher"
            },
            {
               "id": 4112,
               "rank": 4,
               "name": "Fury"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4142,
               "rank": 3,
               "name": "Warlord"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            }
         ],
         "name": "Jungle 21/9/0",
         "current": false
      },
      {
         "id": 34435176,
         "talents": [
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4234,
               "rank": 3,
               "name": "Resistance"
            },
            {
               "id": 4251,
               "rank": 1,
               "name": "Second Wind"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4113,
               "rank": 4,
               "name": "Sorcery"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4231,
               "rank": 1,
               "name": "Oppression"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4241,
               "rank": 3,
               "name": "Perseverance"
            },
            {
               "id": 4233,
               "rank": 1,
               "name": "Hardiness"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            }
         ],
         "name": "LeeJ0ngle",
         "current": false
      },
      {
         "id": 34435177,
         "talents": [
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4213,
               "rank": 2,
               "name": "Enchanted Armor"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4113,
               "rank": 4,
               "name": "Sorcery"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4123,
               "rank": 3,
               "name": "Mental Force"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4133,
               "rank": 1,
               "name": "Arcane Mastery"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            },
            {
               "id": 4131,
               "rank": 1,
               "name": "Spell Weaving"
            }
         ],
         "name": "Elise",
         "current": false
      },
      {
         "id": 34435178,
         "talents": [
            {
               "id": 4212,
               "rank": 2,
               "name": "Recovery"
            },
            {
               "id": 4233,
               "rank": 3,
               "name": "Hardiness"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4251,
               "rank": 1,
               "name": "Second Wind"
            },
            {
               "id": 4114,
               "rank": 1,
               "name": "Butcher"
            },
            {
               "id": 4112,
               "rank": 4,
               "name": "Fury"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4262,
               "rank": 1,
               "name": "Tenacious"
            },
            {
               "id": 4252,
               "rank": 3,
               "name": "Legendary Guardian"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4234,
               "rank": 1,
               "name": "Resistance"
            },
            {
               "id": 4241,
               "rank": 3,
               "name": "Perseverance"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            }
         ],
         "name": "Supp2",
         "current": false
      },
      {
         "id": 34435179,
         "talents": [
            {
               "id": 4212,
               "rank": 2,
               "name": "Recovery"
            },
            {
               "id": 4353,
               "rank": 3,
               "name": "Intelligence"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4362,
               "rank": 1,
               "name": "Wanderer"
            },
            {
               "id": 4322,
               "rank": 3,
               "name": "Summoner\'s Insight"
            },
            {
               "id": 4334,
               "rank": 1,
               "name": "Culinary Master"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4314,
               "rank": 1,
               "name": "Scout"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4331,
               "rank": 3,
               "name": "Greed"
            },
            {
               "id": 4324,
               "rank": 1,
               "name": "Alchemist"
            },
            {
               "id": 4312,
               "rank": 3,
               "name": "Fleet of Foot"
            },
            {
               "id": 4313,
               "rank": 3,
               "name": "Meditation"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4342,
               "rank": 1,
               "name": "Wealth"
            },
            {
               "id": 4341,
               "rank": 1,
               "name": "Scavenger"
            }
         ],
         "name": "Mastery Page 9",
         "current": false
      },
      {
         "id": 34435180,
         "talents": [
            {
               "id": 4233,
               "rank": 3,
               "name": "Hardiness"
            },
            {
               "id": 4242,
               "rank": 1,
               "name": "Swiftness"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4213,
               "rank": 2,
               "name": "Enchanted Armor"
            },
            {
               "id": 4251,
               "rank": 1,
               "name": "Second Wind"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4113,
               "rank": 4,
               "name": "Sorcery"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4252,
               "rank": 1,
               "name": "Legendary Guardian"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4262,
               "rank": 1,
               "name": "Tenacious"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4241,
               "rank": 3,
               "name": "Perseverance"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            }
         ],
         "name": "Olaf",
         "current": false
      },
      {
         "id": 34435181,
         "talents": [
            {
               "id": 4212,
               "rank": 2,
               "name": "Recovery"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4113,
               "rank": 4,
               "name": "Sorcery"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4144,
               "rank": 1,
               "name": "Dangerous Game"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4123,
               "rank": 3,
               "name": "Mental Force"
            },
            {
               "id": 4141,
               "rank": 1,
               "name": "Blade Weaving"
            },
            {
               "id": 4143,
               "rank": 1,
               "name": "Archmage"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4133,
               "rank": 1,
               "name": "Arcane Mastery"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            },
            {
               "id": 4131,
               "rank": 1,
               "name": "Spell Weaving"
            }
         ],
         "name": "Kat",
         "current": false
      },
      {
         "id": 34435182,
         "talents": [
            {
               "id": 4242,
               "rank": 1,
               "name": "Swiftness"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4213,
               "rank": 2,
               "name": "Enchanted Armor"
            },
            {
               "id": 4251,
               "rank": 1,
               "name": "Second Wind"
            },
            {
               "id": 4114,
               "rank": 1,
               "name": "Butcher"
            },
            {
               "id": 4112,
               "rank": 4,
               "name": "Fury"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4252,
               "rank": 1,
               "name": "Legendary Guardian"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4262,
               "rank": 1,
               "name": "Tenacious"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4234,
               "rank": 1,
               "name": "Resistance"
            },
            {
               "id": 4241,
               "rank": 3,
               "name": "Perseverance"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4233,
               "rank": 2,
               "name": "Hardiness"
            }
         ],
         "name": "Jungle 9/21/0",
         "current": false
      },
      {
         "id": 34435183,
         "talents": [
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4213,
               "rank": 2,
               "name": "Enchanted Armor"
            },
            {
               "id": 4212,
               "rank": 1,
               "name": "Recovery"
            },
            {
               "id": 4114,
               "rank": 1,
               "name": "Butcher"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4123,
               "rank": 3,
               "name": "Mental Force"
            },
            {
               "id": 4141,
               "rank": 1,
               "name": "Blade Weaving"
            },
            {
               "id": 4133,
               "rank": 1,
               "name": "Arcane Mastery"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4143,
               "rank": 3,
               "name": "Archmage"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            },
            {
               "id": 4112,
               "rank": 3,
               "name": "Fury"
            },
            {
               "id": 4131,
               "rank": 1,
               "name": "Spell Weaving"
            }
         ],
         "name": "Mastery Page 13",
         "current": false
      },
      {
         "id": 34435184,
         "talents": [
            {
               "id": 4212,
               "rank": 2,
               "name": "Recovery"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4121,
               "rank": 1,
               "name": "Expose Weakness"
            },
            {
               "id": 4134,
               "rank": 3,
               "name": "Executioner"
            },
            {
               "id": 4151,
               "rank": 1,
               "name": "Frenzy"
            },
            {
               "id": 4112,
               "rank": 4,
               "name": "Fury"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4122,
               "rank": 3,
               "name": "Brute Force"
            },
            {
               "id": 4152,
               "rank": 3,
               "name": "Devastating Strikes"
            },
            {
               "id": 4111,
               "rank": 1,
               "name": "Double-Edged Sword"
            },
            {
               "id": 4132,
               "rank": 1,
               "name": "Martial Mastery"
            },
            {
               "id": 4142,
               "rank": 3,
               "name": "Warlord"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            },
            {
               "id": 4162,
               "rank": 1,
               "name": "Havoc"
            }
         ],
         "name": "EZTF",
         "current": false
      },
      {
         "id": 34435185,
         "talents": [
            {
               "id": 4313,
               "rank": 2,
               "name": "Meditation"
            },
            {
               "id": 4242,
               "rank": 1,
               "name": "Swiftness"
            },
            {
               "id": 4211,
               "rank": 2,
               "name": "Block"
            },
            {
               "id": 4214,
               "rank": 2,
               "name": "Tough Skin"
            },
            {
               "id": 4322,
               "rank": 3,
               "name": "Summoner\'s Insight"
            },
            {
               "id": 4332,
               "rank": 1,
               "name": "Runic Affinity"
            },
            {
               "id": 4251,
               "rank": 1,
               "name": "Second Wind"
            },
            {
               "id": 4222,
               "rank": 3,
               "name": "Veteran\'s Scars"
            },
            {
               "id": 4221,
               "rank": 1,
               "name": "Unyielding"
            },
            {
               "id": 4262,
               "rank": 1,
               "name": "Tenacious"
            },
            {
               "id": 4231,
               "rank": 1,
               "name": "Oppression"
            },
            {
               "id": 4252,
               "rank": 3,
               "name": "Legendary Guardian"
            },
            {
               "id": 4312,
               "rank": 3,
               "name": "Fleet of Foot"
            },
            {
               "id": 4241,
               "rank": 3,
               "name": "Perseverance"
            },
            {
               "id": 4234,
               "rank": 1,
               "name": "Resistance"
            },
            {
               "id": 4233,
               "rank": 1,
               "name": "Hardiness"
            },
            {
               "id": 4232,
               "rank": 1,
               "name": "Juggernaut"
            }
         ],
         "name": "Skarner",
         "current": true
      }
   ],
   "summonerId": 20548044
}}
'.freeze

RUNES = '
{"20548044": {
   "pages": [
      {
         "id": 14188064,
         "slots": [
            {
               "runeSlotId": 1,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 2,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 3,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 4,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 5,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 6,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 7,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 8,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 9,
               "rune": {
                  "id": 5245,
                  "description": "+0.95 attack damage",
                  "name": "Greater Mark of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 10,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 11,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 12,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 13,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 14,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 15,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 16,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 17,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 18,
               "rune": {
                  "id": 5317,
                  "description": "+1.41 armor",
                  "name": "Greater Seal of Armor",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 19,
               "rune": {
                  "id": 5290,
                  "description": "+0.15 magic resist per level (+2.7 at champion level 18)",
                  "name": "Greater Glyph of Scaling Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 20,
               "rune": {
                  "id": 5290,
                  "description": "+0.15 magic resist per level (+2.7 at champion level 18)",
                  "name": "Greater Glyph of Scaling Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 21,
               "rune": {
                  "id": 5290,
                  "description": "+0.15 magic resist per level (+2.7 at champion level 18)",
                  "name": "Greater Glyph of Scaling Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 22,
               "rune": {
                  "id": 5290,
                  "description": "+0.15 magic resist per level (+2.7 at champion level 18)",
                  "name": "Greater Glyph of Scaling Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 23,
               "rune": {
                  "id": 5290,
                  "description": "+0.15 magic resist per level (+2.7 at champion level 18)",
                  "name": "Greater Glyph of Scaling Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 24,
               "rune": {
                  "id": 5289,
                  "description": "+1.34 magic resist",
                  "name": "Greater Glyph of Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 25,
               "rune": {
                  "id": 5289,
                  "description": "+1.34 magic resist",
                  "name": "Greater Glyph of Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 26,
               "rune": {
                  "id": 5289,
                  "description": "+1.34 magic resist",
                  "name": "Greater Glyph of Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 27,
               "rune": {
                  "id": 5289,
                  "description": "+1.34 magic resist",
                  "name": "Greater Glyph of Magic Resist",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 28,
               "rune": {
                  "id": 5335,
                  "description": "+2.25 attack damage",
                  "name": "Greater Quintessence of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 29,
               "rune": {
                  "id": 5335,
                  "description": "+2.25 attack damage",
                  "name": "Greater Quintessence of Attack Damage",
                  "tier": 3
               }
            },
            {
               "runeSlotId": 30,
               "rune": {
                  "id": 5335,
                  "description": "+2.25 attack damage",
                  "name": "Greater Quintessence of Attack Damage",
                  "tier": 3
               }
            }
         ],
         "name": "FullAd",
         "current": false
      }
   ],
   "summonerId": 20548044
}}
'.freeze

SUMMONER_BY_NAME = '
  {"chazbg": {
     "id": 20548044,
     "name": "ChazBG",
     "profileIconId": 585,
     "revisionDate": 1392114075000,
     "summonerLevel": 30
  }}
'.freeze

RANKED_STATS = '
{
   "modifyDate": 1391576544000,
   "champions": [
      {
         "id": 115,
         "stats": {
            "totalDeathsPerSession": 7,
            "totalSessionsPlayed": 3,
            "totalDamageTaken": 46320,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 727,
            "maxChampionsKilled": 6,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 51465,
            "totalChampionKills": 12,
            "totalAssists": 24,
            "mostChampionKillsPerSession": 6,
            "totalDamageDealt": 683189,
            "totalFirstBlood": 0,
            "totalSessionsLost": 2,
            "totalSessionsWon": 1,
            "totalMagicDamageDealt": 631722,
            "totalGoldEarned": 38691,
            "totalPentaKills": 0,
            "totalTurretsKilled": 3,
            "mostSpellsCast": 0,
            "maxNumDeaths": 4,
            "totalUnrealKills": 0
         },
         "name": "Ziggs"
      },
      {
         "id": 72,
         "stats": {
            "totalDeathsPerSession": 8,
            "totalSessionsPlayed": 3,
            "totalDamageTaken": 67220,
            "totalQuadraKills": 0,
            "totalTripleKills": 1,
            "totalMinionKills": 99,
            "maxChampionsKilled": 4,
            "totalDoubleKills": 1,
            "totalPhysicalDamageDealt": 221543,
            "totalChampionKills": 10,
            "totalAssists": 32,
            "mostChampionKillsPerSession": 4,
            "totalDamageDealt": 355468,
            "totalFirstBlood": 0,
            "totalSessionsLost": 1,
            "totalSessionsWon": 2,
            "totalMagicDamageDealt": 97462,
            "totalGoldEarned": 29732,
            "totalPentaKills": 0,
            "totalTurretsKilled": 3,
            "mostSpellsCast": 0,
            "maxNumDeaths": 6,
            "totalUnrealKills": 0
         },
         "name": "Skarner"
      },
      {
         "id": 117,
         "stats": {
            "totalDeathsPerSession": 40,
            "totalSessionsPlayed": 12,
            "totalDamageTaken": 244379,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 436,
            "maxChampionsKilled": 4,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 160252,
            "totalChampionKills": 29,
            "totalAssists": 148,
            "mostChampionKillsPerSession": 4,
            "totalDamageDealt": 604824,
            "totalFirstBlood": 0,
            "totalSessionsLost": 3,
            "totalSessionsWon": 9,
            "totalMagicDamageDealt": 432604,
            "totalGoldEarned": 111665,
            "totalPentaKills": 0,
            "totalTurretsKilled": 6,
            "mostSpellsCast": 0,
            "maxNumDeaths": 6,
            "totalUnrealKills": 0
         },
         "name": "Lulu"
      },
      {
         "id": 254,
         "stats": {
            "totalDeathsPerSession": 81,
            "totalSessionsPlayed": 22,
            "totalDamageTaken": 551887,
            "totalQuadraKills": 0,
            "totalTripleKills": 1,
            "totalMinionKills": 954,
            "maxChampionsKilled": 14,
            "totalDoubleKills": 11,
            "totalPhysicalDamageDealt": 3346884,
            "totalChampionKills": 149,
            "totalAssists": 209,
            "mostChampionKillsPerSession": 14,
            "totalDamageDealt": 3929460,
            "totalFirstBlood": 0,
            "totalSessionsLost": 6,
            "totalSessionsWon": 16,
            "totalMagicDamageDealt": 205959,
            "totalGoldEarned": 273608,
            "totalPentaKills": 0,
            "totalTurretsKilled": 18,
            "mostSpellsCast": 0,
            "maxNumDeaths": 7,
            "totalUnrealKills": 0
         },
         "name": "Vi"
      },
      {
         "id": 48,
         "stats": {
            "totalDeathsPerSession": 4,
            "totalSessionsPlayed": 2,
            "totalDamageTaken": 64203,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 362,
            "maxChampionsKilled": 9,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 222337,
            "totalChampionKills": 16,
            "totalAssists": 19,
            "mostChampionKillsPerSession": 9,
            "totalDamageDealt": 236742,
            "totalFirstBlood": 0,
            "totalSessionsLost": 0,
            "totalSessionsWon": 2,
            "totalMagicDamageDealt": 10054,
            "totalGoldEarned": 24964,
            "totalPentaKills": 0,
            "totalTurretsKilled": 7,
            "mostSpellsCast": 0,
            "maxNumDeaths": 2,
            "totalUnrealKills": 0
         },
         "name": "Trundle"
      },
      {
         "id": 81,
         "stats": {
            "totalDeathsPerSession": 49,
            "totalSessionsPlayed": 15,
            "totalDamageTaken": 336443,
            "totalQuadraKills": 1,
            "totalTripleKills": 4,
            "totalMinionKills": 3052,
            "maxChampionsKilled": 14,
            "totalDoubleKills": 10,
            "totalPhysicalDamageDealt": 1833675,
            "totalChampionKills": 99,
            "totalAssists": 116,
            "mostChampionKillsPerSession": 14,
            "totalDamageDealt": 2285633,
            "totalFirstBlood": 0,
            "totalSessionsLost": 7,
            "totalSessionsWon": 8,
            "totalMagicDamageDealt": 432824,
            "totalGoldEarned": 191814,
            "totalPentaKills": 0,
            "totalTurretsKilled": 28,
            "mostSpellsCast": 0,
            "maxNumDeaths": 6,
            "totalUnrealKills": 0
         },
         "name": "Ezreal"
      },
      {
         "id": 79,
         "stats": {
            "totalDeathsPerSession": 12,
            "totalSessionsPlayed": 2,
            "totalDamageTaken": 47960,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 389,
            "maxChampionsKilled": 11,
            "totalDoubleKills": 3,
            "totalPhysicalDamageDealt": 39370,
            "totalChampionKills": 21,
            "totalAssists": 17,
            "mostChampionKillsPerSession": 11,
            "totalDamageDealt": 355555,
            "totalFirstBlood": 0,
            "totalSessionsLost": 1,
            "totalSessionsWon": 1,
            "totalMagicDamageDealt": 314764,
            "totalGoldEarned": 28026,
            "totalPentaKills": 0,
            "totalTurretsKilled": 2,
            "mostSpellsCast": 0,
            "maxNumDeaths": 10,
            "totalUnrealKills": 0
         },
         "name": "Gragas"
      },
      {
         "id": 59,
         "stats": {
            "totalDeathsPerSession": 18,
            "totalSessionsPlayed": 5,
            "totalDamageTaken": 126326,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 203,
            "maxChampionsKilled": 6,
            "totalDoubleKills": 1,
            "totalPhysicalDamageDealt": 486510,
            "totalChampionKills": 16,
            "totalAssists": 54,
            "mostChampionKillsPerSession": 6,
            "totalDamageDealt": 708343,
            "totalFirstBlood": 0,
            "totalSessionsLost": 1,
            "totalSessionsWon": 4,
            "totalMagicDamageDealt": 141278,
            "totalGoldEarned": 53562,
            "totalPentaKills": 0,
            "totalTurretsKilled": 1,
            "mostSpellsCast": 0,
            "maxNumDeaths": 7,
            "totalUnrealKills": 0
         },
         "name": "JarvanIV"
      },
      {
         "id": 412,
         "stats": {
            "totalDeathsPerSession": 52,
            "totalSessionsPlayed": 7,
            "totalDamageTaken": 163023,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 147,
            "maxChampionsKilled": 4,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 63458,
            "totalChampionKills": 17,
            "totalAssists": 91,
            "mostChampionKillsPerSession": 4,
            "totalDamageDealt": 187478,
            "totalFirstBlood": 0,
            "totalSessionsLost": 5,
            "totalSessionsWon": 2,
            "totalMagicDamageDealt": 117240,
            "totalGoldEarned": 58283,
            "totalPentaKills": 0,
            "totalTurretsKilled": 3,
            "mostSpellsCast": 0,
            "maxNumDeaths": 11,
            "totalUnrealKills": 0
         },
         "name": "Thresh"
      },
      {
         "id": 53,
         "stats": {
            "totalDeathsPerSession": 11,
            "totalSessionsPlayed": 1,
            "totalDamageTaken": 30694,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 19,
            "maxChampionsKilled": 0,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 8056,
            "totalChampionKills": 0,
            "totalAssists": 8,
            "mostChampionKillsPerSession": 0,
            "totalDamageDealt": 31939,
            "totalFirstBlood": 0,
            "totalSessionsLost": 1,
            "totalSessionsWon": 0,
            "totalMagicDamageDealt": 22822,
            "totalGoldEarned": 6680,
            "totalPentaKills": 0,
            "totalTurretsKilled": 0,
            "mostSpellsCast": 0,
            "maxNumDeaths": 11,
            "totalUnrealKills": 0
         },
         "name": "Blitzcrank"
      },
      {
         "id": 64,
         "stats": {
            "totalDeathsPerSession": 43,
            "totalSessionsPlayed": 8,
            "totalDamageTaken": 282425,
            "totalQuadraKills": 0,
            "totalTripleKills": 1,
            "totalMinionKills": 329,
            "maxChampionsKilled": 13,
            "totalDoubleKills": 5,
            "totalPhysicalDamageDealt": 867546,
            "totalChampionKills": 56,
            "totalAssists": 76,
            "mostChampionKillsPerSession": 13,
            "totalDamageDealt": 1386988,
            "totalFirstBlood": 0,
            "totalSessionsLost": 5,
            "totalSessionsWon": 3,
            "totalMagicDamageDealt": 367448,
            "totalGoldEarned": 99824,
            "totalPentaKills": 0,
            "totalTurretsKilled": 5,
            "mostSpellsCast": 0,
            "maxNumDeaths": 10,
            "totalUnrealKills": 0
         },
         "name": "LeeSin"
      },
      {
         "id": 61,
         "stats": {
            "totalDeathsPerSession": 3,
            "totalSessionsPlayed": 1,
            "totalDamageTaken": 11190,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 153,
            "maxChampionsKilled": 3,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 17263,
            "totalChampionKills": 3,
            "totalAssists": 8,
            "mostChampionKillsPerSession": 3,
            "totalDamageDealt": 128911,
            "totalFirstBlood": 0,
            "totalSessionsLost": 0,
            "totalSessionsWon": 1,
            "totalMagicDamageDealt": 111647,
            "totalGoldEarned": 10605,
            "totalPentaKills": 0,
            "totalTurretsKilled": 2,
            "mostSpellsCast": 0,
            "maxNumDeaths": 3,
            "totalUnrealKills": 0
         },
         "name": "Orianna"
      },
      {
         "id": 60,
         "stats": {
            "totalDeathsPerSession": 52,
            "totalSessionsPlayed": 10,
            "totalDamageTaken": 269683,
            "totalQuadraKills": 0,
            "totalTripleKills": 2,
            "totalMinionKills": 454,
            "maxChampionsKilled": 15,
            "totalDoubleKills": 7,
            "totalPhysicalDamageDealt": 538675,
            "totalChampionKills": 69,
            "totalAssists": 75,
            "mostChampionKillsPerSession": 15,
            "totalDamageDealt": 1665594,
            "totalFirstBlood": 0,
            "totalSessionsLost": 5,
            "totalSessionsWon": 5,
            "totalMagicDamageDealt": 1023381,
            "totalGoldEarned": 125843,
            "totalPentaKills": 0,
            "totalTurretsKilled": 8,
            "mostSpellsCast": 0,
            "maxNumDeaths": 11,
            "totalUnrealKills": 0
         },
         "name": "Elise"
      },
      {
         "id": 2,
         "stats": {
            "totalDeathsPerSession": 2,
            "totalSessionsPlayed": 1,
            "totalDamageTaken": 18935,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 32,
            "maxChampionsKilled": 3,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 99358,
            "totalChampionKills": 3,
            "totalAssists": 1,
            "mostChampionKillsPerSession": 3,
            "totalDamageDealt": 127935,
            "totalFirstBlood": 0,
            "totalSessionsLost": 1,
            "totalSessionsWon": 0,
            "totalMagicDamageDealt": 3720,
            "totalGoldEarned": 7444,
            "totalPentaKills": 0,
            "totalTurretsKilled": 1,
            "mostSpellsCast": 0,
            "maxNumDeaths": 2,
            "totalUnrealKills": 0
         },
         "name": "Olaf"
      },
      {
         "id": 32,
         "stats": {
            "totalDeathsPerSession": 2,
            "totalSessionsPlayed": 1,
            "totalDamageTaken": 29860,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 46,
            "maxChampionsKilled": 0,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 22130,
            "totalChampionKills": 0,
            "totalAssists": 16,
            "mostChampionKillsPerSession": 0,
            "totalDamageDealt": 183969,
            "totalFirstBlood": 0,
            "totalSessionsLost": 0,
            "totalSessionsWon": 1,
            "totalMagicDamageDealt": 147524,
            "totalGoldEarned": 12015,
            "totalPentaKills": 0,
            "totalTurretsKilled": 0,
            "mostSpellsCast": 0,
            "maxNumDeaths": 2,
            "totalUnrealKills": 0
         },
         "name": "Amumu"
      },
      {
         "id": 62,
         "stats": {
            "totalDeathsPerSession": 8,
            "totalSessionsPlayed": 2,
            "totalDamageTaken": 36914,
            "totalQuadraKills": 0,
            "totalTripleKills": 0,
            "totalMinionKills": 78,
            "maxChampionsKilled": 3,
            "totalDoubleKills": 0,
            "totalPhysicalDamageDealt": 138309,
            "totalChampionKills": 4,
            "totalAssists": 8,
            "mostChampionKillsPerSession": 3,
            "totalDamageDealt": 162549,
            "totalFirstBlood": 0,
            "totalSessionsLost": 2,
            "totalSessionsWon": 0,
            "totalMagicDamageDealt": 4865,
            "totalGoldEarned": 12116,
            "totalPentaKills": 0,
            "totalTurretsKilled": 0,
            "mostSpellsCast": 0,
            "maxNumDeaths": 5,
            "totalUnrealKills": 0
         },
         "name": "MonkeyKing"
      },
      {
         "id": 0,
         "stats": {
            "totalDamageTaken": 2327462,
            "totalTripleKills": 9,
            "totalMinionKills": 7480,
            "maxChampionsKilled": 15,
            "maxLargestCriticalStrike": 821,
            "totalChampionKills": 504,
            "totalPhysicalDamageDealt": 8116831,
            "rankedPremadeGamesPlayed": 0,
            "totalSessionsLost": 40,
            "totalNeutralMinionsKilled": 5251,
            "totalSessionsWon": 55,
            "totalMagicDamageDealt": 4065314,
            "maxLargestKillingSpree": 13,
            "totalPentaKills": 0,
            "maxTimeSpentLiving": 1806,
            "totalDeathsPerSession": 392,
            "totalQuadraKills": 1,
            "totalSessionsPlayed": 95,
            "totalDoubleKills": 38,
            "totalAssists": 902,
            "maxTimePlayed": 2858,
            "mostChampionKillsPerSession": 15,
            "totalDamageDealt": 13034577,
            "botGamesPlayed": 0,
            "killingSpree": 277,
            "totalFirstBlood": 0,
            "rankedSoloGamesPlayed": 0,
            "totalHeal": 484669,
            "totalGoldEarned": 1084872,
            "mostSpellsCast": 0,
            "totalTurretsKilled": 87,
            "maxNumDeaths": 11,
            "totalUnrealKills": 0,
            "normalGamesPlayed": 0
         },
         "name": "Combined"
      }
   ],
   "summonerId": 20548044
}
'.freeze

SUMMONER_SPELLS = '
{
   "data": {
      "SummonerBoost": {
         "id": "SummonerBoost",
         "description": "Removes all disables and summoner spell debuffs affecting your champion and lowers the duration of incoming disables by 65% for 3 seconds.",
         "name": "Cleanse",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL",
            "ARAM"
         ],
         "summonerLevel": 2
      },
      "SummonerTeleport": {
         "id": "SummonerTeleport",
         "description": "After casting for 4 seconds, teleports your champion to target allied minion, turret, or ward.",
         "name": "Teleport",
         "modes": [
            "CLASSIC",
            "TUTORIAL"
         ],
         "summonerLevel": 2
      },
      "SummonerDot": {
         "id": "SummonerDot",
         "description": "Ignites target enemy champion, dealing 70-410 true damage (depending on champion level) over 5 seconds and reduces healing effects on the target for the duration.",
         "name": "Ignite",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL",
            "ARAM"
         ],
         "summonerLevel": 8
      },
      "SummonerHaste": {
         "id": "SummonerHaste",
         "description": "Your champion can move through units and has 27% increased Movement Speed for 10 seconds",
         "name": "Ghost",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL",
            "ARAM"
         ],
         "summonerLevel": 1
      },
      "SummonerHeal": {
         "id": "SummonerHeal",
         "description": "Restores 90-345 Health (depending on champion level) to your champion and to nearby allies.",
         "name": "Heal",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL",
            "ARAM"
         ],
         "summonerLevel": 1
      },
      "SummonerRevive": {
         "id": "SummonerRevive",
         "description": "Instantly revives your champion at your team\'s Summoner Platform and increases their Movement Speed for a short duration.",
         "name": "Revive",
         "modes": [
            "CLASSIC",
            "TUTORIAL",
            "ODIN"
         ],
         "summonerLevel": 1
      },
      "SummonerExhaust": {
         "id": "SummonerExhaust",
         "description": "Exhausts target enemy champion, reducing their Movement Speed and damage dealt by 30% for 2.5 seconds and reduces their Attack Speed by 50% for the duration.",
         "name": "Exhaust",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL",
            "ARAM"
         ],
         "summonerLevel": 8
      },
      "SummonerSmite": {
         "id": "SummonerSmite",
         "description": "Deals 390-1000 true damage (depending on champion level) to target monster or enemy minion.",
         "name": "Smite",
         "modes": [
            "CLASSIC",
            "TUTORIAL",
            "ODIN"
         ],
         "summonerLevel": 3
      },
      "SummonerMana": {
         "id": "SummonerMana",
         "description": "Restores 40% of your champion\'s maximum Mana. Also restores allies for 40% of their maximum Mana",
         "name": "Clarity",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL",
            "ARAM"
         ],
         "summonerLevel": 1
      },
      "SummonerBarrier": {
         "id": "SummonerBarrier",
         "description": "Shields your champion for 115-455 (depending on champion level) for 2 seconds.",
         "name": "Barrier",
         "modes": [
            "ARAM",
            "CLASSIC",
            "TUTORIAL",
            "ODIN"
         ],
         "summonerLevel": 6
      },
      "SummonerClairvoyance": {
         "id": "SummonerClairvoyance",
         "description": "Reveals a small area of the map for your team for 5 seconds.",
         "name": "Clairvoyance",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL"
         ],
         "summonerLevel": 10
      },
      "SummonerFlash": {
         "id": "SummonerFlash",
         "description": "Teleports your champion a short distance toward your cursor\'s location.",
         "name": "Flash",
         "modes": [
            "CLASSIC",
            "ODIN",
            "TUTORIAL",
            "ARAM"
         ],
         "summonerLevel": 12
      },
      "SummonerOdinGarrison": {
         "id": "SummonerOdinGarrison",
         "description": "Allied Turret: Grants massive regeneration for 8 seconds. Enemy Turret: Reduces damage dealt by 80% for 8 seconds.",
         "name": "Garrison",
         "modes": ["ODIN"],
         "summonerLevel": 1
      }
   },
   "type": "summoner",
   "version": "4.2.6"
}
'.freeze

ITEMS = '
  {
   "basic": {
      "tags": null,
      "plaintext": null,
      "stats": {
         "rFlatArmorModPerLevel": 0,
         "rFlatSpellBlockModPerLevel": 0,
         "rFlatPhysicalDamageModPerLevel": 0,
         "rFlatTimeDeadMod": 0,
         "rFlatTimeDeadModPerLevel": 0,
         "rFlatCritDamageModPerLevel": 0,
         "rFlatMagicDamageModPerLevel": 0,
         "rFlatCritChanceModPerLevel": 0,
         "rFlatDodgeModPerLevel": 0,
         "rPercentMagicPenetrationModPerLevel": 0,
         "rFlatHPModPerLevel": 0,
         "rPercentMovementSpeedModPerLevel": 0,
         "rPercentMagicPenetrationMod": 0,
         "rPercentTimeDeadModPerLevel": 0,
         "rFlatHPRegenModPerLevel": 0,
         "rFlatGoldPer10Mod": 0,
         "rPercentAttackSpeedModPerLevel": 0,
         "rFlatMagicPenetrationMod": 0,
         "rPercentArmorPenetrationMod": 0,
         "rFlatMPRegenModPerLevel": 0,
         "rFlatDodgeMod": 0,
         "rFlatArmorPenetrationModPerLevel": 0,
         "rFlatMagicPenetrationModPerLevel": 0,
         "rPercentTimeDeadMod": 0,
         "rPercentCooldownModPerLevel": 0,
         "rFlatMovementSpeedModPerLevel": 0,
         "rPercentCooldownMod": 0,
         "rPercentArmorPenetrationModPerLevel": 0,
         "rFlatMPModPerLevel": 0,
         "rFlatArmorPenetrationMod": 0
      },
      "consumeOnFull": false,
      "into": null,
      "image": null,
      "colloq": ";",
      "stacks": 1,
      "from": null,
      "rune": {
         "tier": "1",
         "type": "red"
      },
      "depth": 1,
      "requiredChampion": null,
      "inStore": true,
      "specialRecipe": 0,
      "consumed": false,
      "maps": {
         "10": true,
         "1": true,
         "8": true,
         "12": true
      },
      "hideFromAll": false,
      "description": null,
      "name": null,
      "gold": {
         "total": 0,
         "purchasable": false,
         "sell": 0,
         "base": 0
      },
      "group": null
   },
   "data": {
      "3089": {
         "plaintext": "Massively increases Ability Power",
         "name": "Rabadon\'s Deathcap"
      },
      "2009": {"name": "Total Biscuit of Rejuvenation"},
      "3087": {
         "plaintext": "Movement builds charges that release chain lightning on basic attack",
         "name": "Statikk Shiv"
      },
      "3086": {
         "plaintext": "Slight bonuses to Critical Strike Chance, Movement Speed and Attack Speed",
         "name": "Zeal",
         "into": [
            "3046",
            "3078",
            "3087"
         ]
      },
      "2004": {
         "plaintext": "Consume to restore Mana over time",
         "name": "Mana Potion",
         "group": "ManaPotion"
      },
      "3085": {
         "plaintext": "Ranged attacks fire two bolts at nearby enemies",
         "name": "Runaan\'s Hurricane (Ranged Only)"
      },
      "3280": {
         "name": "Enchantment: Homeguard",
         "group": "BootsHomeguard"
      },
      "3084": {
         "plaintext": "Restores Health on kill or assist",
         "name": "Overlord\'s Bloodmail"
      },
      "3083": {
         "plaintext": "Grants massive Health and Health Regen",
         "name": "Warmog\'s Armor"
      },
      "2003": {
         "plaintext": "Consume to restore Health over time",
         "name": "Health Potion",
         "group": "HealthPotion"
      },
      "3282": {
         "name": "Enchantment: Furor",
         "group": "BootsFuror"
      },
      "3082": {
         "plaintext": "Slows Attack Speed of enemy champions when receiving basic attacks",
         "name": "Warden\'s Mail",
         "into": [
            "3110",
            "3143"
         ]
      },
      "3281": {
         "name": "Enchantment: Captain",
         "group": "BootsCaptain"
      },
      "3284": {
         "name": "Enchantment: Alacrity",
         "group": "BootsAlacrity"
      },
      "3283": {
         "name": "Enchantment: Distortion",
         "group": "BootsDistortion"
      },
      "3278": {
         "name": "Enchantment: Distortion",
         "group": "BootsDistortion"
      },
      "3279": {
         "name": "Enchantment: Alacrity",
         "group": "BootsAlacrity"
      },
      "2010": {
         "name": "Total Biscuit of Rejuvenation",
         "group": "HealthPotion"
      },
      "3098": {
         "plaintext": "Grants gold when you damage an enemy with a Spell or Attack",
         "name": "Frostfang",
         "into": ["3092"],
         "group": "GoldBase"
      },
      "1080": {
         "plaintext": "Moderately increases damage dealt to neutral monsters",
         "name": "Spirit Stone",
         "into": [
            "3206",
            "3207",
            "3209"
         ]
      },
      "3290": {
         "plaintext": "Summon wraiths to slow and reveal enemy champions",
         "name": "Twin Shadows"
      },
      "3097": {
         "plaintext": "Periodically kill enemy minions to heal and grant gold to a nearby ally",
         "name": "Targon\'s Brace",
         "into": ["3401"],
         "group": "GoldBase"
      },
      "3096": {
         "plaintext": "Grants gold when nearby enemy minions die, Health Regen and Mana Regen",
         "name": "Nomad\'s Medallion",
         "into": [
            "3069",
            "3222"
         ],
         "group": "GoldBase"
      },
      "3091": {
         "plaintext": "Deals bonus magic damage on basic attacks",
         "name": "Wit\'s End"
      },
      "3090": {
         "plaintext": "Massively increases Ability Power and can be activated to enter stasis",
         "name": "Wooglet\'s Witchcap"
      },
      "3093": {
         "plaintext": "Grants gold over time and additional gold on kill",
         "name": "Avarice Blade",
         "into": [
            "3142",
            "3005",
            "3087",
            "3123"
         ]
      },
      "3092": {
         "plaintext": "Chills target opponent, dealing damage and slowing Movement Speed",
         "name": "Frost Queen\'s Claim",
         "group": "GoldBase"
      },
      "1063": {
         "plaintext": "Good starting item for casters",
         "name": "Prospector\'s Ring"
      },
      "1062": {
         "plaintext": "Good starting item for attackers",
         "name": "Prospector\'s Blade"
      },
      "1058": {
         "plaintext": "Greatly increases Ability Power",
         "name": "Needlessly Large Rod",
         "into": [
            "3089",
            "3157",
            "3128"
         ]
      },
      "1056": {
         "plaintext": "Good starting item for casters",
         "name": "Doran\'s Ring"
      },
      "1057": {
         "plaintext": "Moderately increases Magic Resist",
         "name": "Negatron Cloak",
         "into": [
            "3001",
            "3140",
            "3180",
            "3112",
            "3026",
            "3211",
            "3170"
         ]
      },
      "3110": {
         "plaintext": "Massively increases Armor and slows enemy basic attacks",
         "name": "Frozen Heart"
      },
      "3111": {
         "plaintext": "Increases Movement Speed and reduces duration of disabling effects",
         "name": "Mercury\'s Treads",
         "into": [
            "3269",
            "3268",
            "3267",
            "3266",
            "3265"
         ]
      },
      "3112": {
         "plaintext": "Grants a shield when out of combat",
         "name": "Orb of Winter"
      },
      "3106": {
         "plaintext": "Basic attacks kill minions and monsters quickly",
         "name": "Madred\'s Razors",
         "into": ["3154"]
      },
      "3108": {
         "plaintext": "Increases Ability Power and Cooldown Reduction",
         "name": "Fiendish Codex",
         "into": [
            "3115",
            "3174",
            "3165",
            "3128",
            "3060",
            "3188",
            "3187",
            "3206"
         ]
      },
      "3102": {
         "plaintext": "Periodically blocks enemy abilities",
         "name": "Banshee\'s Veil"
      },
      "3105": {
         "plaintext": "Improves defenses for nearby allies",
         "name": "Aegis of the Legion",
         "into": ["3190"]
      },
      "3104": {
         "plaintext": "Massively enhances critical strikes",
         "name": "Lord Van Damm\'s Pillager"
      },
      "3100": {
         "plaintext": "Grants a bonus to next attack after spell cast",
         "name": "Lich Bane"
      },
      "3250": {
         "name": "Enchantment: Homeguard",
         "group": "BootsHomeguard"
      },
      "3101": {
         "plaintext": "Increased Attack Speed and Cooldown Reduction",
         "name": "Stinger",
         "into": [
            "3115",
            "3172"
         ]
      },
      "3251": {
         "name": "Enchantment: Captain",
         "group": "BootsCaptain"
      },
      "3254": {
         "name": "Enchantment: Alacrity",
         "group": "BootsAlacrity"
      },
      "3255": {
         "name": "Enchantment: Homeguard",
         "group": "BootsHomeguard"
      },
      "3252": {
         "name": "Enchantment: Furor",
         "group": "BootsFuror"
      },
      "3253": {
         "name": "Enchantment: Distortion",
         "group": "BootsDistortion"
      },
      "3263": {
         "name": "Enchantment: Distortion",
         "group": "BootsDistortion"
      },
      "3264": {
         "name": "Enchantment: Alacrity",
         "group": "BootsAlacrity"
      },
      "3265": {
         "name": "Enchantment: Homeguard",
         "group": "BootsHomeguard"
      },
      "3266": {
         "name": "Enchantment: Captain",
         "group": "BootsCaptain"
      },
      "3260": {
         "name": "Enchantment: Homeguard",
         "group": "BootsHomeguard"
      },
      "3261": {
         "name": "Enchantment: Captain",
         "group": "BootsCaptain"
      },
      "3262": {
         "name": "Enchantment: Furor",
         "group": "BootsFuror"
      },
      "3361": {
         "plaintext": "Periodically place a Stealth Ward",
         "name": "Greater Stealth Totem (Trinket)",
         "group": "RelicBase"
      },
      "3362": {
         "plaintext": "Periodically place a Vision Ward",
         "name": "Greater Vision Totem (Trinket)",
         "group": "RelicBase"
      },
      "3363": {
         "plaintext": "Disables nearby invisible wards and trap and grants true sight briefly",
         "name": "Farsight Orb (Trinket)",
         "group": "RelicBase"
      },
      "3364": {
         "plaintext": "Briefly reveals a targetted area",
         "name": "Oracle\'s Lens (Trinket)",
         "group": "RelicBase"
      },
      "3257": {
         "name": "Enchantment: Furor",
         "group": "BootsFuror"
      },
      "3256": {
         "name": "Enchantment: Captain",
         "group": "BootsCaptain"
      },
      "3259": {
         "name": "Enchantment: Alacrity",
         "group": "BootsAlacrity"
      },
      "3258": {
         "name": "Enchantment: Distortion",
         "group": "BootsDistortion"
      },
      "3276": {
         "name": "Enchantment: Captain",
         "group": "BootsCaptain"
      },
      "3277": {
         "name": "Enchantment: Furor",
         "group": "BootsFuror"
      },
      "3274": {
         "name": "Enchantment: Alacrity",
         "group": "BootsAlacrity"
      },
      "3275": {
         "name": "Enchantment: Homeguard",
         "group": "BootsHomeguard"
      },
      "3272": {
         "name": "Enchantment: Furor",
         "group": "BootsFuror"
      },
      "3273": {
         "name": "Enchantment: Distortion",
         "group": "BootsDistortion"
      },
      "3270": {
         "name": "Enchantment: Homeguard",
         "group": "BootsHomeguard"
      },
      "3271": {
         "name": "Enchantment: Captain",
         "group": "BootsCaptain"
      },
      "3269": {
         "name": "Enchantment: Alacrity",
         "group": "BootsAlacrity"
      },
      "3268": {
         "name": "Enchantment: Distortion",
         "group": "BootsDistortion"
      },
      "3267": {
         "name": "Enchantment: Furor",
         "group": "BootsFuror"
      },
      "1004": {
         "plaintext": "Slightly increases Mana Regen",
         "name": "Faerie Charm",
         "into": [
            "3152",
            "3028",
            "3070",
            "3073",
            "1080",
            "3069",
            "3165"
         ]
      },
      "1001": {
         "plaintext": "Slightly increases Movement Speed",
         "name": "Boots of Speed",
         "into": [
            "3006",
            "3047",
            "3020",
            "3158",
            "3111",
            "3117",
            "3009"
         ],
         "group": "BootsNormal"
      },
      "3146": {
         "plaintext": "Increases Attack Damage and Ability Power, activate to slow a target",
         "name": "Hextech Gunblade"
      },
      "1006": {
         "plaintext": "Slightly increases Health Regen",
         "name": "Rejuvenation Bead",
         "into": [
            "3077",
            "3097",
            "3112",
            "3083",
            "1080",
            "2051",
            "3105"
         ]
      },
      "3005": {
         "plaintext": "Increases Attack Damage based on maximum Health",
         "name": "Atma\'s Impaler"
      },
      "3006": {
         "plaintext": "Enhances Movement Speed and Attack Speed",
         "name": "Berserker\'s Greaves",
         "into": [
            "3254",
            "3253",
            "3252",
            "3251",
            "3250"
         ]
      },
      "3003": {
         "plaintext": "Increases Ability Power based on maximum Mana",
         "name": "Archangel\'s Staff",
         "into": ["3040"]
      },
      "3004": {
         "plaintext": "Increases Attack Damage based on maximum Mana",
         "name": "Manamune",
         "into": ["3042"]
      },
      "3009": {
         "plaintext": "Enhances Movement Speed and reduces the effect of slows",
         "name": "Boots of Swiftness",
         "into": [
            "3284",
            "3283",
            "3282",
            "3281",
            "3280"
         ]
      },
      "3007": {
         "plaintext": "Increases Ability Power based on maximum Mana",
         "name": "Archangel\'s Staff (Crystal Scar)",
         "into": ["3048"]
      },
      "3008": {
         "plaintext": "Increases Attack Damage based on maximum Mana",
         "name": "Manamune (Crystal Scar)",
         "into": ["3043"]
      },
      "3342": {
         "plaintext": "Briefly reveals a targeted area",
         "name": "Scrying Orb (Trinket)",
         "into": ["3352"],
         "group": "RelicBase"
      },
      "3341": {
         "plaintext": "Detects and disables nearby invisible wards and traps",
         "name": "Sweeping Lens (Trinket)",
         "into": ["3351"],
         "group": "RelicBase"
      },
      "3340": {
         "plaintext": "Periodically place a Stealth Ward",
         "name": "Warding Totem (Trinket)",
         "into": ["3350"],
         "group": "RelicBase"
      },
      "3010": {
         "plaintext": "Restores Health and Mana upon leveling up",
         "name": "Catalyst the Protector",
         "into": [
            "3027",
            "3029",
            "3180"
         ]
      },
      "3156": {
         "plaintext": "Grants bonus Attack Damage when Health is low",
         "name": "Maw of Malmortius"
      },
      "3155": {
         "plaintext": "Increases Attack Damage and Magic Resist",
         "name": "Hexdrinker",
         "into": ["3156"]
      },
      "3154": {
         "plaintext": "Kills monsters quickly and gain more gold, activate to place a ward",
         "name": "Wriggle\'s Lantern",
         "group": "GoldBase"
      },
      "3153": {
         "plaintext": "Deals damage based on target\'s Health, can steal Health and Movement Speed",
         "name": "Blade of the Ruined King"
      },
      "1011": {
         "plaintext": "Greatly increases Health",
         "name": "Giant\'s Belt",
         "into": [
            "3083",
            "3022",
            "3068",
            "3116",
            "3084",
            "3143"
         ]
      },
      "3152": {
         "plaintext": "Grants Spell Vamp and Ability Power",
         "name": "Will of the Ancients"
      },
      "3200": {
         "plaintext": "Increases Ability Power and can be upgraded to improve Viktor\'s abilities",
         "name": "The Hex Core",
         "into": [
            "3196",
            "3197",
            "3198"
         ]
      },
      "3151": {
         "plaintext": "Spell damage burns enemies for a portion of their Health",
         "name": "Liandry\'s Torment"
      },
      "3139": {
         "plaintext": "Activate to remove all debuffs and grant massive Movement Speed",
         "name": "Mercurial Scimitar"
      },
      "3135": {
         "plaintext": "Increases magic damage",
         "name": "Void Staff"
      },
      "3136": {
         "plaintext": "Increases magic damage",
         "name": "Haunting Guise",
         "into": ["3151"]
      },
      "3206": {
         "plaintext": "Greatly increases damage dealt to monsters and gains Health and Mana from monsters",
         "name": "Spirit of the Spectral Wraith",
         "group": "GoldBase"
      },
      "3207": {
         "plaintext": "Greatly increases damage dealt to monsters and reduces duration of disabling effects",
         "name": "Spirit of the Ancient Golem",
         "group": "GoldBase"
      },
      "3209": {
         "plaintext": "Greatly increases damage dealt to monsters and deals true damage on basic attacks",
         "name": "Spirit of the Elder Lizard",
         "group": "GoldBase"
      },
      "3352": {
         "plaintext": "Briefly reveals a targetted area",
         "name": "Greater Orb (Trinket)",
         "into": ["3363"],
         "group": "RelicBase"
      },
      "3351": {
         "plaintext": "Detects and disables nearby invisible wards and traps",
         "name": "Greater Lens (Trinket)",
         "into": ["3364"],
         "group": "RelicBase"
      },
      "3350": {
         "plaintext": "Periodically place a Stealth Ward",
         "name": "Greater Totem (Trinket)",
         "into": [
            "3361",
            "3362"
         ],
         "group": "RelicBase"
      },
      "3001": {
         "plaintext": "Reduces Magic Resist of nearby enemies",
         "name": "Abyssal Scepter"
      },
      "3143": {
         "plaintext": "Greatly increases defenses, activate to slow nearby enemies",
         "name": "Randuin\'s Omen"
      },
      "3142": {
         "plaintext": "Activate to greatly increase Movement Speed and Attack Speed",
         "name": "Youmuu\'s Ghostblade"
      },
      "3145": {
         "plaintext": "Increases Spell Vamp and Ability Power",
         "name": "Hextech Revolver",
         "into": [
            "3146",
            "3152"
         ]
      },
      "3401": {
         "plaintext": "Shield an ally from damage based on your Health",
         "name": "Face of the Mountain",
         "group": "GoldBase"
      },
      "3144": {
         "plaintext": "Activate to deal magic damage and slow target champion",
         "name": "Bilgewater Cutlass",
         "into": [
            "3146",
            "3153"
         ]
      },
      "3141": {
         "plaintext": "Grants Attack Damage for kills and assists",
         "name": "Sword of the Occult"
      },
      "3211": {
         "plaintext": "Improves defense and grants regeneration upon being damage",
         "name": "Spectre\'s Cowl",
         "into": [
            "3065",
            "3102"
         ]
      },
      "3140": {
         "plaintext": "Activate to remove all debuffs",
         "name": "Quicksilver Sash",
         "into": ["3139"]
      },
      "3124": {
         "plaintext": "Increases Ability Power and Attack Damage",
         "name": "Guinsoo\'s Rageblade"
      },
      "3128": {
         "plaintext": "Activate to increase all magic damage dealt to an enemy champion",
         "name": "Deathfire Grasp"
      },
      "3029": {
         "plaintext": "Greatly increases Health, Mana, and Ability Power",
         "name": "Rod of Ages (Crystal Scar)"
      },
      "3027": {
         "plaintext": "Greatly increases Health, Mana, and Ability Power",
         "name": "Rod of Ages"
      },
      "3028": {
         "plaintext": "Greatly increases Mana Regen",
         "name": "Chalice of Harmony",
         "into": [
            "3174",
            "3222"
         ]
      },
      "3025": {
         "plaintext": "Basic attacks create a slow field after spell cast",
         "name": "Iceborn Gauntlet"
      },
      "3026": {
         "plaintext": "Periodically revives champion upon death",
         "name": "Guardian Angel"
      },
      "3035": {
         "plaintext": "Increases physical damage",
         "name": "Last Whisper"
      },
      "3031": {
         "plaintext": "Massively enhances critical strikes",
         "name": "Infinity Edge"
      },
      "3222": {
         "plaintext": "Activate to heal and remove all disabling effects from an allied champion",
         "name": "Mikael\'s Crucible"
      },
      "3134": {
         "plaintext": "Increases physical damage and Cooldown Reduction",
         "name": "The Brutalizer",
         "into": [
            "3142",
            "3071"
         ]
      },
      "3131": {
         "plaintext": "Activate to gain 100% Critical Strike Chance for a short duration",
         "name": "Sword of the Divine"
      },
      "3115": {
         "plaintext": "Increases Attack Speed, Ability Power, and Cooldown Reduction",
         "name": "Nashor\'s Tooth"
      },
      "3116": {
         "plaintext": "Abilities slow enemies",
         "name": "Rylai\'s Crystal Scepter"
      },
      "3117": {
         "plaintext": "Greatly enhances Movement Speed when out of combat",
         "name": "Boots of Mobility",
         "into": [
            "3274",
            "3273",
            "3272",
            "3271",
            "3270"
         ]
      },
      "3022": {
         "plaintext": "Basic attacks slow enemies",
         "name": "Frozen Mallet"
      },
      "3024": {
         "plaintext": "Increases Armor and Cooldown Reduction",
         "name": "Glacial Shroud",
         "into": [
            "3110",
            "3025"
         ]
      },
      "3023": {
         "plaintext": "Summon wraiths to slow and reveal enemy champions",
         "name": "Twin Shadows"
      },
      "3020": {
         "plaintext": "Enhances Movement Speed and magic damage",
         "name": "Sorcerer\'s Shoes",
         "into": [
            "3259",
            "3258",
            "3257",
            "3256",
            "3255"
         ]
      },
      "3123": {
         "plaintext": "Basic attacks reduce enemy healing and Health Regen",
         "name": "Executioner\'s Calling"
      },
      "3122": {
         "plaintext": "Critical Strikes cause your target to bleed.",
         "name": "Wicked Hatchet",
         "into": ["3104"]
      },
      "3048": {"name": "Seraph\'s Embrace"},
      "3047": {
         "plaintext": "Enhances Movement Speed and reduces incoming basic attack damage",
         "name": "Ninja Tabi",
         "into": [
            "3264",
            "3263",
            "3262",
            "3261",
            "3260"
         ]
      },
      "2050": {"name": "Explorer\'s Ward"},
      "2051": {
         "plaintext": "Activate for Movement Speed and a defensive boost",
         "name": "Guardian\'s Horn"
      },
      "2052": {
         "name": "Poro-Snax",
         "group": "RelicBase"
      },
      "1051": {
         "plaintext": "Slightly increases Critical Strike Chance",
         "name": "Brawler\'s Gloves",
         "into": [
            "3086",
            "3093",
            "3122"
         ]
      },
      "3197": {
         "plaintext": "Improves Viktor\'s Gravity Field and increases Cooldown Reduction",
         "name": "Augment: Gravity"
      },
      "3198": {
         "plaintext": "Improves Viktor\'s Death Ray and increases Ability Power",
         "name": "Augment: Death"
      },
      "1054": {
         "plaintext": "Good defensive starting item",
         "name": "Doran\'s Shield"
      },
      "1055": {
         "plaintext": "Good starting item for attackers",
         "name": "Doran\'s Blade"
      },
      "3196": {
         "plaintext": "Improves Viktor\'s Power Transfer and increases Health",
         "name": "Augment: Power"
      },
      "1052": {
         "plaintext": "Slightly increases Ability Power",
         "name": "Amplifying Tome",
         "into": [
            "3290",
            "3145",
            "3041",
            "3108",
            "3057",
            "3136",
            "3135",
            "3116",
            "3151",
            "3023",
            "3191",
            "3090",
            "3092",
            "3165"
         ]
      },
      "1053": {
         "plaintext": "Basic attacks restore Health",
         "name": "Vampiric Scepter",
         "into": [
            "3050",
            "3144",
            "3181",
            "3072",
            "3074",
            "3159"
         ]
      },
      "3191": {
         "plaintext": "Increases Armor and Ability Power",
         "name": "Seeker\'s Armguard",
         "into": [
            "3090",
            "3157",
            "3170"
         ]
      },
      "3050": {
         "plaintext": "Grants nearby allies Life Steal and Attack Damage",
         "name": "Zeke\'s Herald"
      },
      "3190": {
         "plaintext": "Activate to shield nearby allies from damage",
         "name": "Locket of the Iron Solari"
      },
      "3056": {
         "plaintext": "Temporarily disables enemy turrets",
         "name": "Ohmwrecker"
      },
      "2047": {
         "plaintext": "Allows champion to see invisible units",
         "name": "Oracle\'s Extract"
      },
      "3057": {
         "plaintext": "Grants a bonus to next attack after spell cast",
         "name": "Sheen",
         "into": [
            "3078",
            "3100",
            "3025"
         ]
      },
      "2049": {
         "plaintext": "Increases Health and provides Sight Wards over time",
         "name": "Sightstone",
         "into": ["2045"]
      },
      "2048": {
         "plaintext": "Temporarily increases Ability Power, Cooldown Reduction, Mana and Energy Regeneration",
         "name": "Ichor of Illumination"
      },
      "3301": {
         "plaintext": "Grants gold when nearby minions die that you didn\'t kill",
         "name": "Ancient Coin",
         "into": ["3096"],
         "group": "GoldBase"
      },
      "3303": {
         "plaintext": "Grants gold when you attack enemies",
         "name": "Spellthief\'s Edge",
         "into": ["3098"],
         "group": "GoldBase"
      },
      "3302": {
         "plaintext": "Kill minions periodically to heal and grant gold to a nearby ally",
         "name": "Relic Shield",
         "into": ["3097"],
         "group": "GoldBase"
      },
      "1037": {
         "plaintext": "Moderately increases Attack Damage",
         "name": "Pickaxe",
         "into": [
            "3035",
            "3124",
            "3031",
            "3156",
            "3077",
            "3104",
            "3184",
            "3022",
            "3172",
            "3181"
         ]
      },
      "1036": {
         "plaintext": "Slightly increases Attack Damage",
         "name": "Long Sword",
         "into": [
            "1053",
            "3044",
            "3144",
            "3134",
            "3209",
            "3035",
            "3155",
            "3004",
            "3077",
            "3123",
            "3141",
            "3122",
            "3008"
         ]
      },
      "1039": {
         "plaintext": "Slightly increases damage dealt to neutral monsters",
         "name": "Hunter\'s Machete",
         "into": [
            "3106",
            "1080"
         ]
      },
      "1038": {
         "plaintext": "Greatly increases Attack Damage",
         "name": "B. F. Sword",
         "into": [
            "3031",
            "3072",
            "3139"
         ]
      },
      "3187": {
         "plaintext": "Activate to reveal a nearby area of the map",
         "name": "Hextech Sweeper"
      },
      "3188": {
         "plaintext": "Activate to increase all magic damage dealt to an enemy champion",
         "name": "Blackfire Torch"
      },
      "1042": {
         "plaintext": "Slightly increases Attack Speed",
         "name": "Dagger",
         "into": [
            "3006",
            "3086",
            "3101",
            "3046",
            "3131",
            "3154",
            "3085",
            "3091",
            "3153"
         ]
      },
      "1043": {
         "plaintext": "Greatly increases Attack Speed",
         "name": "Recurve Bow",
         "into": [
            "3091",
            "3131",
            "3085"
         ]
      },
      "3184": {
         "plaintext": "Attacks and kills give a small burst of speed, activate to slow enemies",
         "name": "Entropy"
      },
      "3185": {
         "plaintext": "Increases Attack Speed and grants vision of attacked enemies",
         "name": "The Lightbringer"
      },
      "3040": {"name": "Seraph\'s Embrace"},
      "3041": {
         "plaintext": "Grants Ability Power for kills and assists",
         "name": "Mejai\'s Soulstealer"
      },
      "3180": {
         "plaintext": "Improves defense, activate for area magic damage",
         "name": "Odyn\'s Veil"
      },
      "3042": {"name": "Muramana"},
      "3181": {
         "plaintext": "Greatly increases Attack Damage and Life Steal",
         "name": "Sanguine Blade"
      },
      "3043": {"name": "Muramana"},
      "3044": {
         "plaintext": "Attacks and kills give a small burst of speed",
         "name": "Phage",
         "into": [
            "3078",
            "3184"
         ]
      },
      "3046": {
         "plaintext": "Champion attacks faster and can move through units",
         "name": "Phantom Dancer"
      },
      "3069": {
         "plaintext": "Increases Health and Cooldown Reduction, activate to speed up nearby allies",
         "name": "Talisman of Ascension",
         "group": "GoldBase"
      },
      "1029": {
         "plaintext": "Slightly increases Armor",
         "name": "Cloth Armor",
         "into": [
            "3047",
            "3106",
            "3082",
            "3097",
            "3159",
            "3075",
            "3191",
            "3105"
         ]
      },
      "1028": {
         "plaintext": "Increases Health",
         "name": "Ruby Crystal",
         "into": [
            "3067",
            "3105",
            "3044",
            "3010",
            "3136",
            "3083",
            "2049",
            "2045",
            "3084",
            "3185",
            "2051",
            "3022",
            "3056",
            "3211",
            "3071",
            "3102",
            "3401"
         ]
      },
      "3169": {"name": "Bonetooth Necklace"},
      "1027": {
         "plaintext": "Increases Mana",
         "name": "Sapphire Crystal",
         "into": [
            "3057",
            "3070",
            "3073",
            "3010",
            "3024"
         ]
      },
      "3168": {"name": "Bonetooth Necklace"},
      "1026": {
         "plaintext": "Moderately increases Ability Power",
         "name": "Blasting Wand",
         "into": [
            "3001",
            "3135",
            "3027",
            "3029",
            "3089",
            "3100",
            "3116",
            "3124",
            "3188",
            "3090",
            "3003",
            "3007",
            "3056",
            "3060"
         ]
      },
      "3070": {
         "plaintext": "Increases maximum Mana as Mana is spent",
         "name": "Tear of the Goddess",
         "into": [
            "3003",
            "3004"
         ]
      },
      "3071": {
         "plaintext": "Dealing physical damage to enemy champions reduces their Armor",
         "name": "The Black Cleaver"
      },
      "1033": {
         "plaintext": "Slightly increases Magic Resist",
         "name": "Null-Magic Mantle",
         "into": [
            "3111",
            "3028",
            "3105",
            "3091",
            "3155",
            "3023",
            "3290"
         ]
      },
      "3174": {
         "plaintext": "Restores maximum Mana on kill or assist",
         "name": "Athene\'s Unholy Grail"
      },
      "3171": {"name": "Bonetooth Necklace"},
      "1031": {
         "plaintext": "Greatly increases Armor",
         "name": "Chain Vest",
         "into": [
            "3026",
            "3068",
            "3024",
            "3005",
            "3075"
         ]
      },
      "3172": {
         "plaintext": "Improves offense and reduces duration of disabling effects",
         "name": "Zephyr"
      },
      "3175": {"name": "Head of Kha\'Zix"},
      "3078": {
         "plaintext": "Tons of Damage",
         "name": "Trinity Force"
      },
      "3077": {
         "plaintext": "Melee attacks hit nearby enemies",
         "name": "Tiamat (Melee Only)",
         "into": ["3074"]
      },
      "3074": {
         "plaintext": "Melee attacks hit nearby enemies, dealing damage and restoring Health",
         "name": "Ravenous Hydra (Melee Only)"
      },
      "3075": {
         "plaintext": "Returns damage taken from basic attacks as magic damage",
         "name": "Thornmail"
      },
      "3170": {
         "plaintext": "Improves defense and reduces duration of disabling effects",
         "name": "Moonflair Spellblade"
      },
      "3072": {
         "plaintext": "Grants massive Attack Damage and Life Steal",
         "name": "The Bloodthirster"
      },
      "3073": {
         "plaintext": "Increases maximum Mana as Mana is spent",
         "name": "Tear of the Goddess (Crystal Scar)",
         "into": [
            "3007",
            "3008"
         ]
      },
      "2040": {
         "plaintext": "Temporarily increases Attack Damage, Attack Speed, and increases damage to turrets",
         "name": "Ichor of Rage"
      },
      "2041": {
         "plaintext": "Restores Health and Mana over time, refills at shop",
         "name": "Crystalline Flask"
      },
      "2044": {
         "plaintext": "Use to temporarily provide vision in an area",
         "name": "Stealth Ward",
         "group": "GreenWards"
      },
      "2045": {
         "plaintext": "Greatly increases Health and provides Sight Wards over time",
         "name": "Ruby Sightstone"
      },
      "2043": {
         "plaintext": "Use to temporarily provide vision and stealth detection in an area",
         "name": "Vision Ward",
         "group": "PinkWards"
      },
      "3158": {
         "plaintext": "Increases Movement Speed and Cooldown Reduction",
         "name": "Ionian Boots of Lucidity",
         "into": [
            "3279",
            "3278",
            "3277",
            "3276",
            "3275"
         ]
      },
      "3157": {
         "plaintext": "Activate to become invincible but unable to take actions",
         "name": "Zhonya\'s Hourglass"
      },
      "1018": {
         "plaintext": "Moderately increases Critical Strike Chance",
         "name": "Cloak of Agility",
         "into": [
            "3046",
            "3031",
            "3104"
         ]
      },
      "3159": {
         "plaintext": "Activate to reveal a nearby area of the map",
         "name": "Grez\'s Spectral Lantern",
         "into": ["3185"]
      },
      "3060": {
         "plaintext": "Promotes a siege minion to a more powerful unit",
         "name": "Banner of Command"
      },
      "3165": {
         "plaintext": "Greatly increases Ability Power and Cooldown Reduction",
         "name": "Morellonomicon"
      },
      "3166": {
         "plaintext": "Grants Rengar bonus effects on kill or assist",
         "name": "Bonetooth Necklace"
      },
      "3167": {"name": "Bonetooth Necklace"},
      "3065": {
         "plaintext": "Increases Health and healing effects",
         "name": "Spirit Visage"
      },
      "2037": {
         "plaintext": "Temporarily increases Attack Damage and Health",
         "name": "Elixir of Fortitude"
      },
      "3067": {
         "plaintext": "Increases Health and Cooldown Reduction",
         "name": "Kindlegem",
         "into": [
            "3065",
            "3187",
            "3050",
            "3069",
            "3207"
         ]
      },
      "3068": {
         "plaintext": "Constantly deals damage to nearby enemies",
         "name": "Sunfire Cape"
      },
      "2039": {
         "plaintext": "Temporarily increases Ability Power and Cooldown Reduction",
         "name": "Elixir of Brilliance"
      }
   },
   "type": "item",
   "version": "4.2.6"
}
'.freeze