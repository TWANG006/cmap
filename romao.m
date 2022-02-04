
function cm = romao(n, opt_interp)
% Colormap: romao

%-- Parse inputs ---------------------------------------------------------%
if ~exist('n', 'var'); n = []; end
if isempty(n)
   f = get(groot,'CurrentFigure');
   if isempty(f)
      n = size(get(groot,'DefaultFigureColormap'),1);
   else
      n = size(f.Colormap,1);
   end
end

% by default, interpolate in rgb space
if ~exist('opt_interp','var'); opt_interp = []; end
if isempty(opt_interp); opt_interp = 'rgb'; end
%-------------------------------------------------------------------------%

% Data for colormap:
cm = [
  	0.451373875	0.22345871	0.3418708
  	0.45417936	0.222444238	0.336099154
  	0.456964522	0.221583602	0.330427575
  	0.45974582	0.220901629	0.32483395
  	0.462508758	0.220345584	0.31934641
  	0.465268903	0.219935742	0.313937788
  	0.468025886	0.219680462	0.308619386
  	0.470782102	0.21957701	0.30336672
  	0.473519266	0.219623882	0.298217774
  	0.476275352	0.21982137	0.29315816
  	0.479024038	0.220171739	0.288183645
  	0.481778918	0.220672622	0.283304066
  	0.484529959	0.22130249	0.278502331
  	0.48730794	0.222079022	0.273790014
  	0.490078715	0.22304083	0.269166882
  	0.492862403	0.224106404	0.264606084
  	0.495670101	0.225363082	0.260159133
  	0.498500152	0.226770027	0.25578606
  	0.501335002	0.228325297	0.251528333
  	0.504194622	0.229991675	0.247331299
  	0.507065486	0.231880163	0.243219852
  	0.509967957	0.233865786	0.239229392
  	0.512896328	0.236049899	0.235333622
  	0.515844201	0.238350104	0.231514395
  	0.518841912	0.240822744	0.227787052
  	0.521841594	0.243452879	0.224136433
  	0.524893663	0.246246143	0.220646541
  	0.527968801	0.249200339	0.217202933
  	0.531082227	0.252306972	0.213873324
  	0.534225004	0.255562971	0.210643303
  	0.537416087	0.258987188	0.207528216
  	0.540629537	0.262548749	0.204524226
  	0.543885785	0.266280742	0.201584798
  	0.547179478	0.270168713	0.198791035
  	0.550514704	0.274192208	0.196131589
  	0.553885071	0.278385578	0.193558966
  	0.557305138	0.282734966	0.191089013
  	0.560748189	0.287202954	0.188770258
  	0.564244205	0.291860446	0.186548236
  	0.567772256	0.296649432	0.184461368
  	0.571339571	0.301567625	0.182482556
  	0.574947604	0.30666412	0.180654733
  	0.57859849	0.311863873	0.178977069
  	0.582283854	0.317240057	0.177429746
  	0.586016685	0.322749176	0.175966004
  	0.589770864	0.328375792	0.174730419
  	0.593577701	0.334152074	0.173584612
  	0.597416214	0.34005083	0.172607718
  	0.601285209	0.346064887	0.171791071
  	0.605194293	0.352226126	0.171138827
  	0.60914596	0.358506601	0.1706518
  	0.613114036	0.364912305	0.170336591
  	0.617133053	0.3714317	0.170196472
  	0.621178318	0.378080043	0.170234247
  	0.625256504	0.384832778	0.170455846
  	0.629366636	0.39171274	0.170869499
  	0.633515835	0.398691614	0.171480298
  	0.63768998	0.405792735	0.172294554
  	0.641896921	0.412993419	0.173321703
  	0.64613478	0.420289686	0.174579478
  	0.650407311	0.427708213	0.175999703
  	0.654703468	0.435221981	0.177735557
  	0.659035947	0.442831047	0.179618725
  	0.663406637	0.450539198	0.181754102
  	0.667797549	0.458344002	0.184158837
  	0.672217016	0.466246013	0.186796533
  	0.676668408	0.474245565	0.189683439
  	0.681139875	0.48233432	0.192825592
  	0.685655046	0.490513842	0.196242124
  	0.690186594	0.498775252	0.199871511
  	0.694744893	0.507118789	0.203840956
  	0.699331502	0.515543645	0.208029517
  	0.703943799	0.524059133	0.212508158
  	0.70857927	0.532648109	0.217264667
  	0.713224625	0.541295848	0.22228802
  	0.717895432	0.550028503	0.227609998
  	0.722570749	0.55881192	0.233180387
  	0.727265419	0.567667619	0.239068447
  	0.731967541	0.576577031	0.245212743
  	0.736664299	0.58552607	0.251676902
  	0.741359663	0.594511436	0.258373362
  	0.746052087	0.603541904	0.265369423
  	0.75073207	0.61258677	0.2726302
  	0.755384588	0.62165642	0.280165367
  	0.760006264	0.630745191	0.287961593
  	0.764598505	0.639821074	0.296021336
  	0.769139355	0.648887201	0.304326413
  	0.773630824	0.65793345	0.312873176
  	0.778063514	0.666936482	0.32165342
  	0.782418582	0.675904521	0.330656288
  	0.786694732	0.684810128	0.339884298
  	0.7908673	0.693646016	0.34929177
  	0.794941521	0.702400073	0.358880664
  	0.798900566	0.7110611	0.368666669
  	0.802726574	0.719607587	0.378587855
  	0.806421837	0.728027839	0.388664144
  	0.809957949	0.736314423	0.398853564
  	0.813335088	0.744457903	0.409164193
  	0.816545381	0.752435765	0.419567859
  	0.819560667	0.76024552	0.430039099
  	0.822393521	0.767865276	0.440565806
  	0.82501008	0.775295031	0.451145664
  	0.827418421	0.782520628	0.461742071
  	0.829603947	0.789531253	0.47234557
  	0.831554219	0.796313459	0.482931135
  	0.833257639	0.802869455	0.493494381
  	0.834717114	0.809192173	0.504023492
  	0.83591803	0.815262906	0.51448637
  	0.836858347	0.821087478	0.524870639
  	0.837531129	0.826661529	0.535169716
  	0.837927119	0.831977751	0.545374994
  	0.838045222	0.837030911	0.555455034
  	0.837882936	0.84182373	0.565416872
  	0.837435057	0.846348411	0.575250092
  	0.836696087	0.850614289	0.584934817
  	0.835669003	0.854618222	0.594456625
  	0.834353491	0.858352936	0.603824386
  	0.83273909	0.861831064	0.613005156
  	0.830839168	0.865038817	0.622016426
  	0.828642732	0.867996924	0.630853457
  	0.826152893	0.870684531	0.639486225
  	0.823373162	0.873124381	0.647921663
  	0.82030302	0.875308818	0.656170514
  	0.816950288	0.877237852	0.664201606
  	0.813306179	0.878921936	0.672030504
  	0.809388074	0.880358839	0.679643694
  	0.805181037	0.881555395	0.687052625
  	0.800705574	0.882503842	0.694237024
  	0.79595417	0.883220242	0.701214908
  	0.790938967	0.883701664	0.707969554
  	0.785663544	0.883947568	0.714502397
  	0.780124483	0.883962678	0.720818601
  	0.774334981	0.883749615	0.726915148
  	0.768301175	0.883308807	0.732792359
  	0.762029329	0.882643966	0.738440802
  	0.755527453	0.881765285	0.74387308
  	0.74879222	0.880661429	0.749079012
  	0.741840965	0.879342743	0.754073625
  	0.734682894	0.877813134	0.758841121
  	0.727312863	0.876068133	0.763388472
  	0.719755631	0.874112813	0.767718637
  	0.712006343	0.871954902	0.771837313
  	0.704081578	0.869583616	0.775731891
  	0.695993444	0.867011995	0.779414086
  	0.687740864	0.864246651	0.782881614
  	0.679338916	0.861273381	0.786142516
  	0.670810435	0.858108755	0.78918697
  	0.662149748	0.854755326	0.792019375
  	0.653361916	0.851203815	0.794649495
  	0.644478885	0.847472812	0.797069294
  	0.635504666	0.843556889	0.799295501
  	0.626447894	0.839467366	0.801310053
  	0.617322502	0.835194657	0.803130313
  	0.608144583	0.830753931	0.804757473
  	0.598912079	0.826141948	0.80618974
  	0.589645824	0.821370002	0.807430732
  	0.580374169	0.816440699	0.808484484
  	0.571082958	0.811354171	0.809354995
  	0.561810967	0.806119714	0.810038301
  	0.552546961	0.800741534	0.810547372
  	0.543316929	0.795224875	0.810884868
  	0.534124813	0.789578648	0.811050736
  	0.524999428	0.783804943	0.811048293
  	0.515929466	0.777906197	0.810881285
  	0.506954572	0.771892376	0.810553867
  	0.498077308	0.765770656	0.810073134
  	0.489276115	0.759536271	0.809444131
  	0.480607244	0.753210355	0.8086621
  	0.472071585	0.746795099	0.807734788
  	0.463654383	0.740290033	0.806671036
  	0.455394361	0.733700555	0.805461755
  	0.447278928	0.727034218	0.804130158
  	0.439336621	0.720298505	0.802660921
  	0.431578203	0.71349722	0.801070341
  	0.423976079	0.706637594	0.79936049
  	0.41658319	0.699710836	0.797520584
  	0.40937951	0.692746943	0.795570289
  	0.402372227	0.685722634	0.793511483
  	0.395597689	0.678654647	0.791329804
  	0.389025948	0.671548907	0.789048298
  	0.382671345	0.664406303	0.78665686
  	0.376561947	0.65723646	0.784158257
  	0.370659987	0.65002617	0.781553124
  	0.365015648	0.642789073	0.77884397
  	0.359614744	0.635524595	0.776036096
  	0.354461288	0.62824436	0.773123354
  	0.349553298	0.62093578	0.770112594
  	0.344901327	0.613598608	0.766997647
  	0.340512061	0.606253491	0.763781921
  	0.336374073	0.598893331	0.760465353
  	0.332528969	0.591513859	0.757040266
  	0.328929781	0.584115416	0.75350966
  	0.32558661	0.576713862	0.749871388
  	0.322555381	0.5692804	0.746129044
  	0.319776812	0.561855234	0.742275402
  	0.317272158	0.554405969	0.738302385
  	0.315046235	0.546948808	0.734220565
  	0.313108881	0.539476833	0.730018305
  	0.311440785	0.532009191	0.725694951
  	0.310070856	0.524525178	0.721239405
  	0.308965968	0.517042351	0.716672689
  	0.308112337	0.509545895	0.711965502
  	0.307547556	0.50205356	0.707131652
  	0.307259929	0.494560989	0.702158432
  	0.307233577	0.48706528	0.697055798
  	0.307462786	0.479578054	0.69181631
  	0.307949455	0.472097808	0.686432002
  	0.308702142	0.464627861	0.680904292
  	0.309676563	0.457161404	0.675245104
  	0.310879433	0.449727668	0.669442622
  	0.312279305	0.442318714	0.663499069
  	0.313934178	0.434929665	0.657411933
  	0.315778383	0.427576843	0.651183536
  	0.317795101	0.420252877	0.644816598
  	0.320009081	0.412992433	0.638326092
  	0.322377217	0.40577354	0.63170369
  	0.324885952	0.398606009	0.624954312
  	0.327554052	0.391515786	0.6180864
  	0.330352909	0.38448361	0.611109581
  	0.333269985	0.377545274	0.604024263
  	0.336267009	0.370682136	0.596835463
  	0.339387469	0.363923272	0.58954911
  	0.342566171	0.357279613	0.582191172
  	0.34579965	0.350728401	0.574755568
  	0.34911681	0.344276067	0.567267232
  	0.352467122	0.337969511	0.559714219
  	0.355865713	0.331794294	0.55211952
  	0.35927197	0.325743399	0.544484281
  	0.362710136	0.319862449	0.536835756
  	0.366167015	0.314105969	0.529165473
  	0.369610673	0.308515101	0.521480826
  	0.373060657	0.303063402	0.513820683
  	0.376517214	0.29779593	0.506154769
  	0.379939133	0.29269061	0.498536937
  	0.38336017	0.28775211	0.490940984
  	0.386740349	0.283008571	0.483366123
  	0.390111486	0.278417874	0.475862038
  	0.393459722	0.274008885	0.468396557
  	0.396771875	0.269784448	0.460998219
  	0.400063899	0.265727787	0.453664865
  	0.403325707	0.261850635	0.446403573
  	0.406547401	0.258146095	0.439212822
  	0.409741226	0.254657941	0.432119552
  	0.412904844	0.251320539	0.425086919
  	0.416022981	0.248165711	0.418134763
  	0.419121636	0.245150449	0.41128264
  	0.422176393	0.242351732	0.404511468
  	0.425223742	0.239720067	0.3978445
  	0.42822602	0.237275911	0.39126118
  	0.431207038	0.234977235	0.384754587
  	0.434145103	0.232820144	0.378356602
  	0.437081745	0.230864082	0.372040424
  	0.439978916	0.229065578	0.365831611
  	0.442859611	0.227427919	0.359703036
  	0.445705699	0.225956596	0.353661316
  	0.448554652	0.224596141	0.347728375
];

%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp, 'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
elseif strcmp(opt_interp, 'none') % do nothing
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end

end
