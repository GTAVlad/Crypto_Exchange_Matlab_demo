function f = fgui_dynamic2(title_cells, data_cells)
close all
cell_data = [];
cell_data_add = data_cells;
cell_data = [cell_data; cell_data_add];
%tbl = uitable(figure,'Data',cell_data','ColumnName', colnames,'Position',[20 50 362 304]);
figure = 't1';
%f1 = figure(figure_number);
figure();
uit = uitable;
uit.Data = cell_data
uit.ColumnName = title_cells
uit.ColumnEditable = true;
uit.Position = [20 20 612 404]
hold on;
%close(2);
%return figure;
end