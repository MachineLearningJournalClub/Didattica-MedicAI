%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             Codice preprocessamento dataset EEG adattato a:             %              
%                    dataset 1 BCI competition IV                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Put this Matlab code in the folder containing the BCI dataset
% 'BCIcompIV_1'. Otherwise the directory has to be adjusted.
%

close all
clear all
clc

%Chose the subject and load the dataset
[file, path]=uigetfile(fullfile(pwd,'BCIcompIV_1','Calibration'));
load([path file]);
subject=file(end-4);

%Useful Parameter
fs = nfo.fs;        %Sampling frequency
fNy = fs/2;         %frequenza di Nyquist.
label = mrk.y;      %Label vector
cue = mrk.pos;      %Vector containing the beginning of the cue in time points.
chs = nfo.clab      %canali sistema 10-20


%% Correzione unità di misura
cnt = 0.1*double(cnt);

%% Selezione canali 
% Seleziona solo canali corteccia motoria:
% {'Fc3', 'Fcz', 'Fc4', 'C5', 'C3', 'C1', 'Cz', 'C2', 'C4', 'C6', 'CP3', 'Cp1',
% 'Cpz', 'Cp2', 'Cp4', 'Pz', 'O1', 'Oz', 'O2', 'POz', 'Fpz'}.
% Prova tu...

%% Plottaggio canali
figure,
for i=1:size(cnt,2)
plot(cnt(:,i)+1*(i-1)*max(max(cnt))),hold on,
end
for i=1:length(mrk.pos)
xline(mrk.pos(i)),hold on
end

%% Rereference
% Prova a fare una Common average reference...

%FILTRO COMMON AVERAGE REFERENCE
CAR = mean(cnt');

%applica filtro spaziale CAR al segnale

%% FILTRAGGIO
% Butterworth, filtraggio 8-30 Hz, ordine 4. Si possono cambiare i
% parametri a piacimento.
ordine = 4;
ft_high = 30;
ft_low = 8;

%calcolo le componenti del filtro
[b,a]=butter(ordine,[ft_low ft_high]/(fNy));
freqz(b,a)

%filtraggio a doppia passata
cnt=filtfilt(b,a,cnt);

%% PSD tramite PERIODOGRAMMA
%passi da seguire:
%1-rimozione valor medio e trend
%2-selezione parametri "pwelch":
%             -finestra: il tipo influenza la POLARIZZAZIONE e la lunghezza
%             influenza la RISOLUZONE TEORICA e la VARIABILITA.
%             finestra più lunga --> risoluzione migliore ma meno epoche
%             mediate e quindi meno consistenza.
%             -nverlap, migliora la consistenza 
%             -NFFT, su quanti punti rappresentiamo la PSD.

 fc= fs;                                      %frequenza di campionamento
 cnt_psd = cnt - mean(cnt);                   %rimozione valor medio dal segnale
 
 %Teoria sulle risoluzioni
 %ris_teo = fc/lunghezza finestra;            %risoluzione teorica effettiva
 %NFFT = fc/risoluzione_apparente;            %esempio: risoluzione
                                              %apparente pari a 0.125Hz:
                                              %NFFT = fc/0.125;

 NFFT = 512;      
 window = rectwin(512);
 noverlap= length(window)/2;                  % <= n_campioni/2
 
 %---------
 %Possible WINDOWS:
 %window = rectwin(512);
 %window = hamming(512);

 %calcolo e plotto periodogramma
 [Pxx,f] = pwelch(cnt_psd,window,noverlap,NFFT,fc);             
 plot(f,Pxx/max(Pxx));
 title('Periodogramma')

 %Plotto psd tutti i canali
for i=1:size(cnt,2)
plot(f,Pxx(:,i)/max(Pxx(:,i))), hold on    
end
