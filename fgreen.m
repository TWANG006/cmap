
function cm = fgreen(n, opt_interp)
% Colormap: fgreen

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
	0.035334000	0.118855000	0.304470000
	0.031343000	0.180695000	0.339215000
	0.030803000	0.242783000	0.374076000
	0.030519000	0.304720000	0.409037000
	0.034638000	0.366239000	0.444125000
	0.035727000	0.426405000	0.478862000
	0.034737000	0.485539000	0.512859000
	0.042595000	0.544141000	0.546644000
	0.047168000	0.601405000	0.578240000
	0.054824000	0.658138000	0.609158000
	0.077618000	0.714024000	0.640406000
	0.120622000	0.768247000	0.673075000
	0.173583000	0.819322000	0.706415000
	0.258701000	0.865547000	0.744500000
	0.364765000	0.904825000	0.784825000
	0.486317000	0.936757000	0.827070000
	0.619649000	0.959624000	0.870815000
	0.762028000	0.979304000	0.915633000
	0.911017000	0.987110000	0.960915000
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
