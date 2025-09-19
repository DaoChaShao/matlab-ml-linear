% MATLAB Ver. : 25.1.0.2973910 (R2025a) Update 1
% Style Guide : MATLAB Style Guidelines 1.6
% Encoding    : ***** UTF-8 *****
% File        : dataLoader.m
% Author      : daochashao
% Date        : 2025-09-19 16:24:51
% Code Ver.   : 0.1.0
% Desc        : 

function [X, Y] = dataLoader()
    load carbig;
    X = [Cylinders, Displacement, Horsepower, Weight, Acceleration, Model_Year];
    Y = MPG;

    % Remove rows with NaN values from X and Y
    index = ~any(isnan(X),2) & ~isnan(Y);
    X = X(index,:);
    Y = Y(index);

    disp(repmat('*', 1, 50));
    disp("Function: dataLoader")
    disp(repmat('-', 1, 50));
    disp("X class is " + class(X));
    disp("Y class is " + class(Y));
    disp(repmat('*', 1, 50));
end