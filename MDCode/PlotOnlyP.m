function [ output_args ] = PlotVars(c, Limits)
global x y Fx Fy  %Vx Vy L W C
global Pty0in Pty1in Pty2in%Phi nAtoms time Mass0 Mass1 Mass2 
%global LJEpsilon Phi0 PhiTot KETot MinX MaxX MinY MaxY
global MarkerSize %T T0 T1 ScaleV  doPlotImage PlotCount
global ScaleF %PlotFig map im PlotSize 

if isempty(Limits)
    Limits = Limits;
end

plot(x(Pty0in), y(Pty0in), 'bo', 'markers',...
    MarkerSize,'MarkerFaceColor', 'b');
hold on
plot(x(Pty1in), y(Pty1in), 'go', 'markers',...
    MarkerSize,'MarkerFaceColor', 'g');
hold on
plot(x(Pty2in), y(Pty2in), 'go', 'markers',...
    MarkerSize,'MarkerFaceColor', 'r');
quiver(x, y, Fx * ScaleF, Fy * ScaleF, 0, 'm', 'linewidth', 2);
hold off
axis(Limits);
title('Atoms and Forces')
xlabel('X')
ylabel('Y')


end
