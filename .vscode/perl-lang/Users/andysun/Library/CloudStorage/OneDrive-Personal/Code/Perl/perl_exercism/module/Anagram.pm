{"version":5,"vars":[{"line":4,"kind":2,"containerName":"","name":"Exporter"},{"definition":"our","kind":13,"containerName":"main::","name":"@EXPORT_OK","line":5},{"definition":"sub","range":{"start":{"line":7,"character":0},"end":{"character":9999,"line":20}},"containerName":"main::","signature":{"parameters":[{"label":"$array1_ref"},{"label":"$array2_ref"}],"documentation":"","label":"arrays_equal($array1_ref,$array2_ref)"},"kind":12,"name":"arrays_equal","line":7,"detail":"($array1_ref,$array2_ref)","children":[{"line":11,"name":"$array1_ref","containerName":"arrays_equal","kind":13},{"line":11,"containerName":"arrays_equal","name":"$array2_ref","kind":13},{"containerName":"arrays_equal","name":"$i","kind":13,"line":14,"definition":"my","localvar":"my"},{"containerName":"arrays_equal","kind":13,"name":"$array1_ref","line":14},{"kind":13,"containerName":"arrays_equal","name":"$array1_ref","line":15},{"line":15,"containerName":"arrays_equal","kind":13,"name":"$i"},{"containerName":"arrays_equal","name":"$array2_ref","kind":13,"line":15},{"line":15,"kind":13,"containerName":"arrays_equal","name":"$i"}]},{"containerName":"main::","range":{"start":{"line":22,"character":0},"end":{"character":9999,"line":36}},"definition":"sub","children":[{"line":23,"containerName":"gene_array_by_word","kind":13,"name":"@char_dict","definition":"my","localvar":"my"},{"definition":"my","localvar":"my","kind":13,"containerName":"gene_array_by_word","name":"$i","line":24},{"containerName":"gene_array_by_word","kind":13,"name":"$char_dict","line":25},{"containerName":"gene_array_by_word","name":"$i","kind":13,"line":25},{"containerName":"gene_array_by_word","name":"$char","kind":13,"line":27,"localvar":"my","definition":"my"},{"containerName":"gene_array_by_word","kind":13,"name":"$word","line":27},{"line":29,"containerName":"gene_array_by_word","kind":13,"name":"$char_order","localvar":"my","definition":"my"},{"line":29,"kind":13,"containerName":"gene_array_by_word","name":"$char"},{"kind":13,"containerName":"gene_array_by_word","name":"$char_order","line":31},{"line":31,"containerName":"gene_array_by_word","name":"$char_order","kind":13},{"name":"$char_dict","containerName":"gene_array_by_word","kind":13,"line":32},{"name":"$char_order","containerName":"gene_array_by_word","kind":13,"line":32},{"containerName":"gene_array_by_word","name":"@char_dict","kind":13,"line":35}],"detail":"($word)","line":22,"name":"gene_array_by_word","kind":12,"signature":{"documentation":"","label":"gene_array_by_word($word)","parameters":[{"label":"$word"}]}},{"name":"match_anagrams","kind":12,"detail":"( $subject,$candidates )","children":[{"localvar":"my","definition":"my","name":"$lc_sub","containerName":"match_anagrams","kind":13,"line":39},{"name":"$subject","containerName":"match_anagrams","kind":13,"line":39},{"line":40,"name":"$sub_arr","containerName":"match_anagrams","kind":13,"localvar":"my","definition":"my"},{"line":40,"kind":13,"containerName":"match_anagrams","name":"$lc_sub"},{"line":42,"name":"@res","containerName":"match_anagrams","kind":13,"localvar":"my","definition":"my"},{"definition":"my","localvar":"my","line":43,"kind":13,"containerName":"match_anagrams","name":"$word"},{"line":43,"containerName":"match_anagrams","kind":13,"name":"$candidates"},{"localvar":"my","definition":"my","line":44,"containerName":"match_anagrams","name":"$uc_word","kind":13},{"name":"$word","containerName":"match_anagrams","kind":13,"line":44},{"containerName":"match_anagrams","kind":13,"name":"$lc_sub","line":45},{"kind":13,"containerName":"match_anagrams","name":"$uc_word","line":45},{"definition":"my","localvar":"my","line":47,"name":"$word_arr","containerName":"match_anagrams","kind":13},{"name":"$uc_word","containerName":"match_anagrams","kind":13,"line":47},{"definition":"my","localvar":"my","line":49,"containerName":"match_anagrams","kind":13,"name":"$arr_eq"},{"line":49,"name":"$sub_arr","containerName":"match_anagrams","kind":13},{"containerName":"match_anagrams","kind":13,"name":"$word_arr","line":49},{"line":50,"containerName":"match_anagrams","name":"$arr_eq","kind":13},{"line":52,"containerName":"match_anagrams","name":"@res","kind":13},{"line":52,"containerName":"match_anagrams","name":"$word","kind":13},{"containerName":"match_anagrams","kind":13,"name":"@res","line":57}],"line":38,"signature":{"parameters":[{"label":" $subject"},{"label":"$candidates "}],"documentation":"","label":"match_anagrams( $subject,$candidates )"},"containerName":"main::","definition":"sub","range":{"end":{"line":58,"character":9999},"start":{"character":0,"line":38}}}]}