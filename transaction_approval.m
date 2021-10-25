function f = transaction_approval(transaction, transaction_side, officer)
if nargin>3||nargin<3
  error('Wrong number of input arguments, must be 3');
else
    if strcmp(transaction_side,'Buyer')&&strcmp(officer,'Manager')
        transaction.ApprovalBuyerManager = 'Approved';
    end
end
f = transaction;
end