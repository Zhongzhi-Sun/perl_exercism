{"version":5,"vars":[{"definition":"our","line":4,"kind":13,"containerName":"main::","name":"%Scores"},{"containerName":"main::","definition":"sub","range":{"end":{"line":12,"character":9999},"start":{"character":0,"line":6}},"name":"set_player_scores","kind":12,"line":6,"detail":"(%new_scores)","children":[{"containerName":"set_player_scores","name":"@players","kind":13,"line":8,"localvar":"my","definition":"my"},{"name":"%new_scores","containerName":"set_player_scores","kind":13,"line":8},{"containerName":"set_player_scores","name":"$player","kind":13,"line":9,"definition":"my","localvar":"my"},{"line":9,"containerName":"set_player_scores","kind":13,"name":"@players"},{"containerName":"set_player_scores","kind":13,"name":"$HighScoreBoard","line":10},{"name":"$player","containerName":"set_player_scores","kind":13,"line":10},{"containerName":"set_player_scores","name":"$new_scores","kind":13,"line":10},{"name":"$player","containerName":"set_player_scores","kind":13,"line":10}],"signature":{"parameters":[{"label":"%new_scores"}],"documentation":"","label":"set_player_scores(%new_scores)"}},{"containerName":"","name":"Scores","kind":12,"line":10},{"signature":{"parameters":[{"label":"$player"}],"documentation":"","label":"get_player_score($player)"},"line":14,"children":[{"line":15,"name":"$score","containerName":"get_player_score","kind":13,"localvar":"my","definition":"my"},{"containerName":"get_player_score","kind":13,"name":"%HighScoreBoard","line":15},{"line":15,"name":"$player","containerName":"get_player_score","kind":13},{"line":16,"containerName":"get_player_score","name":"$score","kind":13}],"detail":"($player)","kind":12,"name":"get_player_score","range":{"start":{"line":14,"character":0},"end":{"line":17,"character":9999}},"definition":"sub","containerName":"main::"},{"definition":"sub","range":{"end":{"character":9999,"line":24},"start":{"character":0,"line":19}},"containerName":"main::","signature":{"label":"increase_player_scores(%additional_scores)","documentation":"","parameters":[{"label":"%additional_scores"}]},"name":"increase_player_scores","kind":12,"detail":"(%additional_scores)","children":[{"localvar":"my","definition":"my","name":"@players","containerName":"increase_player_scores","kind":13,"line":20},{"kind":13,"containerName":"increase_player_scores","name":"%additional_scores","line":20},{"line":21,"containerName":"increase_player_scores","kind":13,"name":"$player","localvar":"my","definition":"my"},{"containerName":"increase_player_scores","name":"@players","kind":13,"line":21},{"name":"$HighScoreBoard","containerName":"increase_player_scores","kind":13,"line":22},{"containerName":"increase_player_scores","name":"$player","kind":13,"line":22},{"containerName":"increase_player_scores","name":"$HighScoreBoard","kind":13,"line":22},{"line":22,"kind":13,"containerName":"increase_player_scores","name":"$player"},{"line":22,"containerName":"increase_player_scores","name":"$additional_scores","kind":13},{"line":22,"containerName":"increase_player_scores","name":"$player","kind":13}],"line":19},{"line":19,"containerName":"","kind":12,"name":"Scores"},{"line":22,"kind":12,"containerName":"","name":"Scores"},{"line":22,"containerName":"","kind":12,"name":"Scores"},{"children":[{"line":27,"kind":13,"containerName":"sort_players_by_name","name":"@players","definition":"my","localvar":"my"},{"line":27,"name":"%HighScoreBoard","containerName":"sort_players_by_name","kind":13},{"containerName":"sort_players_by_name","name":"@players","kind":13,"line":28},{"line":28,"kind":13,"containerName":"sort_players_by_name","name":"@players"},{"name":"@players","containerName":"sort_players_by_name","kind":13,"line":29}],"line":26,"kind":12,"containerName":"main::","name":"sort_players_by_name","range":{"end":{"character":9999,"line":30},"start":{"line":26,"character":0}},"definition":"sub"},{"kind":12,"containerName":"","name":"Scores","line":28},{"range":{"end":{"line":41,"character":9999},"start":{"line":32,"character":0}},"definition":"sub","children":[{"definition":"my","localvar":"my","line":33,"name":"@keys","containerName":"sort_players_by_score","kind":13},{"line":33,"kind":13,"containerName":"sort_players_by_score","name":"$HighScoreBoard"},{"containerName":"sort_players_by_score","kind":13,"name":"$b","line":33},{"name":"$HighScoreBoard","containerName":"sort_players_by_score","kind":13,"line":33},{"line":33,"name":"$a","containerName":"sort_players_by_score","kind":13},{"line":33,"kind":13,"containerName":"sort_players_by_score","name":"%HighScoreBoard"},{"line":39,"containerName":"sort_players_by_score","name":"@keys","kind":13}],"line":32,"containerName":"main::","name":"sort_players_by_score","kind":12},{"line":33,"containerName":"","kind":12,"name":"Scores"},{"containerName":"","kind":12,"name":"Scores","line":33},{"line":33,"kind":12,"containerName":"","name":"Scores"},{"line":42,"children":[{"line":43,"containerName":"sort_players_by_score_better_solution","name":"$Scores","kind":13},{"line":43,"kind":13,"containerName":"sort_players_by_score_better_solution","name":"$b"},{"containerName":"sort_players_by_score_better_solution","kind":13,"name":"$Scores","line":43},{"line":43,"containerName":"sort_players_by_score_better_solution","name":"$a","kind":13},{"kind":13,"containerName":"sort_players_by_score_better_solution","name":"%Scores","line":43}],"kind":12,"containerName":"main::","name":"sort_players_by_score_better_solution","range":{"end":{"line":44,"character":9999},"start":{"character":0,"line":42}},"definition":"sub"},{"definition":"sub","range":{"start":{"character":0,"line":46},"end":{"line":48,"character":9999}},"containerName":"main::","signature":{"parameters":[{"label":"$player"}],"documentation":"","label":"delete_player($player)"},"kind":12,"name":"delete_player","detail":"($player)","children":[{"containerName":"delete_player","name":"$HighScoreBoard","kind":13,"line":47},{"containerName":"delete_player","name":"$player","kind":13,"line":47}],"line":46}]}