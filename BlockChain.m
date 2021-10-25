classdef BlockChain < handle
    properties
	totalCount    
	blockArray    
    end
    methods
	function obj = BlockChain()
	    obj.blockArray =[ Block(0,'Genesis Block')];  
	    obj.totalCount = 1 ;
	    obj.calculateGensisBlockHash();               
	end
	function bc = getLatest(obj)                            
	    bc = obj.blockArray(end);
	end
	function calculateGensisBlockHash(obj) 
	    gb = obj.blockArray(1);
	    Opt.Method = 'SHA-256';
	    Opt.Input  = 'ascii';
	    str = strcat(num2str(gb.index),gb.data);     
	    gb.selfHash = DataHash(  str , Opt);        
	end
	function addBlock(obj,newBlock)                 
	   if  obj.validateNewBlock(newBlock)           
	       obj.blockArray(end+1) = newBlock;        
	   end
	end
	function tf = validateNewBlock(obj,newBlock)    
	   newHash = DataHash(  strcat( newBlock.getCombined(), num2str(newBlock.nonce) ));
	   if(strcmp(newHash(1:2),'00') && strcmp(newBlock.selfHash,newHash))
	       tf=  true;
	   else
	       tf = false;
	   end           
	end
    end
end
