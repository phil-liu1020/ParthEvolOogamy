% fig4
% initialising parameters


number_of_realisations=1; m0=0.25; A=100; M=1; T=0.1; Cz=0.3; Cp=0; beta1=1; beta2=1; lambda12=0; lambda21=0; mu=0.001; NEVOL=2400; f0=0.002; delta=0.01; switching_environments=0; plasticity=0; return_genotypes=1;

Alphamax=(0.025:0.025:0.2);

cd ..
cd ..

addpath(genpath('Simulation_Functions'))

cd Data_generation_scripts/Fig4

parfor i=1:8

[genotypeNEVOL_m(i,:),genotypeNEVOL_alpha(i,:),~,~,~,~]=Evolutionary_trajectories(number_of_realisations,m0,Alphamax(i),A,M,T,Cz,Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,Alphamax(i),switching_environments, plasticity,return_genotypes );

end


cd ..
cd ..

save('Data_files\Fig4\genotypeData.mat','genotypeData_m','genotypeData_alpha');