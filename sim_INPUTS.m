% clear
% clc

%seed used to get same results       .            
rng(61);
% s = rng;
% r = rand(5);
israndom=1; %bataryalar başta random deger mi aliyor (1) yoksa 100de 100 dolu mu (0) randomsa 1
node_number=50;
LOWav=0.25; MEDav=.50; HIGHav=.75; %availability sartlarini input olarak girdik
%VALUES OF THE IMPACTS
NA=1; LOW=1; MED=2; HIGH=3; %potential impact levels

%trust to be told
%network_behaviour=randi([-1 1])
network_behaviour=0; %neutral

%potential impacts for three nodes [confidentiality,integrity,availability]are              
potentialimpact_n1=[LOW,NA,LOWav]; %gr3         integrity in first sim  entered as NA
potentialimpact_n2=[MED,NA,HIGHav]; %gr1        integrity in first sim  entered as NA
potentialimpact_n3=[HIGH,NA,MEDav]; %gr2        integrity in first sim  entered as NA

B=5000;   %B times of M*128bit block will be encrypted
time=B;         %round number = time 
% averageDPRconsumption=2435; %nJ
%AvgEncEnergyper128bitblock=(sum([5.05, 5.98, 6.66]))/3;
M=1;   % M 128 block will be encrypted in a round
budget= B*M*5.05;   %Budget is B times of the 128bit block encrypting enrgy of aes128 %
total_blocks= M;  %

mes_len=total_blocks*128;
% model_in=[M,averageDPRconsumption, AverageEncryptionEnergy, mes_len];
%node olustur ve enerji hesapla
