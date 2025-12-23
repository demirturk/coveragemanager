close all

% sim_INPUTS;   %%input parameters can be edited here
% neo_call_energy_info;  %% this file shows what are the known energy consumption values, energy inputs can be edited here : 
without_optimisation;
%lines below needed for graph generation
values = [1, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000];
be1 = B_column1(values)'
be2 = B_column2(values)'
be3 = B_column3(values)'




neo_opt_best;
%lines below needed for graph generation
values = [1, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000];
be1op = B_column1(values)'
be2op = B_column2(values)'
be3op = B_column3(values)'
% neo_optimisation;
% kurcalama


% kurcalam2

% untitled

%CHECK PASSİVE NODES'TA MAX NOKTASI BELIRLE 

