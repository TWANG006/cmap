
function cm = piyg(n, opt_interp)
% Colormap: piyg

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
	0.556863000	0.003922000	0.321569000
	0.772549000	0.105882000	0.490196000
	0.870588000	0.466667000	0.682353000
	0.945098000	0.713725000	0.854902000
	0.992157000	0.878431000	0.937255000
	0.968627000	0.968627000	0.968627000
	0.901961000	0.960784000	0.815686000
	0.721569000	0.882353000	0.525490000
	0.498039000	0.737255000	0.254902000
	0.301961000	0.572549000	0.129412000
	0.152941000	0.392157000	0.098039000
];

%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp, 'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
elseif strcmp(opt_interp, 'lab')
    lab = rgb2lab(cm);
    lab = interp1(1:p, lab, linspace(1,p,n), 'linear');
    cm = lab2rgb(lab);
elseif strcmp(opt_interp, 'none') % do nothing
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end

end
