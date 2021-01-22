doPlot = 1;
dt = 15e-15;
TStop = 1000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 14 * C.am; % Silicon
Mass1 = 5 * C.am; % Argon
Mass2 = 15 * C.am; %Some amount

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1/6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;
T = 30;
AddEllipticalArray(6, 0, 0, 0, 0, 0, T, 0);

%(num, x0, y0, PartAng, Type, Ep, Seper)
Ep = 2;
AddParticleStream(1, 0.1, 10, -pi / 2, 2, Ep * C.q_0, 5); %Top->down
AddParticleStream(1, 2, 10, -pi / 2, 2, Ep * C.q_0, 5); %Left->Right



Size = 20 * AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5*dt;
MarkerSize = 10;
PlotFile = 'Block.gif';
doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .2e-11;
ScaleF = 20;