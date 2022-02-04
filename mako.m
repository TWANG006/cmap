
function cm = mako(n, opt_interp)
% Colormap: mako

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
  	0.145098	0.090196	0.164706
  	0.160784	0.101961	0.192157
  	0.176471	0.113725	0.219608
  	0.184314	0.121569	0.243137
  	0.196078	0.133333	0.270588
  	0.207843	0.14902	0.301961
  	0.219608	0.164706	0.329412
  	0.227451	0.176471	0.360784
  	0.235294	0.192157	0.388235
  	0.243137	0.203922	0.419608
  	0.247059	0.223529	0.454902
  	0.25098	0.231373	0.482353
  	0.25098	0.25098	0.505882
  	0.25098	0.270588	0.537255
  	0.247059	0.282353	0.556863
  	0.243137	0.305882	0.576471
  	0.235294	0.32549	0.592157
  	0.227451	0.345098	0.6
  	0.223529	0.368627	0.607843
  	0.215686	0.384314	0.615686
  	0.211765	0.403922	0.619608
  	0.207843	0.423529	0.623529
  	0.207843	0.443137	0.627451
  	0.207843	0.462745	0.631373
  	0.203922	0.478431	0.635294
  	0.203922	0.501961	0.639216
  	0.203922	0.517647	0.647059
  	0.2	0.537255	0.65098
  	0.2	0.552941	0.654902
  	0.2	0.572549	0.658824
  	0.203922	0.592157	0.662745
  	0.203922	0.615686	0.666667
  	0.207843	0.627451	0.666667
  	0.211765	0.65098	0.670588
  	0.219608	0.666667	0.67451
  	0.231373	0.686275	0.67451
  	0.243137	0.705882	0.67451
  	0.254902	0.729412	0.678431
  	0.270588	0.741176	0.678431
  	0.290196	0.764706	0.678431
  	0.317647	0.780392	0.67451
  	0.352941	0.796078	0.67451
  	0.388235	0.811765	0.67451
  	0.439216	0.831373	0.678431
  	0.486275	0.843137	0.682353
  	0.537255	0.85098	0.698039
  	0.584314	0.858824	0.705882
  	0.631373	0.87451	0.72549
  	0.670588	0.886275	0.745098
  	0.709804	0.898039	0.772549
  	0.74902	0.909804	0.796078
  	0.784314	0.921569	0.823529
  	0.815686	0.933333	0.85098
  	0.854902	0.94902	0.882353
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
