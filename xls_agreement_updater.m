function f = xls_agreement_updater(transaction)
if strcmp(document_type, 'Agreement')
    
    s = strcat(document_type,'_');
    s = strcat(s,char(buyer.Name),'_',char(seller.Name),".xlsx");
    TitleCells = fieldnames(agreement); 
    DataCells = struct2cell(agreement);

    lfn = length(TitleCells);
    lfns = num2str(lfn);
    xls_titlerange = strcat('A1:A',lfns);
    xls_datarange = strcat('B1:B',lfns);
    
    xlswrite(s,TitleCells,'Agreement',xls_titlerange);
    xlswrite(s,DataCells,'Agreement',xls_datarange);
    
    TitleCells = fieldnames(buyer); 
    DataCells = struct2cell(buyer);

    lfn = length(TitleCells);
    lfns = num2str(lfn);
    xls_titlerange = strcat('A1:A',lfns);
    xls_datarange = strcat('B1:B',lfns);
    
    xlswrite(s,TitleCells,'Buyer',xls_titlerange);
    xlswrite(s,DataCells,'Buyer',xls_datarange); 
    
    TitleCells = fieldnames(seller); 
    DataCells = struct2cell(seller);

    lfn = length(TitleCells);
    lfns = num2str(lfn);
    xls_titlerange = strcat('A1:A',lfns);
    xls_datarange = strcat('B1:B',lfns);
    
    xlswrite(s,TitleCells,'Seller',xls_titlerange);
    xlswrite(s,DataCells,'Seller',xls_datarange);    
    f = 1;
else
    f = 0;   
end
end 