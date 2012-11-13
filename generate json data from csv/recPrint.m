function recPrint(nodeIndex, parentChild, names)
    
    sons = parentChild(:,nodeIndex);
    fprintf('{"name":"%s"', names{nodeIndex});
    if sum( sons) ~= 0
        fprintf(',"children" :[');
        
        sonsIndex = find(sons);
        if ~isempty(sonsIndex)
            fprintf('\n');
            recPrint(sonsIndex(1), parentChild, names);
        end
            
        for j=2:length(sonsIndex)
            fprintf('\n,');
            recPrint(sonsIndex(j), parentChild, names);
        end
        fprintf(']');
    end
    fprintf('}');
end
