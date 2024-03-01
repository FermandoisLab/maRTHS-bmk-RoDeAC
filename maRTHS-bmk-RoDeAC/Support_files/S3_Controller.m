%%  NOTE: *** Participants SHOULD modify this file ***
%                          ------

 % TODO: Comment key parameters/variables.
      

%=========================================================================%
%                 Discrete Adaptive Model-Based Compensator
%=========================================================================%
load('Initial_parameters.mat');

% Initial discrete FIR filter 1
discrete_fir_i1 = theta0_1';
fir_coef1 = length(discrete_fir_i1);


% Initial discrete FIR filter 2
discrete_fir_i2 = theta0_2';
fir_coef2 = length(discrete_fir_i2);

%forgeting factor
forgfact = 1;

%Initial inverse correlation matrix (set both to zero for non-adaptive
%compensator)
P_corr_i_act1 = P0_1;
P_corr_i_act2 = P0_2;

%noise filter
n = 4; %order
fc = 20; %cutoff frequency
[numfilter,denfilter] = butter(n,fc/(fs/2)); %discrete filter
   
 
         
    