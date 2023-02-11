function figureHandle = createPlot(figureName, figureHandle)
%CREATEPLOT Open an existing plot or create a new one
%   Opens/activates the figure with the provided name or creates it if
%   non-existent. If a figure handle is provided, it will be used instead.
%
%   Syntax:
%       figureHandle = createPlot(figureName)
%       figureHandle = createPlot(figureName, figureHandle)
%
%   Inputs:
%       figureName: Char array with the figure name (in window/tab title bar)
%       figureHandle: Optional, if provided will draw in the given figure
%
%   Output:
%       figureHandle: The handle of the created figure

if nargin < 2
    % No specific figure handle given.
    % Instead try to find a figure with the given title
    figureHandle = findobj( 'Type', 'Figure', 'Name', figureName );
    if isempty(figureHandle)
        % Create a new figure if there is no fitting one
        figureHandle = figure();
    elseif numel(figureHandle)>1
        % More than one figure of this name, choose the last
        % one
        figureHandle = figureHandle(end);
    end
end
figure(figureHandle); % Activate figure
clf(figureHandle);
set(gcf,'Name',figureName);
end