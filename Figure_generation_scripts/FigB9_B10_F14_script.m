% Instructions for producing FigB2 to FigB10 and FigF14

% FigB9
cd ..
cd ..
addpath(genpath('ParthEvolOogamy-main'))
cd ParthEvolOogamy-main/Figure_generation_scripts

mgenotypes=[0,0.4,0.395]; alphagenotypes=[0,0.1,0.1]; S=2; beta=1; C=0.6; G=4000; T=1; A=100; M=1; f=[0.998,0.002];

[g,~] = Plotting_Invasion_dynamics(mgenotypes,alphagenotypes,S,beta,C,G,T,A,M,f);

plot(g(2,:))

% FigB10

cd ..
cd ..
addpath(genpath('ParthEvolOogamy-main'))
cd ParthEvolOogamy-main/Figure_generation_scripts

mgenotypes=[0,0.4,0.4]; alphagenotypes=[0,0.1,0.105]; S=2; beta=1; C=0.6; G=15000; T=1; A=100; M=1; f=[0.998,0.002];

[g,~] = Plotting_Invasion_dynamics(mgenotypes,alphagenotypes,S,beta,C,G,T,A,M,f);

plot(g(2,:))

% FigF14

cd ..
cd ..
addpath(genpath('ParthEvolOogamy-main'))
cd ParthEvolOogamy-main/Figure_generation_scripts

mgenotypes=[0,0.3,0.305]; alphagenotypes=[0,0.1,0.1]; S=2; beta1=4; beta2=0.01; lambda12=13/222; lambda21=1/6; C=0.7; G=600; T=0.1; A=100; M=10; f=[0.998,0.002]; stochastic=0;

Invtraj=Plotting_Invasion_dynamics_SwitchingEnv(mgenotypes,alphagenotypes,S,beta1,beta2,lambda21,lambda12,C,G,T,A,M,f,stochastic);

plot(Invtraj)
