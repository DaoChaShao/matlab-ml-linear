% MATLAB Ver. : 25.1.0.2973910 (R2025a) Update 1
% Style Guide : MATLAB Style Guidelines 1.6
% Encoding    : ***** UTF-8 *****
% File        : trainTestSplitter.m
% Author      : daochashao
% Date        : 2025-09-19 17:59:24
% Code Ver.   : 0.1.0
% Desc        : 

function [X_TRAIN, X_TEST, Y_TRAIN, Y_TEST] = trainTestSplitter(DATA, seed, trainSize)
% Split the data into training and testing sets
    % Calculate the number of samples for training and testing
    numSamples = size(DATA, 1);
    % Set a random seed for reproducibility
    rng(seed);
    % Shuffle the indices for random sampling
    idx = randperm(numSamples);

    splitSize = round(trainSize * numSamples);
    
    X_TRAIN = DATA(idx(1:splitSize), 1:end-1);
    X_TEST  = DATA(idx(splitSize+1:end), 1:end-1);
    Y_TRAIN = DATA(idx(1:splitSize), end);
    Y_TEST  = DATA(idx(splitSize+1:end), end);

    disp(repmat('*', 1, 50));
    disp("Function: trainTestSplitter")
    disp(repmat('-', 1, 50));
    disp("Data class is " + class(DATA));
    disp("X_TRAIN class is " + class(X_TRAIN));
    disp("X_TEST class is " + class(X_TEST));
    disp("Y_TRAIN class is " + class(Y_TRAIN));
    disp("Y_TEST class is " + class(Y_TEST));
    disp(repmat('*', 1, 50));
end
