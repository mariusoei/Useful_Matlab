function col = getCDColor(id)
% Enthält ein paar Farben des Uni Stuttgart Corporate Designs für Matlab-Plots etc.
% Für mesh/surf/...-Plots eignet sich Parula gut
%%
rgb = [ 
        0.2431,    0.2667,    0.2980; % bluegray
        0.0000,    0.7451,    1.0000; % lightblue
        0.0000,    0.3176,    0.6196; % darkblue
        0.6235,    0.6000,    0.5961; % gray
        1.0000,    0.8353,    0.0000; % yellow
        0.6000,    0.0000,    0.0000; % darkred (not original CD)
      ];

colornames = ["bluegray","lightblue","darkblue","gray","yellow","darkred"];
 
if ~nargin||isempty(id)
    col = rgb;
elseif ischar(id)||isstring(id)
    [found,idx] = ismember(id,colornames);
    if ~found
        error(['Colorname ' id ' is not part of CD.'])
    end
    col = rgb(idx,:);
elseif isnumeric(id)
    col = rgb(id,:);
end
    