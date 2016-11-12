clear all;
close all;

seq_x= 'VSPAPAAGMASGYD';
seq_y= 'IPGKASAAPYD';

blos_parameters={@blosum50, @blosum62, @blousm80};

for i=1:length(blos_parameters)
    
    [Score{i}, Alignment{i}] = nwalign(seq_x,seq_y, 'scoringmatrix', blos_parameters{i});
end

fprintf('The alignments scores are: \n');
disp(Score);

fprintf ('The corresponding alignments are as follows \n');
disp(Alignment{1});
fprintf('\n');
disp(Alignment{2});
fprintf('\n');
disp(Alignment{3});
fprintf('\n');