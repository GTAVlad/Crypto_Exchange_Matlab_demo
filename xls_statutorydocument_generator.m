function f = xls_statutorydocument_generator(document_type,company)
if strcmp(document_type, 'StatutoryDocument')
    
    CompanyTitleCells = fieldnames(company); 
    CompanyDataCells = struct2cell(company);

    lfn = length(CompanyTitleCells);
    lfns = num2str(lfn);
    xls_titlerange = strcat('A1:A',lfns);
    xls_datarange = strcat('B1:B',lfns);
    
    s = strcat(document_type,'_');
    s = strcat(s,char(company.Name),".xlsx");
    xlswrite(s,CompanyTitleCells,'Sheet1',xls_titlerange);
    xlswrite(s,CompanyDataCells,'Sheet1',xls_datarange);
    f = 1;
    %return f;
else
    f = 0;
    %return f;    
end
end    
    