
function cm = flare(n, opt_interp)
% Colormap: flare

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
  	0.278431	0.121569	0.372549
  	0.309804	0.141176	0.388235
  	0.32549	0.145098	0.392157
  	0.341176	0.14902	0.4
  	0.356863	0.152941	0.403922
  	0.372549	0.156863	0.407843
  	0.388235	0.160784	0.415686
  	0.403922	0.164706	0.419608
  	0.423529	0.168627	0.423529
  	0.435294	0.168627	0.427451
  	0.45098	0.172549	0.431373
  	0.466667	0.176471	0.435294
  	0.482353	0.180392	0.435294
  	0.498039	0.184314	0.439216
  	0.513725	0.188235	0.439216
  	0.533333	0.188235	0.439216
  	0.54902	0.192157	0.439216
  	0.560784	0.196078	0.439216
  	0.576471	0.2	0.439216
  	0.592157	0.203922	0.439216
  	0.607843	0.211765	0.435294
  	0.623529	0.215686	0.435294
  	0.639216	0.219608	0.431373
  	0.658824	0.223529	0.431373
  	0.670588	0.227451	0.427451
  	0.686275	0.231373	0.423529
  	0.705882	0.235294	0.419608
  	0.721569	0.239216	0.415686
  	0.733333	0.243137	0.411765
  	0.74902	0.247059	0.407843
  	0.764706	0.254902	0.4
  	0.780392	0.262745	0.396078
  	0.796078	0.270588	0.388235
  	0.807843	0.278431	0.384314
  	0.815686	0.286275	0.376471
  	0.831373	0.301961	0.372549
  	0.839216	0.309804	0.368627
  	0.85098	0.32549	0.364706
  	0.858824	0.341176	0.360784
  	0.866667	0.34902	0.356863
  	0.87451	0.368627	0.356863
  	0.878431	0.384314	0.356863
  	0.882353	0.4	0.360784
  	0.890196	0.419608	0.360784
  	0.894118	0.435294	0.364706
  	0.898039	0.454902	0.372549
  	0.901961	0.466667	0.376471
  	0.905882	0.482353	0.384314
  	0.905882	0.498039	0.392157
  	0.909804	0.517647	0.4
  	0.909804	0.533333	0.411765
  	0.913725	0.54902	0.419608
  	0.913725	0.564706	0.427451
  	0.917647	0.584314	0.439216
  	0.917647	0.6	0.447059
  	0.921569	0.615686	0.458824
  	0.921569	0.635294	0.470588
  	0.92549	0.65098	0.478431
  	0.92549	0.662745	0.486275
  	0.92549	0.678431	0.498039
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
