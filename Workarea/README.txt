
This demo is mainly made to understand the blockchain technology and not to
be a robust blockchain application. Each block contains a data field but there
is no ledger.

Communication is done by instrument control toolbox udp messaging. 
This is not ideal as the messaging is made for communication with instruments
and not for peer-to-peer networks. To connect a new node, an existing node
should first add the client and timeout. Then the new node can connect back to 
the other node. This is definetly an area of improvement.

Mining a new block is done with help of parallel computing primarily to
get concurrent execution, not speed as only two initial 0s in the hash are 
needed. This can be changed but there could be communication issues if the 
MATLAB thread is blocked when new blocks arrive.

Adding a block instead of mining will add a block with non-valid hash. This
can be used to test the blockchain.

For step by step instructions about how to run this application look in the
doc folder.
