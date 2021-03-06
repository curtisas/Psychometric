%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%		CREATED BY:		JASON CRAGGS
%		CREATED ON:		2018-01-25
%    	MODIFIED ON:	 2018_04_12
%
%		USAGE:			TO CREATE GRAPHS OF RESULTS
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% libraries
n = neuroelf;
x = xff;

% load LUT
try
    lut = x.Document('fullspec_extended.olt');
catch
     lut = xff('~/Documents/MATLAB/neuroelf-matlab/_core/lut/fullspec_extended.olt');
end

llut = lut.Colors;

%   GRAPHS FOR THE PAIN NETWORK
allmap1 = n.threshlutc(mean(mean(painzgfcccs( : , : , i1 , : , 1), 4), 3) + eps, llut);
allmap2 = n.threshlutc(mean(mean(painzgfcccs( : , : , i2 , : , 1), 4), 3) + eps, llut);
[h, p, ci, stats] = ttest2(mean(painzgfcccs(: , : , i1, 1, :), 5), mean(painzgfcccs(: , : , i2, 1, :), 5), 'dim',3, 'tail', 'both', 'vartype', 'unequal');



% %     GRAPHS FOR THE DMN NETWORK
% allmap3 = n.threshlutc(mean(mean(dmnzgfcccs( : , : , i1 , : , 1), 4), 3) + eps, llut);
% allmap4 = n.threshlutc(mean(mean(dmnzgfcccs( : , : , i2 , : , 1), 4), 3) + eps, llut);
% [h, p, ci, stats2] = ttest2(mean(dmnzgfcccs(: , : , i1, 1, :), 5), mean(dmnzgfcccs(: , : , i2, 1, :), 5), 'dim',3, 'tail', 'both', 'vartype', 'unequal');


%function createfigure(cdata1, cdata2, cdata3)
%createfigure(cdata1, cdata2, cdata3)
%CREATEFIGURE(CDATA1, CDATA2, CDATA3)
%  CDATA1:  image cdata
%  CDATA2:  image cdata
%  CDATA3:  image cdata

%  Auto-generated by MATLAB on 25-Jan-2018 14:21:54


cdata1 = allmap1;
cdata2 = allmap2;
cdata3 = stats.tstat;


% Create figure
figure1 = figure('Position', [800 500 700 700]);

%figure1('Position', [100 100 1263 843])



% Create subplot
subplot1 = subplot(2,2,1,'Parent',figure1,'Layer','top','YDir','reverse');
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0.5 16.5]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(subplot1,[0.5 16.5]);
box(subplot1,'on');
hold(subplot1,'on');

% Create image
image(cdata1,'Parent',subplot1);

% Create title
title({'HC'},'FontSize',11);

% Create subplot
subplot2 = subplot(2,2,2,'Parent',figure1,'Layer','top','YDir','reverse');
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0.5 16.5]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(subplot2,[0.5 16.5]);
box(subplot2,'on');
hold(subplot2,'on');

% Create image
image(cdata2,'Parent',subplot2);

% Create title
title({'CLBP'},'FontSize',11);

% Create subplot
subplot3 = subplot(2,2,3,'Parent',figure1,'Layer','top','YDir','reverse');
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0.5 16.5]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(subplot3,[0.5 16.5]);
box(subplot3,'on');
hold(subplot3,'on');

% Create image
image(cdata3,'Parent',subplot3,'CDataMapping','scaled');

% Create title
title({'Group differences in pain node connectivity - brighter = stronger HC, darker = stronger CLBP'},...
    'FontSize',11);

% Create textbox
annotation(figure1,'textbox',...
    [0.571616113744078 0.100719424460432 0.319379146919431 0.351182141535094],...
    'String',{'Pain_RightAmy','Pain_LeftAmy','Pain_RightThal','Pain_LeftThal','Pain_RightACC','Pain_LeftACC','Pain_RightAIns','Pain_LeftAIns','Pain_RightMCC','Pain_LeftMCC','Pain_RightPCC','Pain_LeftPCC','Pain_RightPIns','Pain_LeftPIns','Pain_RightSMA','Pain_LeftSMA'},...
    'Interpreter','none',...
    'FontSize',16,...
    'FitBoxToText','on');





%figure; subplot(2, 2, 1); image(allmap1); subplot(2, 2, 2); image(allmap2); subplot(2, 2, 3); imagesc(stats.tstat);

%figure; subplot(2, 2, 1); image(allmap3); subplot(2, 2, 2); image(allmap4); subplot(2, 2, 3); imagesc(stats2.tstat);
