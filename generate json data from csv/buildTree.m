fid = fopen('brainstructures.csv');
c = textscan(fid, '%s %s %s %f %f %f %f %f', 'delimiter', ',','HeaderLines', 1);

structuresShort = c{2};
structuresLong = c{1};
parents = c{3};

parentChild = false(length(structuresLong));

% starting from 2 cause 1 is the root
for i =2:length(structuresShort)
    
   index = strcmp(structuresShort, parents(i)) ;

   parentChild(i, index) = true;
end

recPrint(1, parentChild, structuresLong)
