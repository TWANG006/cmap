
function cm = dense(n, opt_interp)
% Colormap: dense
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
    0.212984	0.055892	0.142210
    0.217807	0.057000	0.146656
    0.222612	0.058088	0.151159
    0.227398	0.059156	0.155722
    0.232165	0.060201	0.160350
    0.236917	0.061219	0.165050
    0.241647	0.062222	0.169816
    0.246352	0.063211	0.174651
    0.251031	0.064189	0.179556
    0.255687	0.065152	0.184539
    0.260316	0.066106	0.189597
    0.264913	0.067059	0.194730
    0.269477	0.068011	0.199938
    0.274007	0.068968	0.205223
    0.278500	0.069932	0.210583
    0.282955	0.070906	0.216022
    0.287370	0.071893	0.221539
    0.291742	0.072901	0.227131
    0.296069	0.073933	0.232796
    0.300348	0.074995	0.238533
    0.304579	0.076089	0.244340
    0.308758	0.077221	0.250215
    0.312885	0.078395	0.256156
    0.316958	0.079615	0.262158
    0.320976	0.080884	0.268220
    0.324936	0.082207	0.274338
    0.328839	0.083586	0.280508
    0.332682	0.085026	0.286726
    0.336467	0.086528	0.292989
    0.340190	0.088095	0.299293
    0.343854	0.089728	0.305634
    0.347456	0.091430	0.312008
    0.350997	0.093201	0.318412
    0.354477	0.095043	0.324840
    0.357897	0.096955	0.331291
    0.361255	0.098938	0.337760
    0.364554	0.100992	0.344244
    0.367792	0.103116	0.350740
    0.370971	0.105309	0.357245
    0.374091	0.107570	0.363757
    0.377153	0.109899	0.370271
    0.380157	0.112293	0.376786
    0.383104	0.114752	0.383300
    0.385995	0.117274	0.389811
    0.388830	0.119857	0.396315
    0.391610	0.122500	0.402812
    0.394337	0.125200	0.409300
    0.397009	0.127957	0.415776
    0.399629	0.130768	0.422240
    0.402197	0.133632	0.428690
    0.404714	0.136546	0.435125
    0.407180	0.139510	0.441543
    0.409596	0.142521	0.447943
    0.411962	0.145578	0.454325
    0.414280	0.148679	0.460687
    0.416549	0.151824	0.467030
    0.418771	0.155009	0.473351
    0.420945	0.158234	0.479651
    0.423073	0.161498	0.485928
    0.425155	0.164799	0.492182
    0.427190	0.168136	0.498413
    0.429181	0.171508	0.504619
    0.431127	0.174913	0.510800
    0.433028	0.178351	0.516956
    0.434886	0.181821	0.523087
    0.436699	0.185321	0.529192
    0.438469	0.188851	0.535270
    0.440196	0.192410	0.541321
    0.441880	0.195996	0.547346
    0.443521	0.199610	0.553342
    0.445120	0.203251	0.559311
    0.446677	0.206917	0.565251
    0.448192	0.210609	0.571162
    0.449665	0.214325	0.577045
    0.451097	0.218065	0.582898
    0.452487	0.221828	0.588722
    0.453835	0.225615	0.594515
    0.455143	0.229424	0.600278
    0.456409	0.233256	0.606010
    0.457634	0.237109	0.611711
    0.458818	0.240983	0.617381
    0.459961	0.244878	0.623018
    0.461063	0.248794	0.628623
    0.462124	0.252731	0.634195
    0.463145	0.256687	0.639733
    0.464124	0.260663	0.645238
    0.465063	0.264659	0.650708
    0.465960	0.268674	0.656143
    0.466817	0.272708	0.661544
    0.467632	0.276761	0.666908
    0.468406	0.280833	0.672235
    0.469140	0.284924	0.677525
    0.469832	0.289033	0.682777
    0.470483	0.293160	0.687991
    0.471093	0.297305	0.693165
    0.471661	0.301468	0.698299
    0.472189	0.305650	0.703392
    0.472674	0.309849	0.708444
    0.473118	0.314065	0.713454
    0.473521	0.318299	0.718420
    0.473882	0.322551	0.723342
    0.474202	0.326820	0.728219
    0.474480	0.331106	0.733050
    0.474717	0.335409	0.737834
    0.474913	0.339729	0.742569
    0.475067	0.344065	0.747256
    0.475181	0.348419	0.751892
    0.475253	0.352789	0.756477
    0.475285	0.357175	0.761010
    0.475275	0.361578	0.765489
    0.475225	0.365997	0.769914
    0.475134	0.370431	0.774282
    0.475004	0.374882	0.778593
    0.474834	0.379348	0.782845
    0.474625	0.383830	0.787038
    0.474378	0.388327	0.791169
    0.474093	0.392838	0.795237
    0.473770	0.397364	0.799241
    0.473411	0.401905	0.803180
    0.473016	0.406459	0.807052
    0.472586	0.411027	0.810856
    0.472122	0.415609	0.814590
    0.471625	0.420203	0.818253
    0.471096	0.424810	0.821843
    0.470538	0.429429	0.825359
    0.469950	0.434060	0.828799
    0.469335	0.438701	0.832163
    0.468694	0.443354	0.835449
    0.468029	0.448016	0.838654
    0.467343	0.452688	0.841779
    0.466636	0.457369	0.844821
    0.465913	0.462057	0.847780
    0.465174	0.466754	0.850654
    0.464423	0.471457	0.853443
    0.463662	0.476166	0.856144
    0.462895	0.480880	0.858757
    0.462123	0.485598	0.861281
    0.461351	0.490321	0.863716
    0.460582	0.495045	0.866059
    0.459820	0.499772	0.868312
    0.459069	0.504499	0.870473
    0.458333	0.509225	0.872543
    0.457615	0.513951	0.874519
    0.456920	0.518674	0.876404
    0.456253	0.523394	0.878196
    0.455619	0.528109	0.879897
    0.455020	0.532819	0.881505
    0.454463	0.537522	0.883022
    0.453952	0.542218	0.884448
    0.453492	0.546905	0.885785
    0.453088	0.551582	0.887032
    0.452746	0.556249	0.888192
    0.452469	0.560903	0.889266
    0.452264	0.565544	0.890255
    0.452134	0.570172	0.891161
    0.452085	0.574785	0.891985
    0.452120	0.579381	0.892730
    0.452246	0.583961	0.893397
    0.452466	0.588524	0.893990
    0.452785	0.593067	0.894510
    0.453205	0.597592	0.894959
    0.453732	0.602096	0.895341
    0.454368	0.606580	0.895658
    0.455118	0.611042	0.895913
    0.455983	0.615482	0.896109
    0.456966	0.619900	0.896248
    0.458070	0.624295	0.896334
    0.459297	0.628666	0.896369
    0.460649	0.633014	0.896357
    0.462126	0.637338	0.896300
    0.463731	0.641637	0.896202
    0.465463	0.645912	0.896066
    0.467323	0.650162	0.895894
    0.469312	0.654388	0.895690
    0.471429	0.658589	0.895456
    0.473674	0.662765	0.895196
    0.476045	0.666917	0.894912
    0.478543	0.671044	0.894607
    0.481166	0.675147	0.894284
    0.483913	0.679225	0.893946
    0.486781	0.683280	0.893594
    0.489770	0.687310	0.893232
    0.492877	0.691317	0.892862
    0.496101	0.695301	0.892486
    0.499438	0.699262	0.892107
    0.502888	0.703200	0.891728
    0.506447	0.707116	0.891349
    0.510112	0.711011	0.890974
    0.513883	0.714883	0.890604
    0.517755	0.718735	0.890241
    0.521727	0.722566	0.889886
    0.525796	0.726376	0.889543
    0.529959	0.730167	0.889212
    0.534214	0.733938	0.888894
    0.538558	0.737691	0.888593
    0.542988	0.741424	0.888308
    0.547503	0.745140	0.888042
    0.552099	0.748838	0.887797
    0.556774	0.752518	0.887573
    0.561526	0.756181	0.887371
    0.566353	0.759828	0.887193
    0.571252	0.763459	0.887040
    0.576221	0.767074	0.886913
    0.581258	0.770674	0.886813
    0.586361	0.774259	0.886742
    0.591528	0.777829	0.886700
    0.596757	0.781386	0.886689
    0.602046	0.784928	0.886709
    0.607394	0.788457	0.886761
    0.612798	0.791972	0.886847
    0.618257	0.795475	0.886967
    0.623770	0.798966	0.887122
    0.629334	0.802444	0.887313
    0.634949	0.805911	0.887541
    0.640613	0.809366	0.887807
    0.646325	0.812809	0.888112
    0.652083	0.816242	0.888456
    0.657887	0.819664	0.888840
    0.663734	0.823075	0.889266
    0.669625	0.826476	0.889734
    0.675558	0.829868	0.890244
    0.681531	0.833249	0.890799
    0.687544	0.836621	0.891399
    0.693597	0.839984	0.892045
    0.699687	0.843337	0.892737
    0.705814	0.846682	0.893477
    0.711978	0.850018	0.894266
    0.718177	0.853345	0.895105
    0.724411	0.856665	0.895994
    0.730678	0.859976	0.896936
    0.736978	0.863279	0.897930
    0.743310	0.866575	0.898979
    0.749674	0.869863	0.900083
    0.756068	0.873144	0.901244
    0.762491	0.876418	0.902462
    0.768943	0.879685	0.903740
    0.775423	0.882946	0.905078
    0.781929	0.886200	0.906478
    0.788462	0.889448	0.907941
    0.795019	0.892691	0.909469
    0.801600	0.895929	0.911063
    0.808203	0.899161	0.912724
    0.814828	0.902389	0.914454
    0.821472	0.905612	0.916254
    0.828135	0.908832	0.918126
    0.834816	0.912049	0.920071
    0.841512	0.915263	0.922090
    0.848223	0.918475	0.924185
    0.854946	0.921685	0.926357
    0.861680	0.924895	0.928607
    0.868423	0.928104	0.930937
    0.875172	0.931315	0.933347
    0.881928	0.934526	0.935837
    0.888686	0.937740	0.938410
    0.895445	0.940958	0.941065
    0.902202	0.944180	0.943803
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
