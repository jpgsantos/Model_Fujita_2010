function [stg] = Fujita_2010_gsa()

%% Import

% True or false to decide whether to run import functions
% (Import)
stg.import = true;

% Name of the folder where everything related to the model is stored
% (Folder Model)
stg.folder_model = "Model_Fujita_2010";

% Name of the excel file with the sbtab
% (SBtab excel name)
% stg.sbtab_excel_name = "SBTAB_Akt_Benchmark_Paper.xlsx";
stg.sbtab_excel_name = "SBTAB_Fujita_2010_gsa.xlsx";
% stg.sbtab_excel_name = "SBTAB_Akt.xlsx";

% Name of the model
% (Name)
stg.name = "Fujita_2010";

% Name of the default model compartment
% (Compartment name)
stg.cname = "Cell";

% Name of the sbtab saved in .mat format
% (SBtab name)
stg.sbtab_name = "SBtab_" + stg.name;

%% Analysis

% Experiments to run
% stg.ms.exprun = [1,3,4];
stg.exprun = [1:6];

% Choice between 0,1,2 and 3 to change either and how to apply log10 to the
% scores (check documentation)
% (Use logarithm)
stg.useLog = 4;

% True or false to decide whether to use multicore everywhere it is available
% (Optimization Multicore)
stg.optmc = true;

% Choice of ramdom seed
% (Ramdom seed)
stg.rseed = 1;

% True or false to decide whether to use display simulation diagnostics in the
% console
% (Simulation Console)
stg.simcsl = false;

% True or false to decide whether to display optimization results on console 
% (Optimization console)
stg.optcsl = true;

% True or false to decide whether to display PLA results on console 
% (PLA console)
stg.placsl = true;

% True or false to decide whether to save results
% (Save results)
stg.save_results = true;

% True or false to decide whether to run detailed simulation for plots
stg.simdetail = false;

%% Simulation

% Maximum time for each individual function to run in seconds
% (Maximum time)
stg.maxt = 2;

% Equilibration time
% (Equilibration time)
stg.eqt  = 500000;

% True or false to decide whether to do Dimensional Analysis
% (Dimensional Analysis)
stg.dimenanal = true;

% True or false to decide whether to do Unit conversion
% (Unit conversion)
stg.UnitConversion = true;

% True or false to decide whether to do Absolute Tolerance Scaling
% (Absolute Tolerance Scaling)
stg.abstolscale = true;

% Value of Relative tolerance
% (Relative tolerance)
stg.reltol = 1.0E-4; 

% Value of Absolute tolerance
% (Absolute tolerance)
stg.abstol = 1.0E-5;

% Time units for simulation
% (Simulation time)
stg.simtime = "second";

% True or false to decide whether to run sbioaccelerate (after changing this value
% you need to run "clear functions" to see an effect)
% (sbioaccelerate)
stg.sbioacc = true;

% (Absolute tolerance step size for equilibration)
stg.abstolstepsize_eq = [];

% Max step size in the simulation (if empty matlab decides whats best)
% (Maximum step)
stg.maxstep = [];

% Max step size in the equilibration (if empty matlab decides whats best)
% (Maximum step)
stg.maxstepeq = [];

% Max step size in the detailed plots (if empty matlab decides whats best)
% (Maximum step)
stg.maxstepdetail = [];

% Default score when there is a simulation error, this is needed to keep
% the optimizations working.
% (error score)
stg.errorscore = 10^5;

%% Model

% Number of parameters to optimize
% (Parameter number)
stg.parnum = 12;

% Array with the lower bound of all parameters
% (Lower bound)
stg.lb = [-2.17	-1.39	-4.81	-2.29	-1.51	-1.001220343	-5.68	-2.92	-1.48	-2.95	-1.72	-3.97311552]-1;

% Array with the upper bound of all parameters
% (Upper bound)
stg.ub = [-2.17	-1.39	-4.81	-2.29	-1.51	-1.001220343	-5.68	-2.92	-1.48	-2.95	-1.72	-3.97311552]+1;

%% Diagnostics

% Choice of what parameters in the array to test, the indices correspond to
% the parameters in the model and the numbers correspond to the parameters
% in the optimization array, usually not all parameters are optimized so
% there needs to be a match between one and the other.
% (Parameters to test)
stg.partest(:,1) = [1  ,2  ,3  ,4  ,5  ,6  ,7 ,0 , 8, 9, 10, 11, 12, 12];

% (Parameter array to test)
% stg.pat = [1:5];

stg.pat = [1:4];

% All the parameter arrays, in this case there is only one
% (Parameter arrays)
 stg.pa(1,:) = [-2.17	-1.39	-4.81	-2.29	-1.51	-1.001220343	-5.68	-2.92	-1.48	-2.95	-1.72	-3.97311552];

 stg.pa(2,:) = [2.22070617139925,2.75304418221775,-3.74278403990057,-0.910715069679761,-0.184379994848404,1.06758153900076,-5.86733907828611,-2.79403034598861,-2.18411870517947,-3.27530817048621,-1.70846752551556,-3.76900731235959];
 stg.pa(3,:) = [-1.19068161870335,-0.495197013149945,-4.46460738845522,-1.36632705930384,-1.70329589675579,-0.260257857264822,-5.83256201639125,-2.80135272247605,-2.09076454753976,-3.20600813379517,-1.62758642850020,-3.81004291664021];
 stg.pa(4,:) = [-1.73637392874944,-1.48380046033991,-4.92377700477197,-2.77355529321076,-1.52672044338329,-0.505714572930339,-5.87366280012493,-2.73471003946301,-1.79351337068449,-3.26828513122617,-1.91701936818091,-3.74708177136321];

% Best parameter array found so far for the model
% (Best parameter array)
stg.bestpa = stg.pa(1,:);

%% Plots

% True or false to decide whether to plot results
% (Plots)
stg.plot = true;

% True or false to decide whether to use long names in the title of the outputs
% plots in f_plot_outputs.m
% (Plot outputs long names)
stg.plotoln = true;

%% Sensitivity analysis

% Number of samples to use in SA
% (Sensitivity analysis number of samples)
stg.sansamples = 10000;

% True or false to decide whether to subtract the mean before calculating SI and
% SIT
% (Sensitivity analysis subtract mean)
stg.sasubmean = true;

% Choose the way you want to obtain the samples of the parameters for 
% performing the SA;
% 0 Log uniform distribution truncated at the parameter bounds
% 1 Log normal distribution with mu as the best value for a parameter and
% sigma as stg.sasamplesigma truncated at the parameter bounds
% 2 same as 1 without truncation
% 3 Log normal distribution centered at the mean of the parameter bounds and
% sigma as stg.sasamplesigma truncated at the parameter bounds
% 4 same as 3 without truncation.
% (Sensitivity analysis sampling mode)
stg.sasamplemode = 2;

% Sigma for creating the normal distribution of parameters to perform
% sensitivity analysis
% (Sensitivity analysis sampling sigma)
stg.sasamplesigma = 0.1;

stg.gsabootstrapsize = ceil(sqrt(stg.sansamples));


%% Profile Likelihood

% Parameter(optimization array) that is being worked on in a specific
% iteration of PL (if -1 no parameter is being worked in PL)
% (Profile Likelihood Index)
stg.PLind = -1;

% Which parameters to do PL on, it should be all parameters but can also be
% a subset for testing purposes
% (Profile Likelihood parameters to Test)
stg.pltest = (1:12);

% How many points to do for each parameter in the PL
% (Profile Likelihood Resolution)
stg.plres = 20;

% True or false to decide whether to do plots after calculating PL
% (Profile Likelihood Plots)
stg.plplot = true;

% True or false to decide whether to run simulated annealing
% (Profile Likelihood Simulated Annealing)
stg.plsa = true;

% Options for simulated annealing
stg.plsao = optimoptions(@simulannealbnd,'Display','off', ...
    'InitialTemperature',...
    ones(1,stg.parnum)*1,'MaxTime',1,'ReannealInterval',40);

% 0 or 1 to decide whether to run fmincon
% (Profile Likelihood FMincon)
stg.plfm = false;

% Options for fmincon
stg.plfmo = optimoptions('fmincon','Display','off',...
    'Algorithm','interior-point',...
    'MaxIterations',1,'OptimalityTolerance',0,...
    'StepTolerance',1e-6,'FiniteDifferenceType','central');

%% Optimization

%  Time for the optimization in seconds (fmincon does not respect this
% time!!)
% (Optimization time)
stg.optt = 60*10;

% Population size for the algorithms that use populations
% (Population size)
stg.popsize = 2160;

% optimization start method, choose between:
% 1 Random starting point or group of starting points inside the bounds
% 2 Random starting point or group of starting points near the best point
% (Optimization start method)
stg.osm = 1;

% Distance from best parameter array to be used in stg.osm method 2
% (Distance from best parameter array)
stg.dbs = 0.1;

% True or false to decide whether to use Multistart
% (Multistart)
stg.mst = false;

% Multistart size
stg.msts = 1;

% True or false to decide whether to display Plots (Plots doesn't work if using
% multicore)
% (Optimization plots)
stg.optplots = true;

% True or false to decide whether to run fmincon (no gradient so this doesn't work
% very well, no max time!!)
stg.fmincon = false;

% True or false to decide whether to run simulated annealing
% (Simulated annealing)
stg.sa = false;

% True or false to decide whether to run Pattern search
% (Pattern search)
stg.psearch = false;

% True or false to decide whether to run Genetic algorithm
% (Genetic algorithm)
stg.ga = true;

% True or false to decide whether to run Particle swarm
% (Particle swarm)
stg.pswarm = false;

% True or false to decide whether to run Surrogate optimization
% (Surrogate optimization)
stg.sopt = false;
end