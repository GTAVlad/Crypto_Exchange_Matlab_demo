classdef Miner < handle
    properties
	blockchain              % miner????blockchain?reference 
    end
    methods
	function obj = Miner(blockchain)
	    obj.blockchain = blockchain;
	end

	function mine(obj,newData)
	   
	    latestBlock = obj.blockchain.getLatest();
	   
	    newBlock = Block(latestBlock.index+1,...
		newData,...
		latestBlock.selfHash);
	    
	    not_found = true;
	    iter = 1;
	    Opt.Method = 'SHA-256';
	    Opt.Input  = 'ascii';
	    while( not_found)
		newHash = DataHash(  strcat( newBlock.getCombined(), num2str(iter) ));                
		if( strcmp(newHash(1:2),'00') )
		    newBlock.nonce = iter             
		    newBlock.selfHash = newHash        
		    obj.blockchain.addBlock(newBlock); 
		    break
		end
		iter = iter + 1;
	    end
	end

    end
end
