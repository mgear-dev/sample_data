//Maya ASCII 2020 scene
//Name: surface.ma
//Last modified: Tue, Nov 10, 2020 12:41:08 AM
//Codeset: 1252
requires maya "2020";
requires "stereoCamera" "10.0";
requires -dataType "ngSkinLayerDataStorage" "ngSkinTools" "1.8.2";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202009141615-87c40af620";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19041)\n";
fileInfo "UUID" "7EAC80E9-4546-5244-BFF7-26A8CFEC715C";
createNode transform -n "sliding_surface";
	rename -uid "ED49F081-47F6-32BE-577A-3BBE2C1D42BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.068651186765702477 28.962347498161602 2.6494267605940083 ;
	setAttr ".r" -type "double3" 92.794051217800103 0 0 ;
	setAttr ".s" -type "double3" 5.0471796954997385 3.8580733098249835 4.1560980029309285 ;
createNode nurbsSurface -n "sliding_surfaceShape" -p "sliding_surface";
	rename -uid "B1CEE201-4318-75C7-28D1-A8AB0732CBC0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		11 0 0 0 0.16666666666666666 0.33333333333333331 0.5 0.66666666666666663 0.83333333333333326
		 1 1 1
		11 0 0 0 0.16666666666666666 0.33333333333333331 0.5 0.66666666666666663 0.83333333333333326
		 1 1 1
		
		81
		-0.18493821781857567 -0.47886715952800385 0.50828289757255174
		-0.18982268142520173 -0.47856232274384924 0.45410032431572223
		-0.19787366647689716 -0.47618177645092508 0.34882945492883
		-0.22096531430349484 -0.43368702804761017 0.18008626169826325
		-0.23178493263105895 -0.44079203933950784 0.013047060165605195
		-0.23528363478953729 -0.45864607899223075 -0.1455989942153515
		-0.23462417315387754 -0.47069950566616348 -0.30552098225341418
		-0.21991456037134777 -0.48162804866368503 -0.38710721659782177
		-0.20848485522672072 -0.47753585067043514 -0.41850605546299935
		-0.16726724664127804 -0.44532391769170665 0.50297120085957392
		-0.1703848329925981 -0.44188365372867111 0.44584149030819109
		-0.18383534602235418 -0.37593124892892321 0.28734551218357396
		-0.2155260435749268 -0.37261278478380172 0.17726143288415042
		-0.22795505484453732 -0.37470095859323005 0.011193254351329784
		-0.22310153949146741 -0.39135566492715446 -0.14628631287357763
		-0.22180453964469032 -0.40668403667289343 -0.31028065905759394
		-0.21020945607882616 -0.41096407852375255 -0.38366737248751015
		-0.19600764173810706 -0.42111403100944617 -0.42150147215868472
		-0.11529438707024178 -0.24101687252185927 0.36814738338553532
		-0.12428812125581377 -0.25785798142323557 0.35844767919420484
		-0.1479517882912435 -0.27697854699725755 0.3073244480988846
		-0.18268212573108775 -0.28476193902884389 0.15028013238800231
		-0.20072534493111807 -0.25739615198116811 0.005349510427148374
		-0.19873230252922025 -0.24742110584300087 -0.151182029761185
		-0.18454324020908017 -0.28686538286505031 -0.31088450094476183
		-0.17515837077160917 -0.30473725331714591 -0.38667970159567311
		-0.17067481059028125 -0.32365065018562439 -0.41818818580393913
		-0.070771738477930793 -0.15517101814906409 0.38288296073671546
		-0.07109786250504678 -0.15288316626032272 0.38097219980272889
		-0.082803175667517326 -0.14849954055182807 0.32871106785321391
		-0.11689074633451123 -0.1388776042347189 0.17526435164672538
		-0.11109698306827909 -0.17418274871012146 0.016066786580998915
		-0.12107775296165986 -0.13891335448736714 -0.15609975182300762
		-0.10941430265164039 -0.17002641253179812 -0.29716065895830202
		-0.1019945844971652 -0.20161231586501099 -0.38025955961977509
		-0.097488828680675071 -0.21035644640280654 -0.39935981037390711
		0.0025691482875703615 -0.13672795053971321 0.3844830791006606
		-0.0022625260893659408 -0.11758890825700091 0.36120239636350604
		-0.004136052979014984 -0.11161868773881084 0.32628206901998702
		-0.0075438711439457734 -0.051303342604145485 0.11064812379316624
		-0.0044911680915043157 -0.038930733731753486 0.026244160930933624
		0.00050910412073151823 -0.11253927183756846 -0.17813681317528207
		-0.0031225912474436126 -0.13315020058349719 -0.29298175261520321
		-0.0056436528906149809 -0.16768812436352765 -0.37893165641089599
		-0.0050950398689809332 -0.17477755043210896 -0.39448024472897014
		0.053515034403259706 -0.15972970852300339 0.37831187953605205
		0.061910810848813703 -0.16852624842317776 0.37489401129460731
		0.069980253874467088 -0.16334993876743592 0.3291224163204225
		0.11655048479784155 -0.16439666125442043 0.17386304650465245
		0.10859341406640637 -0.18585926357621096 0.017400783049665414
		0.11354385733944397 -0.15004119995461423 -0.15748956252308499
		0.090560423703901355 -0.17463119113375647 -0.29736970381283179
		0.087054329980128339 -0.2076716694986413 -0.3775139930049205
		0.083902989511938864 -0.21495022899959343 -0.39454822203317175
		0.09673181536436784 -0.25141839377375708 0.36215657692007053
		0.10799457164187365 -0.27244170928781242 0.35003056008870725
		0.1307070091356525 -0.29138576394949411 0.30169982600955425
		0.166463203705561 -0.29529034438946899 0.14713692073955453
		0.18073962469541505 -0.26768854061000447 0.0065201750199310737
		0.17712401854532278 -0.2593607089423306 -0.14897919530122294
		0.16659369728889215 -0.30191411309799815 -0.30733698742713145
		0.15973260767467698 -0.31802034920968852 -0.37703041660385228
		0.15382710297203131 -0.33521587675768194 -0.41447731821574063
		0.14772460153768155 -0.45253369989823755 0.50121917592297738
		0.1554859126112314 -0.45625792351292438 0.44461529814367662
		0.16481101087835268 -0.38022961819507617 0.27911211671776748
		0.19327442119977978 -0.38139484216998221 0.17363476681944245
		0.20508951376436993 -0.38081368517722808 0.006555195196797925
		0.20129816425020539 -0.40224827151936804 -0.14726176753493814
		0.20028826285032375 -0.41560047926854182 -0.3042384996331382
		0.18819943109849221 -0.4140943709238859 -0.3785228039019648
		0.18036803625995382 -0.43252624865856942 -0.40731969252146172
		0.16562716113469078 -0.48989750668389559 0.5076095843979056
		0.16908582739276329 -0.48549290919212951 0.45123566992387065
		0.17568337524834471 -0.48068878702167772 0.34404835017606761
		0.19720208541668607 -0.43350237077121762 0.17631664211872522
		0.20836471006462037 -0.4418328440437897 0.0075966073989501837
		0.24776977282844684 -0.52164244369919011 -0.13547564104408938
		0.21267141710011789 -0.47985123021468173 -0.30139887306149582
		0.19718192089153394 -0.48276171686703356 -0.38363277542844276
		0.18890948203089916 -0.48890485548632356 -0.41105936487327277
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 129 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 132 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 36 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 36 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "sliding_surfaceShape.iog" ":initialShadingGroup.dsm" -na;
// End of surface.ma