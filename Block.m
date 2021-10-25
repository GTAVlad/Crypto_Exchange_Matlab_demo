classdef Block < handle
    properties
	index                 
	data                  
	previousHash           
	selfHash              
	nonce                  
    end   
    methods 
	function obj = Block(index,data,previousHash) 
	    if nargin == 2       % genesis block  
	      obj.index = index ;
	      obj.data = data ;             

	    elseif nargin == 3                     
	      obj.index = index ;
	      obj.data = data ;
	      obj.previousHash = previousHash;
	     end
	end
       function str = getCombined(obj) 
					
	    str = strcat(num2str(obj.index),obj.previousHash,strjoin(obj.data));
       end
     end
end
