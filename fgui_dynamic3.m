function f = fgui_dynamic3(title_cells, data_cells)
close all
gui_data = [];
gui_data = [title_cells',data_cells'];
figure = 'Manager Approval Added';
figure();
uit = uitable;
uit.Data = gui_data; 
uit.ColumnName = {'Transaction Fields','Transaction Data'};
uit.ColumnEditable = true;
uit.Position = [20 20 612 404]
hold on;
end