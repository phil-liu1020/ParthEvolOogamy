% fig E15
% initialising parameters

A=100; M=1; T=0.1; Cz=0.6; Cp=0; beta1=1; beta2=1; lambda21=0; lambda12=0; mu=0.0005; delta=0.005; NEVOL=3000; f0=0.002; m0=0.35; alpha0=0; 
switching_environments=0; plasticity=0; return_traits=1; number_of_realisations=1; alphamax=0.1;


[StrainsData_m,StrainsData_alpha,m,alpha,~,~]=Evolutionary_trajectories(number_of_realisations,m0,alpha0,A,M,T,Cz,Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,alphamax, switching_environments, plasticity, return_traits );


addpath(genpath('Sex_and_Size-main'))

cd ..
cd ..


save('Data_files\FigE15\m.mat','m');
save('Data_files\FigE15\alpha.mat','alpha');
save('Data_files\FigE15\StrainsData_m.mat','StrainsData_m');
save('Data_files\FigE15\StrainsData_alpha.mat','StrainsData_alpha');