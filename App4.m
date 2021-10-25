delete('TP.mat');
clear all;
close all;
nt = 0;
pause_time = 10;
Company = struct('Name',{'Lukoil'},'Director',{'D1'},'Manager',{'M1'},'Secretary',{'S1'},'Lawer',{'L1'},'Accountant',{'A1'});

Buyer = Company;
xls_statutorydocument_generator('StatutoryDocument',Buyer);

Company = struct('Name',{'KrasnodarskyNPZ'},'Director',{'D2'},'Manager',{'M2'},'Secretary',{'S2'},'Lawer',{'L2'},'Accountant',{'A2'});
Seller = Company;
xls_statutorydocument_generator('StatutoryDocument',Seller);
Ledger = [];

Transaction_Proposed = struct('Number','','Date','','DeliveryDate','','Commodity','','Tonnage','',...
    'Price','','Buyer','','Seller','');
Transaction_Proposed.ApprovalBuyerManager = '';
fgui_transactionentry(Transaction_Proposed);
pause(pause_time);
load TP.mat;
Transaction_Proposed = t;

xls_agreement_generator('Agreement',Transaction_Proposed, Buyer,Seller);
nt = nt+1;

TitleCells = fieldnames(Transaction_Proposed); 
DataCells = struct2cell(Transaction_Proposed);

Opt.Method ='SHA-256';
Opt.Input = 'ascii';
fgui_dynamic3(TitleCells', DataCells');
transaction=struct2cell(Transaction_Proposed);
bc = BlockChain
obj1 = bc.blockArray(1);
m1 = Miner(bc)
m1.mine(transaction)
bc
bc.blockArray(2)
Ledger = ledger_generator(bc,Ledger,Transaction_Proposed)
pause(10)

Company = struct('Name',{'Guvnor'},'Director',{'D3'},'Manager',{'M3'},'Secretary',{'S3'},'Lawer',{'L3'},'Accountant',{'A3'});
Buyer = Company;
xls_statutorydocument_generator('StatutoryDocument',Buyer);
nt = nt+1;

Company = struct('Name',{'Lukoil'},'Director',{'D1'},'Manager',{'M1'},'Secretary',{'S1'},'Lawer',{'L1'},'Accountant',{'A1'});
Seller = Company;

Transaction_Proposed = struct('Number','','Date','','DeliveryDate','','Commodity','','Tonnage','',...
    'Price','','Buyer','','Seller','');
Transaction_Proposed.ApprovalBuyerManager = '';
fgui_transactionentry(Transaction_Proposed);
pause(pause_time);
load TP.mat;
Transaction_Proposed = t;
xls_agreement_generator('Agreement',Transaction_Proposed, Buyer,Seller);

TitleCells = fieldnames(Transaction_Proposed); 
DataCells = struct2cell(Transaction_Proposed);
fgui_dynamic3(TitleCells', DataCells');
transaction=struct2cell(Transaction_Proposed);
m1.mine(transaction)
bc
bc.blockArray(3)
Ledger = ledger_generator(bc,Ledger,Transaction_Proposed)
save Ledger Ledger;
pause(pause_time);
close all

Transaction_Proposed = transaction_approval(Transaction_Proposed, 'Buyer', 'Manager');
TitleCells = fieldnames(Transaction_Proposed); 
DataCells = struct2cell(Transaction_Proposed);
fgui_dynamic3(TitleCells', DataCells');
%xls_agreement_updater(Transaction_Proposed);
m1.mine(struct2cell(Transaction_Proposed))

bc.blockArray(1)
bc.blockArray(2)
bc.blockArray(3)
bc.blockArray(4)
pause(pause_time);
close all
%Transaction_Proposed = transaction_request(Transaction_Proposed,Buyer,Seller);
%xls_additional_document_generator(Buyer,Seller, timestamp, vargin);
%document_request(DocumentType,Seller, Officer, Buyer, Officer, timestamp);
%document_verification(DocumentType, Buyer, Officer, timestamp);
%document_verification(DocumentType, Seller, Officer, timestamp);
%document_send(DocumentType, Buyer, Officer, Seller, Officer, timestamp);
%document_settlement(DocumentType, Buyer,Officer, Seller, Officer, timestamp);
%document_sign(DocumentType, Seller, Officer, timestamp);
%document_approval(DocumentType, Seller, Officer, timestamp);
%transaction_approval(TransactionNumber
%document_sign(DocumentType,Buyer, Officer, timestamp);

%xls_protocol_of_disputes_generator(Buyer,Seller, timestamp, vargin);
%xls_additional_document_generator(Buyer,Seller, timestamp, vargin);
%xls_invoice_generator(Buyer, Seller, timestamp, vargin);

%Documents_List

%Statutory Document
%Agreement
%Protocol_of Disputes
%Additional_Agreement
%Invoice
%Transportation_Request
%Agreement_Request
%Loading_Reqest
%Shipment_Agreement
%Driver_Delegation_Document
%Storage_Agreement
%TTH
%TTZ
%Unloading_Declaration
