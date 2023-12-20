import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_visualization.dart';
import 'package:web/helpers.dart';

// Adding 500 Data Points
late GMap map;
late HeatmapLayer heatmap;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 13
    ..center = LatLng(37.774546, -122.433523)
    ..mapTypeId = MapTypeId.SATELLITE;
  map = GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  heatmap = HeatmapLayer(HeatmapLayerOptions()
    ..data = points
    ..map = map);

  querySelector('#toggleHeatmap')!.onClick.listen((e) {
    toggleHeatmap();
  });
  querySelector('#changeGradient')!.onClick.listen((e) {
    changeGradient();
  });
  querySelector('#changeRadius')!.onClick.listen((e) {
    changeRadius();
  });
  querySelector('#changeOpacity')!.onClick.listen((e) {
    changeOpacity();
  });
}

void toggleHeatmap() {
  heatmap.map = heatmap.map != null ? null : map;
}

void changeGradient() {
  final gradient = [
    'rgba(0, 255, 255, 0)',
    'rgba(0, 255, 255, 1)',
    'rgba(0, 191, 255, 1)',
    'rgba(0, 127, 255, 1)',
    'rgba(0, 63, 255, 1)',
    'rgba(0, 0, 255, 1)',
    'rgba(0, 0, 223, 1)',
    'rgba(0, 0, 191, 1)',
    'rgba(0, 0, 159, 1)',
    'rgba(0, 0, 127, 1)',
    'rgba(63, 0, 91, 1)',
    'rgba(127, 0, 63, 1)',
    'rgba(191, 0, 31, 1)',
    'rgba(255, 0, 0, 1)'
  ];
  heatmap.set('gradient', heatmap.get('gradient') != null ? null : gradient);
}

void changeRadius() {
  heatmap.set('radius', heatmap.get('radius') != null ? null : 20);
}

void changeOpacity() {
  heatmap.set('opacity', heatmap.get('opacity') != null ? null : 0.2);
}

final points = <LatLng>[
  LatLng(37.782551, -122.445368),
  LatLng(37.782745, -122.444586),
  LatLng(37.782842, -122.443688),
  LatLng(37.782919, -122.442815),
  LatLng(37.782992, -122.442112),
  LatLng(37.783100, -122.441461),
  LatLng(37.783206, -122.440829),
  LatLng(37.783273, -122.440324),
  LatLng(37.783316, -122.440023),
  LatLng(37.783357, -122.439794),
  LatLng(37.783371, -122.439687),
  LatLng(37.783368, -122.439666),
  LatLng(37.783383, -122.439594),
  LatLng(37.783508, -122.439525),
  LatLng(37.783842, -122.439591),
  LatLng(37.784147, -122.439668),
  LatLng(37.784206, -122.439686),
  LatLng(37.784386, -122.439790),
  LatLng(37.784701, -122.439902),
  LatLng(37.784965, -122.439938),
  LatLng(37.785010, -122.439947),
  LatLng(37.785360, -122.439952),
  LatLng(37.785715, -122.440030),
  LatLng(37.786117, -122.440119),
  LatLng(37.786564, -122.440209),
  LatLng(37.786905, -122.440270),
  LatLng(37.786956, -122.440279),
  LatLng(37.800224, -122.433520),
  LatLng(37.800155, -122.434101),
  LatLng(37.800160, -122.434430),
  LatLng(37.800378, -122.434527),
  LatLng(37.800738, -122.434598),
  LatLng(37.800938, -122.434650),
  LatLng(37.801024, -122.434889),
  LatLng(37.800955, -122.435392),
  LatLng(37.800886, -122.435959),
  LatLng(37.800811, -122.436275),
  LatLng(37.800788, -122.436299),
  LatLng(37.800719, -122.436302),
  LatLng(37.800702, -122.436298),
  LatLng(37.800661, -122.436273),
  LatLng(37.800395, -122.436172),
  LatLng(37.800228, -122.436116),
  LatLng(37.800169, -122.436130),
  LatLng(37.800066, -122.436167),
  LatLng(37.784345, -122.422922),
  LatLng(37.784389, -122.422926),
  LatLng(37.784437, -122.422924),
  LatLng(37.784746, -122.422818),
  LatLng(37.785436, -122.422959),
  LatLng(37.786120, -122.423112),
  LatLng(37.786433, -122.423029),
  LatLng(37.786631, -122.421213),
  LatLng(37.786660, -122.421033),
  LatLng(37.786801, -122.420141),
  LatLng(37.786823, -122.420034),
  LatLng(37.786831, -122.419916),
  LatLng(37.787034, -122.418208),
  LatLng(37.787056, -122.418034),
  LatLng(37.787169, -122.417145),
  LatLng(37.787217, -122.416715),
  LatLng(37.786144, -122.416403),
  LatLng(37.785292, -122.416257),
  LatLng(37.780666, -122.390374),
  LatLng(37.780501, -122.391281),
  LatLng(37.780148, -122.392052),
  LatLng(37.780173, -122.391148),
  LatLng(37.780693, -122.390592),
  LatLng(37.781261, -122.391142),
  LatLng(37.781808, -122.391730),
  LatLng(37.782340, -122.392341),
  LatLng(37.782812, -122.393022),
  LatLng(37.783300, -122.393672),
  LatLng(37.783809, -122.394275),
  LatLng(37.784246, -122.394979),
  LatLng(37.784791, -122.395958),
  LatLng(37.785675, -122.396746),
  LatLng(37.786262, -122.395780),
  LatLng(37.786776, -122.395093),
  LatLng(37.787282, -122.394426),
  LatLng(37.787783, -122.393767),
  LatLng(37.788343, -122.393184),
  LatLng(37.788895, -122.392506),
  LatLng(37.789371, -122.391701),
  LatLng(37.789722, -122.390952),
  LatLng(37.790315, -122.390305),
  LatLng(37.790738, -122.389616),
  LatLng(37.779448, -122.438702),
  LatLng(37.779023, -122.438585),
  LatLng(37.778542, -122.438492),
  LatLng(37.778100, -122.438411),
  LatLng(37.777986, -122.438376),
  LatLng(37.777680, -122.438313),
  LatLng(37.777316, -122.438273),
  LatLng(37.777135, -122.438254),
  LatLng(37.776987, -122.438303),
  LatLng(37.776946, -122.438404),
  LatLng(37.776944, -122.438467),
  LatLng(37.776892, -122.438459),
  LatLng(37.776842, -122.438442),
  LatLng(37.776822, -122.438391),
  LatLng(37.776814, -122.438412),
  LatLng(37.776787, -122.438628),
  LatLng(37.776729, -122.438650),
  LatLng(37.776759, -122.438677),
  LatLng(37.776772, -122.438498),
  LatLng(37.776787, -122.438389),
  LatLng(37.776848, -122.438283),
  LatLng(37.776870, -122.438239),
  LatLng(37.777015, -122.438198),
  LatLng(37.777333, -122.438256),
  LatLng(37.777595, -122.438308),
  LatLng(37.777797, -122.438344),
  LatLng(37.778160, -122.438442),
  LatLng(37.778414, -122.438508),
  LatLng(37.778445, -122.438516),
  LatLng(37.778503, -122.438529),
  LatLng(37.778607, -122.438549),
  LatLng(37.778670, -122.438644),
  LatLng(37.778847, -122.438706),
  LatLng(37.779240, -122.438744),
  LatLng(37.779738, -122.438822),
  LatLng(37.780201, -122.438882),
  LatLng(37.780400, -122.438905),
  LatLng(37.780501, -122.438921),
  LatLng(37.780892, -122.438986),
  LatLng(37.781446, -122.439087),
  LatLng(37.781985, -122.439199),
  LatLng(37.782239, -122.439249),
  LatLng(37.782286, -122.439266),
  LatLng(37.797847, -122.429388),
  LatLng(37.797874, -122.429180),
  LatLng(37.797885, -122.429069),
  LatLng(37.797887, -122.429050),
  LatLng(37.797933, -122.428954),
  LatLng(37.798242, -122.428990),
  LatLng(37.798617, -122.429075),
  LatLng(37.798719, -122.429092),
  LatLng(37.798944, -122.429145),
  LatLng(37.799320, -122.429251),
  LatLng(37.799590, -122.429309),
  LatLng(37.799677, -122.429324),
  LatLng(37.799966, -122.429360),
  LatLng(37.800288, -122.429430),
  LatLng(37.800443, -122.429461),
  LatLng(37.800465, -122.429474),
  LatLng(37.800644, -122.429540),
  LatLng(37.800948, -122.429620),
  LatLng(37.801242, -122.429685),
  LatLng(37.801375, -122.429702),
  LatLng(37.801400, -122.429703),
  LatLng(37.801453, -122.429707),
  LatLng(37.801473, -122.429709),
  LatLng(37.801532, -122.429707),
  LatLng(37.801852, -122.429729),
  LatLng(37.802173, -122.429789),
  LatLng(37.802459, -122.429847),
  LatLng(37.802554, -122.429825),
  LatLng(37.802647, -122.429549),
  LatLng(37.802693, -122.429179),
  LatLng(37.802729, -122.428751),
  LatLng(37.766104, -122.409291),
  LatLng(37.766103, -122.409268),
  LatLng(37.766138, -122.409229),
  LatLng(37.766183, -122.409231),
  LatLng(37.766153, -122.409276),
  LatLng(37.766005, -122.409365),
  LatLng(37.765897, -122.409570),
  LatLng(37.765767, -122.409739),
  LatLng(37.765693, -122.410389),
  LatLng(37.765615, -122.411201),
  LatLng(37.765533, -122.412121),
  LatLng(37.765467, -122.412939),
  LatLng(37.765444, -122.414821),
  LatLng(37.765444, -122.414964),
  LatLng(37.765318, -122.415424),
  LatLng(37.763961, -122.415296),
  LatLng(37.763115, -122.415196),
  LatLng(37.762967, -122.415183),
  LatLng(37.762278, -122.415127),
  LatLng(37.761675, -122.415055),
  LatLng(37.760932, -122.414988),
  LatLng(37.759337, -122.414862),
  LatLng(37.773187, -122.421922),
  LatLng(37.773043, -122.422118),
  LatLng(37.773007, -122.422165),
  LatLng(37.772979, -122.422219),
  LatLng(37.772865, -122.422394),
  LatLng(37.772779, -122.422503),
  LatLng(37.772676, -122.422701),
  LatLng(37.772606, -122.422806),
  LatLng(37.772566, -122.422840),
  LatLng(37.772508, -122.422852),
  LatLng(37.772387, -122.423011),
  LatLng(37.772099, -122.423328),
  LatLng(37.771704, -122.423783),
  LatLng(37.771481, -122.424081),
  LatLng(37.771400, -122.424179),
  LatLng(37.771352, -122.424220),
  LatLng(37.771248, -122.424327),
  LatLng(37.770904, -122.424781),
  LatLng(37.770520, -122.425283),
  LatLng(37.770337, -122.425553),
  LatLng(37.770128, -122.425832),
  LatLng(37.769756, -122.426331),
  LatLng(37.769300, -122.426902),
  LatLng(37.769132, -122.427065),
  LatLng(37.769092, -122.427103),
  LatLng(37.768979, -122.427172),
  LatLng(37.768595, -122.427634),
  LatLng(37.768372, -122.427913),
  LatLng(37.768337, -122.427961),
  LatLng(37.768244, -122.428138),
  LatLng(37.767942, -122.428581),
  LatLng(37.767482, -122.429094),
  LatLng(37.767031, -122.429606),
  LatLng(37.766732, -122.429986),
  LatLng(37.766680, -122.430058),
  LatLng(37.766633, -122.430109),
  LatLng(37.766580, -122.430211),
  LatLng(37.766367, -122.430594),
  LatLng(37.765910, -122.431137),
  LatLng(37.765353, -122.431806),
  LatLng(37.764962, -122.432298),
  LatLng(37.764868, -122.432486),
  LatLng(37.764518, -122.432913),
  LatLng(37.763435, -122.434173),
  LatLng(37.762847, -122.434953),
  LatLng(37.762291, -122.435935),
  LatLng(37.762224, -122.436074),
  LatLng(37.761957, -122.436892),
  LatLng(37.761652, -122.438886),
  LatLng(37.761284, -122.439955),
  LatLng(37.761210, -122.440068),
  LatLng(37.761064, -122.440720),
  LatLng(37.761040, -122.441411),
  LatLng(37.761048, -122.442324),
  LatLng(37.760851, -122.443118),
  LatLng(37.759977, -122.444591),
  LatLng(37.759913, -122.444698),
  LatLng(37.759623, -122.445065),
  LatLng(37.758902, -122.445158),
  LatLng(37.758428, -122.444570),
  LatLng(37.757687, -122.443340),
  LatLng(37.757583, -122.443240),
  LatLng(37.757019, -122.442787),
  LatLng(37.756603, -122.442322),
  LatLng(37.756380, -122.441602),
  LatLng(37.755790, -122.441382),
  LatLng(37.754493, -122.442133),
  LatLng(37.754361, -122.442206),
  LatLng(37.753719, -122.442650),
  LatLng(37.753096, -122.442915),
  LatLng(37.751617, -122.443211),
  LatLng(37.751496, -122.443246),
  LatLng(37.750733, -122.443428),
  LatLng(37.750126, -122.443536),
  LatLng(37.750103, -122.443784),
  LatLng(37.750390, -122.444010),
  LatLng(37.750448, -122.444013),
  LatLng(37.750536, -122.444040),
  LatLng(37.750493, -122.444141),
  LatLng(37.790859, -122.402808),
  LatLng(37.790864, -122.402768),
  LatLng(37.790995, -122.402539),
  LatLng(37.791148, -122.402172),
  LatLng(37.791385, -122.401312),
  LatLng(37.791405, -122.400776),
  LatLng(37.791288, -122.400528),
  LatLng(37.791113, -122.400441),
  LatLng(37.791027, -122.400395),
  LatLng(37.791094, -122.400311),
  LatLng(37.791211, -122.400183),
  LatLng(37.791060, -122.399334),
  LatLng(37.790538, -122.398718),
  LatLng(37.790095, -122.398086),
  LatLng(37.789644, -122.397360),
  LatLng(37.789254, -122.396844),
  LatLng(37.788855, -122.396397),
  LatLng(37.788483, -122.395963),
  LatLng(37.788015, -122.395365),
  LatLng(37.787558, -122.394735),
  LatLng(37.787472, -122.394323),
  LatLng(37.787630, -122.394025),
  LatLng(37.787767, -122.393987),
  LatLng(37.787486, -122.394452),
  LatLng(37.786977, -122.395043),
  LatLng(37.786583, -122.395552),
  LatLng(37.786540, -122.395610),
  LatLng(37.786516, -122.395659),
  LatLng(37.786378, -122.395707),
  LatLng(37.786044, -122.395362),
  LatLng(37.785598, -122.394715),
  LatLng(37.785321, -122.394361),
  LatLng(37.785207, -122.394236),
  LatLng(37.785751, -122.394062),
  LatLng(37.785996, -122.393881),
  LatLng(37.786092, -122.393830),
  LatLng(37.785998, -122.393899),
  LatLng(37.785114, -122.394365),
  LatLng(37.785022, -122.394441),
  LatLng(37.784823, -122.394635),
  LatLng(37.784719, -122.394629),
  LatLng(37.785069, -122.394176),
  LatLng(37.785500, -122.393650),
  LatLng(37.785770, -122.393291),
  LatLng(37.785839, -122.393159),
  LatLng(37.782651, -122.400628),
  LatLng(37.782616, -122.400599),
  LatLng(37.782702, -122.400470),
  LatLng(37.782915, -122.400192),
  LatLng(37.783137, -122.399887),
  LatLng(37.783414, -122.399519),
  LatLng(37.783629, -122.399237),
  LatLng(37.783688, -122.399157),
  LatLng(37.783716, -122.399106),
  LatLng(37.783798, -122.399072),
  LatLng(37.783997, -122.399186),
  LatLng(37.784271, -122.399538),
  LatLng(37.784577, -122.399948),
  LatLng(37.784828, -122.400260),
  LatLng(37.784999, -122.400477),
  LatLng(37.785113, -122.400651),
  LatLng(37.785155, -122.400703),
  LatLng(37.785192, -122.400749),
  LatLng(37.785278, -122.400839),
  LatLng(37.785387, -122.400857),
  LatLng(37.785478, -122.400890),
  LatLng(37.785526, -122.401022),
  LatLng(37.785598, -122.401148),
  LatLng(37.785631, -122.401202),
  LatLng(37.785660, -122.401267),
  LatLng(37.803986, -122.426035),
  LatLng(37.804102, -122.425089),
  LatLng(37.804211, -122.424156),
  LatLng(37.803861, -122.423385),
  LatLng(37.803151, -122.423214),
  LatLng(37.802439, -122.423077),
  LatLng(37.801740, -122.422905),
  LatLng(37.801069, -122.422785),
  LatLng(37.800345, -122.422649),
  LatLng(37.799633, -122.422603),
  LatLng(37.799750, -122.421700),
  LatLng(37.799885, -122.420854),
  LatLng(37.799209, -122.420607),
  LatLng(37.795656, -122.400395),
  LatLng(37.795203, -122.400304),
  LatLng(37.778738, -122.415584),
  LatLng(37.778812, -122.415189),
  LatLng(37.778824, -122.415092),
  LatLng(37.778833, -122.414932),
  LatLng(37.778834, -122.414898),
  LatLng(37.778740, -122.414757),
  LatLng(37.778501, -122.414433),
  LatLng(37.778182, -122.414026),
  LatLng(37.777851, -122.413623),
  LatLng(37.777486, -122.413166),
  LatLng(37.777109, -122.412674),
  LatLng(37.776743, -122.412186),
  LatLng(37.776440, -122.411800),
  LatLng(37.776295, -122.411614),
  LatLng(37.776158, -122.411440),
  LatLng(37.775806, -122.410997),
  LatLng(37.775422, -122.410484),
  LatLng(37.775126, -122.410087),
  LatLng(37.775012, -122.409854),
  LatLng(37.775164, -122.409573),
  LatLng(37.775498, -122.409180),
  LatLng(37.775868, -122.408730),
  LatLng(37.776256, -122.408240),
  LatLng(37.776519, -122.407928),
  LatLng(37.776539, -122.407904),
  LatLng(37.776595, -122.407854),
  LatLng(37.776853, -122.407547),
  LatLng(37.777234, -122.407087),
  LatLng(37.777644, -122.406558),
  LatLng(37.778066, -122.406017),
  LatLng(37.778468, -122.405499),
  LatLng(37.778866, -122.404995),
  LatLng(37.779295, -122.404455),
  LatLng(37.779695, -122.403950),
  LatLng(37.779982, -122.403584),
  LatLng(37.780295, -122.403223),
  LatLng(37.780664, -122.402766),
  LatLng(37.781043, -122.402288),
  LatLng(37.781399, -122.401823),
  LatLng(37.781727, -122.401407),
  LatLng(37.781853, -122.401247),
  LatLng(37.781894, -122.401195),
  LatLng(37.782076, -122.400977),
  LatLng(37.782338, -122.400603),
  LatLng(37.782666, -122.400133),
  LatLng(37.783048, -122.399634),
  LatLng(37.783450, -122.399198),
  LatLng(37.783791, -122.398998),
  LatLng(37.784177, -122.398959),
  LatLng(37.784388, -122.398971),
  LatLng(37.784404, -122.399128),
  LatLng(37.784586, -122.399524),
  LatLng(37.784835, -122.399927),
  LatLng(37.785116, -122.400307),
  LatLng(37.785282, -122.400539),
  LatLng(37.785346, -122.400692),
  LatLng(37.765769, -122.407201),
  LatLng(37.765790, -122.407414),
  LatLng(37.765802, -122.407755),
  LatLng(37.765791, -122.408219),
  LatLng(37.765763, -122.408759),
  LatLng(37.765726, -122.409348),
  LatLng(37.765716, -122.409882),
  LatLng(37.765708, -122.410202),
  LatLng(37.765705, -122.410253),
  LatLng(37.765707, -122.410369),
  LatLng(37.765692, -122.410720),
  LatLng(37.765699, -122.411215),
  LatLng(37.765687, -122.411789),
  LatLng(37.765666, -122.412373),
  LatLng(37.765598, -122.412883),
  LatLng(37.765543, -122.413039),
  LatLng(37.765532, -122.413125),
  LatLng(37.765500, -122.413553),
  LatLng(37.765448, -122.414053),
  LatLng(37.765388, -122.414645),
  LatLng(37.765323, -122.415250),
  LatLng(37.765303, -122.415847),
  LatLng(37.765251, -122.416439),
  LatLng(37.765204, -122.417020),
  LatLng(37.765172, -122.417556),
  LatLng(37.765164, -122.418075),
  LatLng(37.765153, -122.418618),
  LatLng(37.765136, -122.419112),
  LatLng(37.765129, -122.419378),
  LatLng(37.765119, -122.419481),
  LatLng(37.765100, -122.419852),
  LatLng(37.765083, -122.420349),
  LatLng(37.765045, -122.420930),
  LatLng(37.764992, -122.421481),
  LatLng(37.764980, -122.421695),
  LatLng(37.764993, -122.421843),
  LatLng(37.764986, -122.422255),
  LatLng(37.764975, -122.422823),
  LatLng(37.764939, -122.423411),
  LatLng(37.764902, -122.424014),
  LatLng(37.764853, -122.424576),
  LatLng(37.764826, -122.424922),
  LatLng(37.764796, -122.425375),
  LatLng(37.764782, -122.425869),
  LatLng(37.764768, -122.426089),
  LatLng(37.764766, -122.426117),
  LatLng(37.764723, -122.426276),
  LatLng(37.764681, -122.426649),
  LatLng(37.782012, -122.404200),
  LatLng(37.781574, -122.404911),
  LatLng(37.781055, -122.405597),
  LatLng(37.780479, -122.406341),
  LatLng(37.779996, -122.406939),
  LatLng(37.779459, -122.407613),
  LatLng(37.778953, -122.408228),
  LatLng(37.778409, -122.408839),
  LatLng(37.777842, -122.409501),
  LatLng(37.777334, -122.410181),
  LatLng(37.776809, -122.410836),
  LatLng(37.776240, -122.411514),
  LatLng(37.775725, -122.412145),
  LatLng(37.775190, -122.412805),
  LatLng(37.774672, -122.413464),
  LatLng(37.774084, -122.414186),
  LatLng(37.773533, -122.413636),
  LatLng(37.773021, -122.413009),
  LatLng(37.772501, -122.412371),
  LatLng(37.771964, -122.411681),
  LatLng(37.771479, -122.411078),
  LatLng(37.770992, -122.410477),
  LatLng(37.770467, -122.409801),
  LatLng(37.770090, -122.408904),
  LatLng(37.769657, -122.408103),
  LatLng(37.769132, -122.407276),
  LatLng(37.768564, -122.406469),
  LatLng(37.767980, -122.405745),
  LatLng(37.767380, -122.405299),
  LatLng(37.766604, -122.405297),
  LatLng(37.765838, -122.405200),
  LatLng(37.765139, -122.405139),
  LatLng(37.764457, -122.405094),
  LatLng(37.763716, -122.405142),
  LatLng(37.762932, -122.405398),
  LatLng(37.762126, -122.405813),
  LatLng(37.761344, -122.406215),
  LatLng(37.760556, -122.406495),
  LatLng(37.759732, -122.406484),
  LatLng(37.758910, -122.406228),
  LatLng(37.758182, -122.405695),
  LatLng(37.757676, -122.405118),
  LatLng(37.757039, -122.404346),
  LatLng(37.756335, -122.403719),
  LatLng(37.755503, -122.403406),
  LatLng(37.754665, -122.403242),
  LatLng(37.753837, -122.403172),
  LatLng(37.752986, -122.403112),
  LatLng(37.751266, -122.403355)
];
