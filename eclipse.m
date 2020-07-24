
function cm = eclipse(n, opt_interp)
% Colormap: eclipse
% Source:   CMasher
% Authors:	Ellert van der Velden

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


% data for colormap
cm = [
    0.000000	0.000000	0.000000
    0.000208	0.000211	0.000265
    0.000713	0.000731	0.000949
    0.001462	0.001514	0.002030
    0.002431	0.002542	0.003507
    0.003600	0.003801	0.005384
    0.004958	0.005285	0.007671
    0.006490	0.006987	0.010378
    0.008189	0.008902	0.013516
    0.010043	0.011028	0.017097
    0.012046	0.013362	0.021134
    0.014187	0.015903	0.025640
    0.016460	0.018650	0.030628
    0.018856	0.021601	0.036113
    0.021368	0.024757	0.042062
    0.023987	0.028117	0.048063
    0.026707	0.031682	0.054053
    0.029519	0.035452	0.060036
    0.032415	0.039429	0.066015
    0.035387	0.043493	0.071994
    0.038427	0.047512	0.077975
    0.041499	0.051500	0.083961
    0.044483	0.055460	0.089953
    0.047384	0.059395	0.095954
    0.050201	0.063308	0.101964
    0.052934	0.067200	0.107984
    0.055584	0.071076	0.114016
    0.058149	0.074935	0.120061
    0.060629	0.078782	0.126118
    0.063021	0.082617	0.132188
    0.065326	0.086444	0.138272
    0.067540	0.090262	0.144370
    0.069662	0.094075	0.150480
    0.071689	0.097884	0.156603
    0.073619	0.101691	0.162739
    0.075449	0.105498	0.168885
    0.077175	0.109305	0.175043
    0.078795	0.113115	0.181209
    0.080304	0.116929	0.187383
    0.081697	0.120750	0.193563
    0.082970	0.124577	0.199747
    0.084119	0.128414	0.205932
    0.085137	0.132262	0.212117
    0.086019	0.136121	0.218297
    0.086758	0.139995	0.224469
    0.087347	0.143884	0.230631
    0.087779	0.147791	0.236776
    0.088045	0.151716	0.242901
    0.088137	0.155662	0.249000
    0.088045	0.159629	0.255067
    0.087760	0.163620	0.261095
    0.087271	0.167637	0.267075
    0.086566	0.171679	0.273001
    0.085633	0.175750	0.278862
    0.084461	0.179850	0.284648
    0.083035	0.183981	0.290348
    0.081344	0.188142	0.295949
    0.079373	0.192336	0.301436
    0.077111	0.196561	0.306796
    0.074548	0.200818	0.312013
    0.071673	0.205106	0.317069
    0.068481	0.209423	0.321947
    0.064971	0.213767	0.326629
    0.061149	0.218134	0.331097
    0.057031	0.222522	0.335336
    0.052641	0.226924	0.339329
    0.048024	0.231334	0.343065
    0.043242	0.235746	0.346534
    0.038380	0.240152	0.349732
    0.033798	0.244545	0.352657
    0.029720	0.248916	0.355314
    0.026254	0.253259	0.357713
    0.023498	0.257566	0.359867
    0.021536	0.261833	0.361791
    0.020438	0.266055	0.363505
    0.020258	0.270228	0.365029
    0.021035	0.274350	0.366383
    0.022795	0.278419	0.367589
    0.025554	0.282436	0.368664
    0.029318	0.286400	0.369628
    0.034085	0.290313	0.370498
    0.039850	0.294175	0.371288
    0.046249	0.297988	0.372012
    0.052931	0.301754	0.372683
    0.059808	0.305475	0.373312
    0.066813	0.309153	0.373907
    0.073895	0.312791	0.374478
    0.081015	0.316390	0.375031
    0.088146	0.319953	0.375573
    0.095269	0.323481	0.376109
    0.102368	0.326976	0.376644
    0.109434	0.330441	0.377183
    0.116459	0.333877	0.377728
    0.123437	0.337287	0.378282
    0.130366	0.340671	0.378849
    0.137243	0.344031	0.379431
    0.144066	0.347369	0.380029
    0.150835	0.350687	0.380645
    0.157550	0.353985	0.381280
    0.164211	0.357266	0.381936
    0.170819	0.360530	0.382613
    0.177374	0.363778	0.383313
    0.183878	0.367013	0.384035
    0.190332	0.370234	0.384780
    0.196736	0.373443	0.385548
    0.203093	0.376641	0.386340
    0.209403	0.379829	0.387155
    0.215667	0.383008	0.387994
    0.221886	0.386178	0.388856
    0.228063	0.389341	0.389741
    0.234197	0.392498	0.390648
    0.240291	0.395648	0.391578
    0.246346	0.398794	0.392529
    0.252362	0.401935	0.393501
    0.258340	0.405073	0.394494
    0.264283	0.408208	0.395506
    0.270191	0.411341	0.396536
    0.276065	0.414471	0.397584
    0.281906	0.417601	0.398649
    0.287716	0.420731	0.399729
    0.293495	0.423860	0.400823
    0.299245	0.426990	0.401930
    0.304967	0.430121	0.403048
    0.310662	0.433253	0.404175
    0.316332	0.436388	0.405311
    0.321978	0.439524	0.406453
    0.327601	0.442663	0.407599
    0.333203	0.445806	0.408748
    0.338786	0.448951	0.409896
    0.344350	0.452100	0.411043
    0.349899	0.455252	0.412185
    0.355433	0.458408	0.413321
    0.360955	0.461568	0.414446
    0.366467	0.464731	0.415560
    0.371972	0.467898	0.416659
    0.377472	0.471068	0.417741
    0.382969	0.474241	0.418802
    0.388466	0.477417	0.419841
    0.393967	0.480596	0.420853
    0.399473	0.483776	0.421838
    0.404989	0.486958	0.422791
    0.410518	0.490140	0.423710
    0.416063	0.493323	0.424593
    0.421626	0.496504	0.425437
    0.427213	0.499684	0.426241
    0.432826	0.502861	0.427003
    0.438468	0.506035	0.427721
    0.444142	0.509204	0.428393
    0.449853	0.512368	0.429019
    0.455602	0.515526	0.429598
    0.461392	0.518676	0.430128
    0.467226	0.521817	0.430611
    0.473107	0.524950	0.431047
    0.479035	0.528072	0.431434
    0.485013	0.531183	0.431775
    0.491042	0.534282	0.432070
    0.497124	0.537369	0.432319
    0.503258	0.540443	0.432525
    0.509446	0.543504	0.432688
    0.515688	0.546550	0.432809
    0.521982	0.549583	0.432891
    0.528330	0.552601	0.432933
    0.534731	0.555605	0.432939
    0.541184	0.558594	0.432909
    0.547688	0.561568	0.432844
    0.554242	0.564528	0.432746
    0.560844	0.567474	0.432616
    0.567495	0.570405	0.432454
    0.574192	0.573323	0.432262
    0.580934	0.576227	0.432040
    0.587720	0.579118	0.431788
    0.594549	0.581996	0.431507
    0.601419	0.584862	0.431198
    0.608328	0.587715	0.430858
    0.615276	0.590557	0.430490
    0.622261	0.593389	0.430092
    0.629282	0.596209	0.429664
    0.636338	0.599020	0.429204
    0.643426	0.601821	0.428713
    0.650547	0.604614	0.428188
    0.657698	0.607398	0.427628
    0.664879	0.610175	0.427032
    0.672088	0.612945	0.426398
    0.679324	0.615709	0.425723
    0.686586	0.618468	0.425006
    0.693872	0.621222	0.424244
    0.701180	0.623973	0.423435
    0.708510	0.626721	0.422573
    0.715860	0.629468	0.421658
    0.723226	0.632214	0.420684
    0.730609	0.634962	0.419647
    0.738004	0.637713	0.418544
    0.745410	0.640468	0.417368
    0.752823	0.643229	0.416115
    0.760240	0.646000	0.414778
    0.767656	0.648781	0.413352
    0.775067	0.651578	0.411829
    0.782467	0.654393	0.410201
    0.789848	0.657230	0.408462
    0.797203	0.660095	0.406602
    0.804520	0.662994	0.404615
    0.811788	0.665933	0.402492
    0.818992	0.668922	0.400226
    0.826114	0.671971	0.397813
    0.833133	0.675090	0.395251
    0.840025	0.678293	0.392542
    0.846762	0.681594	0.389695
    0.853314	0.685010	0.386726
    0.859652	0.688554	0.383662
    0.865746	0.692242	0.380538
    0.871572	0.696083	0.377396
    0.877114	0.700086	0.374283
    0.882365	0.704250	0.371243
    0.887329	0.708574	0.368317
    0.892015	0.713050	0.365536
    0.896442	0.717667	0.362920
    0.900631	0.722414	0.360481
    0.904604	0.727280	0.358222
    0.908381	0.732252	0.356139
    0.911985	0.737320	0.354229
    0.915434	0.742475	0.352479
    0.918744	0.747708	0.350879
    0.921930	0.753011	0.349422
    0.925004	0.758380	0.348092
    0.927979	0.763807	0.346881
    0.930862	0.769289	0.345777
    0.933662	0.774822	0.344772
    0.936388	0.780401	0.343859
    0.939045	0.786025	0.343027
    0.941638	0.791690	0.342271
    0.944173	0.797395	0.341583
    0.946652	0.803137	0.340954
    0.949080	0.808916	0.340380
    0.951461	0.814728	0.339859
    0.953795	0.820575	0.339379
    0.956088	0.826453	0.338942
    0.958340	0.832362	0.338540
    0.960552	0.838303	0.338168
    0.962728	0.844273	0.337826
    0.964869	0.850273	0.337508
    0.966975	0.856301	0.337211
    0.969048	0.862358	0.336932
    0.971089	0.868443	0.336667
    0.973098	0.874556	0.336414
    0.975076	0.880697	0.336170
    0.977025	0.886865	0.335933
    0.978944	0.893060	0.335700
    0.980834	0.899282	0.335468
    0.982695	0.905532	0.335236
    0.984528	0.911808	0.335002
    0.986335	0.918111	0.334765
    0.988112	0.924442	0.334519
    0.989860	0.930800	0.334263
    0.991584	0.937184	0.334000
    0.993278	0.943596	0.333723
    0.994943	0.950036	0.333428
   ];


%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp,'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end


end
