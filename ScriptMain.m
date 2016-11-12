
% clc;
clear;
close all;

% Problem constants of Newton's Law of Cooling
[k, TempAmb, Temp0, tStart, tMax, N] = ProblemConstants;

% Problem's analytical solution
[TempExact, TempAsymp] = AnalyticalSol(k, TempAmb, Temp0);

% Problem's numerical solution using sentral difference schema
[timeDisc, TempNum] = DiffSol(k, TempAmb, Temp0, tStart, tMax, N);

% Plot the results
% PresentData(tStart, tMax, timeDisc, TempExact, TempNum, TempAsymp);

% Estimation of the numerical error
error = EstimateError(N, timeDisc, TempExact, TempNum);
