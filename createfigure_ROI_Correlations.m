function createfigure(cdata1)
%CREATEFIGURE(CDATA1)
%  CDATA1:  image cdata

%  Auto-generated by MATLAB on 12-Dec-2017 15:58:26

% Create figure
figure1 = figure;
colormap('jet');

% Create axes
axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on',...
    'YTickLabel',{'Pain_RightAmy','Pain_LeftAmy','DMN_RightHipp','DMN_LeftHipp','Pain_RightThal','Pain_LeftThal','Pain_RightACC','Pain_LeftACC','Pain_RightAIns','Pain_LeftAIns','DMN_RightAngGyrus','DMN_LeftAngGyrus','Pain_RightMCC','Pain_LeftMCC','Pain_RightPCC','Pain_LeftPCC','DMN_RightParaHipp','DMN_LeftParaHipp','Pain_RightPIns','Pain_LeftPIns','Pain_RightSMA','Pain_LeftSMA'},...
    'YTick',[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22],...
    'XTickLabel',{'Pain_RightAmy','Pain_LeftAmy','DMN_RightHipp','DMN_LeftHipp','Pain_RightThal','Pain_LeftThal','Pain_RightACC','Pain_LeftACC','Pain_RightAIns','Pain_LeftAIns','DMN_RightAngGyrus','DMN_LeftAngGyrus','Pain_RightMCC','Pain_LeftMCC','Pain_RightPCC','Pain_LeftPCC','DMN_RightParaHipp','DMN_LeftParaHipp','Pain_RightPIns','Pain_LeftPIns','Pain_RightSMA','Pain_LeftSMA'},...
    'XTickLabelRotation',45,...
    'XTick',[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21],...
    'Layer','top',...
    'TickLabelInterpreter','none',...
    'DataAspectRatio',[1 1 1]);
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0.5 21.5]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0.5 21.5]);
box(axes1,'on');
hold(axes1,'on');

% Create image
image(cdata1,'Parent',axes1,'CDataMapping','scaled');

% Create colorbar
colorbar('peer',axes1);
