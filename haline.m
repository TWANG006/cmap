
function cm = haline(n, opt_interp)
% Colormap: haline
% Source:   cmocean
% Authors:	Kristen M. Thyng, Chad A. Greene, Robert D. Hetland, Heather M.
%           Zimmerle, and Steven F. DiMarco

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
    0.162953	0.095216	0.422573
    0.164810	0.096351	0.431846
    0.166616	0.097450	0.441206
    0.168366	0.098515	0.450651
    0.170055	0.099553	0.460175
    0.171675	0.100569	0.469772
    0.173220	0.101571	0.479434
    0.174680	0.102571	0.489151
    0.176043	0.103566	0.498942
    0.177298	0.104580	0.508772
    0.178432	0.105638	0.518611
    0.179423	0.106742	0.528484
    0.180254	0.107936	0.538325
    0.180898	0.109239	0.548135
    0.181330	0.110704	0.557844
    0.181507	0.112361	0.567447
    0.181396	0.114280	0.576851
    0.180950	0.116525	0.585982
    0.180117	0.119168	0.594749
    0.178842	0.122289	0.603037
    0.177075	0.125962	0.610708
    0.174776	0.130249	0.617617
    0.171926	0.135177	0.623629
    0.168530	0.140731	0.628636
    0.164637	0.146843	0.632580
    0.160314	0.153407	0.635470
    0.155654	0.160291	0.637374
    0.150737	0.167369	0.638399
    0.145643	0.174529	0.638669
    0.140437	0.181684	0.638309
    0.135173	0.188769	0.637435
    0.129891	0.195740	0.636147
    0.124621	0.202570	0.634528
    0.119386	0.209245	0.632648
    0.114229	0.215746	0.630577
    0.109140	0.222083	0.628346
    0.104144	0.228255	0.625998
    0.099263	0.234261	0.623572
    0.094495	0.240114	0.621082
    0.089870	0.245815	0.618559
    0.085393	0.251373	0.616017
    0.081068	0.256800	0.613460
    0.076944	0.262092	0.610924
    0.073007	0.267266	0.608397
    0.069277	0.272327	0.605887
    0.065788	0.277279	0.603414
    0.062556	0.282128	0.600979
    0.059592	0.286883	0.598580
    0.056918	0.291549	0.596221
    0.054553	0.296130	0.593908
    0.052519	0.300632	0.591641
    0.050839	0.305056	0.589432
    0.049515	0.309410	0.587271
    0.048555	0.313698	0.585163
    0.047964	0.317923	0.583106
    0.047739	0.322088	0.581103
    0.047875	0.326198	0.579153
    0.048360	0.330255	0.577256
    0.049176	0.334263	0.575413
    0.050305	0.338223	0.573623
    0.051724	0.342140	0.571887
    0.053408	0.346014	0.570203
    0.055332	0.349850	0.568572
    0.057472	0.353648	0.566992
    0.059804	0.357411	0.565463
    0.062303	0.361142	0.563984
    0.064949	0.364841	0.562556
    0.067722	0.368512	0.561175
    0.070604	0.372155	0.559843
    0.073578	0.375771	0.558561
    0.076631	0.379363	0.557327
    0.079747	0.382932	0.556138
    0.082916	0.386480	0.554994
    0.086126	0.390008	0.553893
    0.089368	0.393517	0.552836
    0.092635	0.397009	0.551820
    0.095918	0.400485	0.550846
    0.099213	0.403945	0.549913
    0.102514	0.407390	0.549023
    0.105814	0.410823	0.548170
    0.109110	0.414244	0.547355
    0.112398	0.417653	0.546576
    0.115673	0.421053	0.545832
    0.118934	0.424443	0.545123
    0.122178	0.427825	0.544451
    0.125402	0.431199	0.543811
    0.128603	0.434566	0.543202
    0.131780	0.437928	0.542623
    0.134931	0.441284	0.542073
    0.138055	0.444636	0.541555
    0.141150	0.447983	0.541064
    0.144215	0.451328	0.540598
    0.147249	0.454671	0.540156
    0.150250	0.458012	0.539738
    0.153219	0.461351	0.539346
    0.156155	0.464689	0.538974
    0.159055	0.468028	0.538622
    0.161921	0.471367	0.538288
    0.164752	0.474708	0.537973
    0.167548	0.478049	0.537676
    0.170308	0.481393	0.537392
    0.173032	0.484740	0.537122
    0.175719	0.488089	0.536864
    0.178372	0.491441	0.536618
    0.180988	0.494798	0.536382
    0.183568	0.498158	0.536153
    0.186113	0.501523	0.535929
    0.188623	0.504893	0.535713
    0.191099	0.508268	0.535500
    0.193540	0.511648	0.535289
    0.195947	0.515034	0.535077
    0.198323	0.518426	0.534867
    0.200666	0.521824	0.534653
    0.202978	0.525229	0.534435
    0.205260	0.528640	0.534210
    0.207513	0.532058	0.533980
    0.209739	0.535482	0.533741
    0.211938	0.538914	0.533491
    0.214111	0.542353	0.533228
    0.216262	0.545798	0.532954
    0.218390	0.549251	0.532663
    0.220497	0.552712	0.532356
    0.222586	0.556179	0.532031
    0.224657	0.559654	0.531687
    0.226714	0.563135	0.531321
    0.228758	0.566624	0.530933
    0.230791	0.570120	0.530520
    0.232815	0.573622	0.530082
    0.234833	0.577132	0.529617
    0.236847	0.580647	0.529123
    0.238859	0.584170	0.528600
    0.240872	0.587698	0.528044
    0.242888	0.591233	0.527457
    0.244911	0.594774	0.526836
    0.246942	0.598320	0.526179
    0.248985	0.601871	0.525485
    0.251042	0.605428	0.524755
    0.253116	0.608989	0.523985
    0.255211	0.612555	0.523176
    0.257329	0.616125	0.522324
    0.259472	0.619699	0.521430
    0.261646	0.623276	0.520494
    0.263851	0.626857	0.519514
    0.266091	0.630441	0.518486
    0.268370	0.634026	0.517413
    0.270690	0.637614	0.516294
    0.273055	0.641204	0.515126
    0.275468	0.644794	0.513907
    0.277931	0.648386	0.512639
    0.280448	0.651978	0.511321
    0.283023	0.655569	0.509954
    0.285657	0.659161	0.508530
    0.288354	0.662751	0.507054
    0.291118	0.666339	0.505525
    0.293951	0.669926	0.503944
    0.296856	0.673510	0.502306
    0.299836	0.677091	0.500611
    0.302894	0.680668	0.498861
    0.306034	0.684241	0.497056
    0.309257	0.687809	0.495195
    0.312566	0.691372	0.493273
    0.315965	0.694930	0.491293
    0.319456	0.698480	0.489255
    0.323041	0.702023	0.487161
    0.326724	0.705559	0.485009
    0.330507	0.709086	0.482796
    0.334393	0.712604	0.480520
    0.338384	0.716112	0.478186
    0.342482	0.719609	0.475795
    0.346691	0.723094	0.473344
    0.351012	0.726568	0.470836
    0.355448	0.730028	0.468267
    0.360002	0.733474	0.465634
    0.364676	0.736906	0.462944
    0.369473	0.740322	0.460197
    0.374394	0.743721	0.457392
    0.379441	0.747102	0.454531
    0.384618	0.750464	0.451615
    0.389927	0.753806	0.448644
    0.395370	0.757128	0.445619
    0.400951	0.760427	0.442538
    0.406671	0.763702	0.439406
    0.412533	0.766953	0.436225
    0.418540	0.770177	0.432998
    0.424692	0.773373	0.429728
    0.430994	0.776540	0.426418
    0.437447	0.779676	0.423072
    0.444053	0.782780	0.419693
    0.450816	0.785849	0.416287
    0.457738	0.788883	0.412859
    0.464820	0.791878	0.409417
    0.472064	0.794834	0.405966
    0.479473	0.797748	0.402518
    0.487047	0.800618	0.399080
    0.494788	0.803442	0.395665
    0.502695	0.806218	0.392285
    0.510772	0.808944	0.388951
    0.519018	0.811618	0.385680
    0.527427	0.814238	0.382493
    0.535997	0.816803	0.379411
    0.544724	0.819312	0.376454
    0.553602	0.821763	0.373647
    0.562622	0.824156	0.371015
    0.571780	0.826489	0.368583
    0.581062	0.828765	0.366380
    0.590452	0.830984	0.364436
    0.599936	0.833147	0.362780
    0.609498	0.835259	0.361438
    0.619118	0.837321	0.360435
    0.628775	0.839338	0.359796
    0.638452	0.841315	0.359536
    0.648128	0.843256	0.359671
    0.657785	0.845166	0.360209
    0.667405	0.847051	0.361154
    0.676962	0.848920	0.362510
    0.686449	0.850775	0.364267
    0.695854	0.852621	0.366415
    0.705169	0.854464	0.368944
    0.714383	0.856307	0.371836
    0.723492	0.858154	0.375074
    0.732491	0.860008	0.378641
    0.741377	0.861874	0.382516
    0.750151	0.863752	0.386680
    0.758813	0.865644	0.391113
    0.767364	0.867553	0.395797
    0.775808	0.869479	0.400715
    0.784148	0.871423	0.405851
    0.792378	0.873389	0.411182
    0.800498	0.875378	0.416694
    0.808524	0.877387	0.422376
    0.816463	0.879415	0.428219
    0.824319	0.881462	0.434211
    0.832086	0.883531	0.440336
    0.839754	0.885628	0.446572
    0.847354	0.887742	0.452931
    0.854891	0.889873	0.459405
    0.862341	0.892031	0.465965
    0.869719	0.894211	0.472613
    0.877048	0.896406	0.479360
    0.884306	0.898624	0.486177
    0.891497	0.900867	0.493059
    0.898651	0.903121	0.500030
    0.905733	0.905403	0.507044
    0.912768	0.907703	0.514123
    0.919772	0.910015	0.521277
    0.926700	0.912359	0.528448
    0.933609	0.914711	0.535699
    0.940461	0.917089	0.542975
    0.947280	0.919483	0.550304
    0.954066	0.921892	0.557680
    0.960805	0.924325	0.565079
    0.967529	0.926767	0.572541
    0.974197	0.929238	0.580004
    0.980863	0.931712	0.587543
    0.987468	0.934220	0.595065
    0.994081	0.936728	0.602670
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