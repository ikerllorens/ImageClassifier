%% Lectura de Stats de la primera imagen 

stats1 = getImageStats(images{1});
stats2 = getImageStats(images{11});
stats3 = getImageStats(images{21});
stats4 = getImageStats(images{31});
stats5 = getImageStats(images{41});
stats6 = getImageStats(images{51});
stats7 = getImageStats(images{61});
stats8 = getImageStats(images{71});
stats9 = getImageStats(images{81});
stats10 = getImageStats(images{91});
stats11 = getImageStats(images{101});
stats12 = getImageStats(images{111});
stats13 = getImageStats(images{121});
stats14 = getImageStats(images{131});
stats15 = getImageStats(images{141});
stats16 = getImageStats(images{151});
stats17 = getImageStats(images{161});
stats18 = getImageStats(images{171});
stats19 = getImageStats(images{181});
stats20 = getImageStats(images{191});

stats1_1 = getImageStats(images{2});
stats2_1 = getImageStats(images{12});
stats3_1 = getImageStats(images{22});
stats4_1 = getImageStats(images{32});
stats5_1 = getImageStats(images{42});
stats6_1 = getImageStats(images{52});
stats7_1 = getImageStats(images{62});
stats8_1 = getImageStats(images{72});
stats9_1 = getImageStats(images{82});
stats10_1 = getImageStats(images{92});
stats11_1 = getImageStats(images{102});
stats12_1 = getImageStats(images{112});
stats13_1 = getImageStats(images{122});
stats14_1 = getImageStats(images{132});
stats15_1 = getImageStats(images{142});
stats16_1 = getImageStats(images{152});
stats17_1 = getImageStats(images{162});
stats18_1 = getImageStats(images{172});
stats19_1 = getImageStats(images{182});
stats20_1 = getImageStats(images{192});

stats1_2 = getImageStats(images{3});
stats2_2 = getImageStats(images{13});
stats3_2 = getImageStats(images{23});
stats4_2 = getImageStats(images{33});
stats5_2 = getImageStats(images{43});
stats6_2 = getImageStats(images{53});
stats7_2 = getImageStats(images{63});
stats8_2 = getImageStats(images{73});
stats9_2 = getImageStats(images{83});
stats10_2 = getImageStats(images{93});
stats11_2 = getImageStats(images{103});
stats12_2 = getImageStats(images{113});
stats13_2 = getImageStats(images{123});
stats14_2 = getImageStats(images{133});
stats15_2 = getImageStats(images{143});
stats16_2 = getImageStats(images{153});
stats17_2 = getImageStats(images{163});
stats18_2 = getImageStats(images{173});
stats19_2 = getImageStats(images{183});
stats20_2 = getImageStats(images{193});

stats1_3 = getImageStats(images{4});
stats2_3 = getImageStats(images{14});
stats3_3 = getImageStats(images{24});
stats4_3 = getImageStats(images{34});
stats5_3 = getImageStats(images{44});
stats6_3 = getImageStats(images{54});
stats7_3 = getImageStats(images{64});
stats8_3 = getImageStats(images{74});
stats9_3 = getImageStats(images{84});
stats10_3 = getImageStats(images{94});
stats11_3 = getImageStats(images{104});
stats12_3 = getImageStats(images{114});
stats13_3 = getImageStats(images{124});
stats14_3 = getImageStats(images{134});
stats15_3 = getImageStats(images{144});
stats16_3 = getImageStats(images{154});
stats17_3 = getImageStats(images{164});
stats18_3 = getImageStats(images{174});
stats19_3 = getImageStats(images{184});
stats20_3 = getImageStats(images{194});

[input_matrix, samples] = createInputMatrix(...
    stats1, stats1_1, stats1_2, stats1_3, ...
    stats2, stats2_1, stats2_2, stats2_3, ...
    stats3, stats3_1, stats3_2, stats3_3, ...
    stats4, stats4_1, stats4_2, stats4_3, ...
    stats5, stats5_1, stats5_2, stats5_3, ...
    stats6, stats6_1, stats6_2, stats6_3, ...
    stats7, stats7_1, stats7_2, stats7_3, ...
    stats8, stats8_1, stats8_2, stats8_3, ...
    stats9, stats9_1, stats9_2, stats9_3, ...
    stats10, stats10_1, stats10_2, stats10_3, ...
    stats11, stats11_1, stats11_2, stats11_3, ...
    stats12, stats12_1, stats12_2, stats12_3, ...
    stats13, stats13_1, stats13_2, stats13_3, ...
    stats14, stats14_1, stats14_2, stats14_3, ...
    stats15, stats15_1, stats15_2, stats15_3, ...
    stats16, stats16_1, stats16_2, stats16_3,  ...
    stats17, stats17_1, stats17_2, stats17_3, ...
    stats18, stats18_1, stats18_2, stats18_3, ...
    stats19, stats19_1, stats19_2, stats19_3, ...
    stats20, stats20_1, stats20_2, stats20_3);