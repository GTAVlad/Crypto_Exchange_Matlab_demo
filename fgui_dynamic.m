function f = fgui_dynamic(title_cells, data_cells)
%figure = 1;
%f = figure;
%columninfo.titles=title_cells;
%colnames=title_cells;
%TableEntryFormat = '%4.6g';
%cif = cell(1,5);
%ltc = length(title_cells);
%for i = 1:ltc
    %cif(i) = {TableEntryFormat};
%end
%columninfo.formats = string(cif);
%columninfo.weight = ones(1,ltc);
%columninfo.multipliers = ones(1,ltc);  
%columninfo.isEditable = ones(1,ltc); 
%isn = ones(1,ltc);
%for i = 1:ltc
    %if ischar(data_cells{i})        
        %isn(i) = 0;
    %end
 %end
%columninfo.isNumeric = isn;
%title_cells = TitleCells';
%data_cells = DataCells';
cell_data = [];
cell_data_add = data_cells;
cell_data = [cell_data; cell_data_add];
%tbl = uitable(figure,'Data',cell_data','ColumnName', colnames,'Position',[20 50 362 304]);
uit = uitable;
f = figure;
uit.Data = cell_data
uit.ColumnName = title_cells
uit.ColumnEditable = true;
uit.Position = [20 20 612 404]
hold on;
%close(2);
%return figure;