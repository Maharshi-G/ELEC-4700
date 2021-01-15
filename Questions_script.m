%%
% Author: Maharshi Gurjar
% ELEC 4709 - Lab 4 
% Oscillometric blood pressure measurement
%%
clc; clear all ; close all;
%===PRELAB===%.00

%Question 2:
%Gain = Vout/Vin;
Gain_Vc = 5 / (10e-3);
Gain_Vp = 5 / (50e-6);

%Question 3:

%fc1 = 1/(2*pi*R*C) where C = 0.1uf, fc = 5hz
R_LPF = 1/(2*pi*(0.1e-6)*5);

%Question 4:
%Gain_BP = - R_2/R_1
%fc2 = 1/(2*pi*R*C) where C = 33uf, fc = 0.5hz
%fc3 = 1/(2*pi*R*C) where C = .1uf, fc = 5hz

R_iLP = 1 / (2*pi*(33e-6)*0.5);
R_iHP = 1 / (2*pi*(0.1e-6)*5);

T = readtable('Full_Circuit.csv','Range','D12705:E51705');
[Value,Index] = min(T.Var2);
%%
fprintf("The gain for the cuff pressure circuit must be: %d\n",Gain_Vc);
fprintf("The gain for the pulse signal pressure circuit must be: %d\n",Gain_Vp);
fprintf("The resistor value for  the stage 1 non inverting low pass amplifier is: %f \n",R_LPF);
fprintf("The resistor value for the stage 2 band pass at the low frequencies is: %f\n",R_iLP);
fprintf("The resistor value for the stage 2 band pass at the high frequencies is: %f\n",R_iHP);

%%
fprintf("The MAP value was obtained to be :\n");
MAP = T(Index,:)