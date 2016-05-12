%% Lectura de Stats de la primera imagen 
function [input_matrix, samples] = Stats (images)

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

stats1_4 = getImageStats(images{5});
stats2_4 = getImageStats(images{15});
stats3_4 = getImageStats(images{25});
stats4_4 = getImageStats(images{35});
stats5_4 = getImageStats(images{45});
stats6_4 = getImageStats(images{55});
stats7_4 = getImageStats(images{65});
stats8_4 = getImageStats(images{75});
stats9_4 = getImageStats(images{85});
stats10_4 = getImageStats(images{95});
stats11_4 = getImageStats(images{105});
stats12_4 = getImageStats(images{115});
stats13_4 = getImageStats(images{125});
stats14_4 = getImageStats(images{135});
stats15_4 = getImageStats(images{145});
stats16_4 = getImageStats(images{155});
stats17_4 = getImageStats(images{165});
stats18_4 = getImageStats(images{175});
stats19_4 = getImageStats(images{185});
stats20_4 = getImageStats(images{195});

stats1_5 = getImageStats(images{6});
stats2_5 = getImageStats(images{16});
stats3_5 = getImageStats(images{26});
stats4_5 = getImageStats(images{36});
stats5_5 = getImageStats(images{46});
stats6_5 = getImageStats(images{56});
stats7_5 = getImageStats(images{66});
stats8_5 = getImageStats(images{76});
stats9_5 = getImageStats(images{86});
stats10_5 = getImageStats(images{96});
stats11_5 = getImageStats(images{106});
stats12_5 = getImageStats(images{116});
stats13_5 = getImageStats(images{126});
stats14_5 = getImageStats(images{136});
stats15_5 = getImageStats(images{146});
stats16_5 = getImageStats(images{156});
stats17_5 = getImageStats(images{166});
stats18_5 = getImageStats(images{176});
stats19_5 = getImageStats(images{186});
stats20_5 = getImageStats(images{196});

stats1_6 = getImageStats(images{7});
stats2_6 = getImageStats(images{17});
stats3_6 = getImageStats(images{27});
stats4_6 = getImageStats(images{37});
stats5_6 = getImageStats(images{47});
stats6_6 = getImageStats(images{57});
stats7_6 = getImageStats(images{67});
stats8_6 = getImageStats(images{77});
stats9_6 = getImageStats(images{87});
stats10_6 = getImageStats(images{97});
stats11_6 = getImageStats(images{107});
stats12_6 = getImageStats(images{117});
stats13_6 = getImageStats(images{127});
stats14_6 = getImageStats(images{137});
stats15_6 = getImageStats(images{147});
stats16_6 = getImageStats(images{157});
stats17_6 = getImageStats(images{167});
stats18_6 = getImageStats(images{177});
stats19_6 = getImageStats(images{187});
stats20_6 = getImageStats(images{197});

stats1_7 = getImageStats(images{8});
stats2_7 = getImageStats(images{18});
stats3_7 = getImageStats(images{28});
stats4_7 = getImageStats(images{38});
stats5_7 = getImageStats(images{48});
stats6_7 = getImageStats(images{58});
stats7_7 = getImageStats(images{68});
stats8_7 = getImageStats(images{78});
stats9_7 = getImageStats(images{88});
stats10_7 = getImageStats(images{98});
stats11_7 = getImageStats(images{108});
stats12_7 = getImageStats(images{118});
stats13_7 = getImageStats(images{128});
stats14_7 = getImageStats(images{138});
stats15_7 = getImageStats(images{148});
stats16_7 = getImageStats(images{158});
stats17_7 = getImageStats(images{168});
stats18_7 = getImageStats(images{178});
stats19_7 = getImageStats(images{188});
stats20_7 = getImageStats(images{198});

stats1_8 = getImageStats(images{9});
stats2_8 = getImageStats(images{19});
stats3_8 = getImageStats(images{29});
stats4_8 = getImageStats(images{39});
stats5_8 = getImageStats(images{49});
stats6_8 = getImageStats(images{59});
stats7_8 = getImageStats(images{69});
stats8_8 = getImageStats(images{79});
stats9_8 = getImageStats(images{89});
stats10_8 = getImageStats(images{99});
stats11_8 = getImageStats(images{109});
stats12_8 = getImageStats(images{119});
stats13_8 = getImageStats(images{129});
stats14_8 = getImageStats(images{139});
stats15_8 = getImageStats(images{149});
stats16_8 = getImageStats(images{159});
stats17_8 = getImageStats(images{169});
stats18_8 = getImageStats(images{179});
stats19_8 = getImageStats(images{189});
stats20_8 = getImageStats(images{199});

stats1_9 = getImageStats(images{10});
stats2_9 = getImageStats(images{20});
stats3_9 = getImageStats(images{30});
stats4_9 = getImageStats(images{40});
stats5_9 = getImageStats(images{50});
stats6_9 = getImageStats(images{60});
stats7_9 = getImageStats(images{70});
stats8_9 = getImageStats(images{80});
stats9_9 = getImageStats(images{90});
stats10_9 = getImageStats(images{100});
stats11_9 = getImageStats(images{110});
stats12_9 = getImageStats(images{120});
stats13_9 = getImageStats(images{130});
stats14_9 = getImageStats(images{140});
stats15_9 = getImageStats(images{150});
stats16_9 = getImageStats(images{160});
stats17_9 = getImageStats(images{170});
stats18_9 = getImageStats(images{180});
stats19_9 = getImageStats(images{190});
stats20_9 = getImageStats(images{200});

[input_matrix, samples] = createInputMatrix(...
    stats1, stats1_1, stats1_2, stats1_3, stats1_4, stats1_5, stats1_6, stats1_7, stats1_8,  stats1_9,...
    stats2, stats2_1, stats2_2, stats2_3, stats2_4, stats2_5, stats2_6, stats2_7, stats2_8,  stats2_9,...
    stats3, stats3_1, stats3_2, stats3_3, stats3_4, stats3_5, stats3_6, stats3_7, stats3_8,  stats3_9,...
    stats4, stats4_1, stats4_2, stats4_3, stats4_4, stats4_5, stats4_6, stats4_7, stats4_8,  stats4_9,...
    stats5, stats5_1, stats5_2, stats5_3, stats5_4, stats5_5, stats5_6, stats5_7, stats5_8,  stats5_9,...
    stats6, stats6_1, stats6_2, stats6_3, stats6_4, stats6_5, stats6_6, stats6_7, stats6_8,  stats6_9,...
    stats7, stats7_1, stats7_2, stats7_3, stats7_4, stats7_5, stats7_6, stats7_7, stats7_8,  stats7_9,...
    stats8, stats8_1, stats8_2, stats8_3, stats8_4, stats8_5, stats8_6, stats8_7, stats8_8,  stats8_9,...
    stats9, stats9_1, stats9_2, stats9_3, stats9_4, stats9_5, stats9_6, stats9_7, stats9_8,  stats9_9,...
    stats10, stats10_1, stats10_2, stats10_3, stats10_4, stats10_5, stats10_6, stats10_7, stats10_8,  stats10_9,...
    stats11, stats11_1, stats11_2, stats11_3, stats11_4, stats11_5, stats11_6, stats11_7, stats11_8,  stats11_9,...
    stats12, stats12_1, stats12_2, stats12_3, stats12_4, stats12_5, stats12_6, stats12_7, stats12_8,  stats12_9,...
    stats13, stats13_1, stats13_2, stats13_3, stats13_4, stats13_5, stats13_6, stats13_7, stats13_8,  stats13_9,...
    stats14, stats14_1, stats14_2, stats14_3, stats14_4, stats14_5, stats14_6, stats14_7, stats14_8,  stats14_9,...
    stats15, stats15_1, stats15_2, stats15_3, stats15_4, stats15_5, stats15_6, stats15_7, stats15_8,  stats15_9,...
    stats16, stats16_1, stats16_2, stats16_3, stats16_4, stats16_5, stats16_6, stats16_7, stats16_8,  stats16_9,...
    stats17, stats17_1, stats17_2, stats17_3, stats17_4, stats17_5, stats17_6, stats17_7, stats17_8,  stats17_9,...
    stats18, stats18_1, stats18_2, stats18_3, stats18_4, stats18_5, stats18_6, stats18_7, stats18_8,  stats18_9,...
    stats19, stats19_1, stats19_2, stats19_3, stats19_4, stats19_5, stats19_6, stats19_7, stats19_8,  stats19_9,...
    stats20, stats20_1, stats20_2, stats20_3, stats20_4, stats20_5, stats20_6, stats20_7, stats20_8,  stats20_9);

end