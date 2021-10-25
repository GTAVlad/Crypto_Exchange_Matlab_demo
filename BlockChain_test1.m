Opt.Method ='SHA-256';
Opt.Input = 'ascii';
newHash1 = DataHash('Hello Matlab');
bc = BlockChain
obj1 = bc.blockArray(1)
m1 = Miner(bc)
transaction = {'A','B','RMB','200'}
m1.mine(transaction)
bc
bc.blockArray(2)
transaction = {'B','C','RMB','300'}
m1.mine(transaction)
bc
bc.blockArray(3)