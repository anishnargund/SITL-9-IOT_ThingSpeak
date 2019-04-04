% Template MATLAB code for visualizing data from a channel as a 2D line
% plot using PLOT function.

% Prior to running this MATLAB code template, assign the channel ID to read
% data from to the 'readChannelID' variable. Also, assign the field ID
% within the channel that you want to read data from to plot. 

% TODO - Replace the [] with channel ID to read data from:
readChannelID = 750225;
% TODO - Replace the [] with the Field ID to read data from:
fieldID1 = [1,2];

% Channel Read API Key 
% If your channel is private, then enter the read API
% Key between the '' below: 
readAPIKey = 'X6UTTDAEBMRAUAB9';

%% Read Data %%

[data, time] = thingSpeakRead(readChannelID, 'Field', fieldID1, 'NumPoints', 20, 'ReadKey', readAPIKey);


%% Visualize Data %%

plot(time, data);