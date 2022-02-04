
function cm = lavender(n, opt_interp)
% Colormap: lavender

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
  	0.000000	0.000000	0
  	0.000226	0.000127	0.00018
  	0.000814	0.000429	0.00064
  	0.001743	0.000864	0.001355
  	0.003012	0.00141	0.002321
  	0.004626	0.002053	0.00354
  	0.00659	0.002781	0.005016
  	0.00891	0.003582	0.006755
  	0.011591	0.004449	0.008764
  	0.014641	0.005373	0.011053
  	0.018068	0.006348	0.013632
  	0.021877	0.007366	0.016511
  	0.026076	0.00842	0.019703
  	0.030671	0.009506	0.023221
  	0.035671	0.010616	0.027079
  	0.041069	0.011746	0.031293
  	0.046529	0.01289	0.03588
  	0.051962	0.014041	0.040848
  	0.057373	0.015197	0.045923
  	0.062762	0.016349	0.051029
  	0.068133	0.017495	0.056172
  	0.073487	0.018628	0.061356
  	0.078825	0.019744	0.066586
  	0.084148	0.020838	0.071866
  	0.089459	0.021904	0.077202
  	0.094756	0.022938	0.082598
  	0.100042	0.023934	0.088057
  	0.105316	0.024889	0.093584
  	0.110579	0.025795	0.099184
  	0.11583	0.02665	0.104861
  	0.121071	0.027448	0.110619
  	0.126299	0.028183	0.116462
  	0.131516	0.028853	0.122393
  	0.13672	0.02945	0.128419
  	0.141911	0.029972	0.134542
  	0.147088	0.030413	0.140767
  	0.15225	0.030769	0.147098
  	0.157395	0.031036	0.153539
  	0.162523	0.031209	0.160094
  	0.167631	0.031285	0.166768
  	0.172719	0.03126	0.173563
  	0.177783	0.031132	0.180483
  	0.182822	0.030897	0.187532
  	0.187833	0.030553	0.194713
  	0.192813	0.0301	0.202029
  	0.19776	0.029535	0.209483
  	0.202669	0.028861	0.217075
  	0.207537	0.028076	0.22481
  	0.21236	0.027185	0.232685
  	0.217134	0.02619	0.240703
  	0.221853	0.025098	0.248862
  	0.226513	0.023915	0.257161
  	0.231108	0.022651	0.265596
  	0.235632	0.021317	0.274165
  	0.240079	0.019929	0.28286
  	0.244442	0.018502	0.291676
  	0.248714	0.017057	0.300605
  	0.252887	0.015618	0.309634
  	0.256954	0.014212	0.318754
  	0.260907	0.012868	0.32795
  	0.264739	0.011621	0.337207
  	0.268439	0.01051	0.346506
  	0.272002	0.009577	0.355829
  	0.275418	0.008865	0.365155
  	0.278679	0.008424	0.374463
  	0.281779	0.008305	0.383728
  	0.284711	0.00856	0.392927
  	0.287467	0.009244	0.402036
  	0.290042	0.010412	0.41103
  	0.292431	0.01212	0.419885
  	0.29463	0.014423	0.428577
  	0.296635	0.017372	0.437083
  	0.298445	0.021019	0.445384
  	0.300058	0.02541	0.45346
  	0.301473	0.030588	0.461292
  	0.302691	0.036593	0.468866
  	0.303714	0.043346	0.476168
  	0.304544	0.050309	0.483188
  	0.305184	0.057397	0.489917
  	0.305637	0.064579	0.496349
  	0.30591	0.071827	0.50248
  	0.306006	0.079119	0.508307
  	0.305932	0.086435	0.513831
  	0.305693	0.093759	0.519053
  	0.305297	0.101077	0.523976
  	0.30475	0.108376	0.528605
  	0.30406	0.115645	0.532946
  	0.303232	0.122876	0.537006
  	0.302276	0.130059	0.540793
  	0.301199	0.137189	0.544315
  	0.300007	0.144258	0.547582
  	0.298708	0.151264	0.550603
  	0.297311	0.1582	0.553388
  	0.295822	0.165064	0.555948
  	0.294248	0.171852	0.558293
  	0.292596	0.178563	0.560432
  	0.290874	0.185196	0.562378
  	0.289089	0.191748	0.564139
  	0.287245	0.198219	0.565726
  	0.285352	0.204608	0.56715
  	0.283413	0.210916	0.568419
  	0.281437	0.217142	0.569543
  	0.279427	0.223288	0.570532
  	0.27739	0.229353	0.571394
  	0.275332	0.235338	0.572138
  	0.273257	0.241246	0.572771
  	0.271171	0.247076	0.573303
  	0.269078	0.252831	0.573739
  	0.266982	0.258511	0.574089
  	0.264889	0.264118	0.574358
  	0.262802	0.269654	0.574553
  	0.260725	0.27512	0.574681
  	0.258662	0.280519	0.574746
  	0.256616	0.285851	0.574756
  	0.254591	0.29112	0.574714
  	0.25259	0.296325	0.574627
  	0.250615	0.30147	0.574499
  	0.24867	0.306556	0.574334
  	0.246757	0.311586	0.574137
  	0.244878	0.31656	0.573912
  	0.243034	0.321481	0.573661
  	0.241229	0.32635	0.57339
  	0.239463	0.331169	0.573101
  	0.237738	0.335941	0.572796
  	0.236055	0.340667	0.57248
  	0.234415	0.345348	0.572155
  	0.232819	0.349987	0.571822
  	0.231267	0.354585	0.571485
  	0.22976	0.359144	0.571145
  	0.228297	0.363665	0.570804
  	0.226878	0.36815	0.570465
  	0.225504	0.372602	0.570128
  	0.224173	0.37702	0.569795
  	0.222884	0.381408	0.569468
  	0.221637	0.385766	0.569147
  	0.22043	0.390096	0.568833
  	0.219262	0.3944	0.568528
  	0.218131	0.398679	0.568231
  	0.217036	0.402934	0.567945
  	0.215973	0.407168	0.567668
  	0.214942	0.41138	0.567402
  	0.213939	0.415574	0.567146
  	0.212963	0.419749	0.566901
  	0.212009	0.423907	0.566667
  	0.211077	0.42805	0.566443
  	0.210161	0.432179	0.566229
  	0.20926	0.436296	0.566025
  	0.20837	0.4404	0.56583
  	0.207488	0.444494	0.565644
  	0.206611	0.448578	0.565466
  	0.205734	0.452655	0.565295
  	0.204855	0.456724	0.56513
  	0.203969	0.460786	0.564971
  	0.203074	0.464844	0.564815
  	0.202165	0.468897	0.564663
  	0.20124	0.472947	0.564512
  	0.200293	0.476995	0.564362
  	0.199322	0.481041	0.564211
  	0.198323	0.485087	0.564057
  	0.197292	0.489132	0.563898
  	0.196226	0.493179	0.563734
  	0.195122	0.497227	0.563562
  	0.193976	0.501277	0.56338
  	0.192784	0.50533	0.563188
  	0.191543	0.509386	0.562982
  	0.190251	0.513446	0.56276
  	0.188904	0.517511	0.562522
  	0.1875	0.521581	0.562264
  	0.186034	0.525656	0.561985
  	0.184506	0.529737	0.561683
  	0.182912	0.533823	0.561355
  	0.18125	0.537916	0.561
  	0.179517	0.542016	0.560614
  	0.177712	0.546122	0.560197
  	0.175833	0.550235	0.559746
  	0.173877	0.554355	0.559259
  	0.171844	0.558482	0.558733
  	0.169733	0.562616	0.558166
  	0.167541	0.566757	0.557557
  	0.165268	0.570905	0.556904
  	0.162914	0.575061	0.556203
  	0.160478	0.579223	0.555454
  	0.15796	0.583392	0.554653
  	0.15536	0.587567	0.5538
  	0.15268	0.591748	0.552892
  	0.14992	0.595936	0.551927
  	0.147082	0.60013	0.550904
  	0.144167	0.604329	0.549819
  	0.141179	0.608533	0.548673
  	0.13812	0.612742	0.547462
  	0.134996	0.616955	0.546185
  	0.131809	0.621173	0.54484
  	0.128567	0.625393	0.543426
  	0.125276	0.629618	0.541941
  	0.121945	0.633844	0.540383
  	0.118582	0.638073	0.538751
  	0.115201	0.642304	0.537043
  	0.111813	0.646536	0.535258
  	0.108435	0.650768	0.533394
  	0.105084	0.655	0.531449
  	0.101783	0.659232	0.529424
  	0.098554	0.663463	0.527315
  	0.095426	0.667691	0.525122
  	0.092429	0.671917	0.522843
  	0.0896	0.67614	0.520477
  	0.086978	0.68036	0.518023
  	0.084606	0.684574	0.51548
  	0.08253	0.688784	0.512846
  	0.080799	0.692987	0.510119
  	0.079462	0.697184	0.5073
  	0.07857	0.701374	0.504386
  	0.078166	0.705555	0.501376
  	0.078293	0.709726	0.49827
  	0.078986	0.713888	0.495066
  	0.080267	0.718039	0.491763
  	0.082151	0.722179	0.488359
  	0.084644	0.726306	0.484854
  	0.087737	0.730419	0.481247
  	0.091418	0.734517	0.477536
  	0.095663	0.7386	0.473721
  	0.100445	0.742666	0.469799
  	0.105736	0.746714	0.465772
  	0.111502	0.750744	0.461635
  	0.117715	0.754753	0.457391
  	0.124342	0.758741	0.453035
  	0.131356	0.762706	0.448569
  	0.138731	0.766647	0.443992
  	0.146445	0.770563	0.439301
  	0.154476	0.774451	0.434497
  	0.162807	0.778311	0.429579
  	0.171422	0.782141	0.424546
  	0.180309	0.785938	0.419398
  	0.189457	0.789702	0.414135
  	0.198856	0.793429	0.408757
  	0.208501	0.797119	0.403264
  	0.218385	0.800768	0.397656
  	0.228505	0.804374	0.391936
  	0.238858	0.807935	0.386104
  	0.249443	0.811447	0.380163
  	0.26026	0.814909	0.374118
  	0.271309	0.818316	0.367972
  	0.282591	0.821665	0.361733
  	0.294111	0.824953	0.355406
  	0.305868	0.828175	0.349003
  	0.31787	0.831328	0.342536
  	0.330116	0.834407	0.336021
  	0.342612	0.837407	0.329479
  	0.35536	0.840322	0.322935
  	0.368362	0.843149	0.316419
  	0.381618	0.845882	0.309973
  	0.395125	0.848515	0.303642
  	0.408877	0.851043	0.297486
  	0.422866	0.853463	0.291572
  	0.437071	0.855771	0.285984
  	0.45147	0.857964	0.280814
  	0.466027	0.860043	0.276167
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
