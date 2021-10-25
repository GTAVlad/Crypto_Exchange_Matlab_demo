function fgui_transactionentry(Transaction_Proposed)
close all
t = Transaction_Proposed;
Numbers = {'1','2','3','4','5'};
Commodities = {'FuelOil M100','Brent Oil'};
Tonnages = {'100','200','300','400','500','600','700','800','900','1000'};
Clients = {'Lukoil','KrasnodarskyNPZ','Guvnor'};
TransactionPrices = ...
{'50','100','200','300','500','600','700','800','900',...
    '1000','1100','1200','1300','1400','1500'};
Dates = {'Today'};
DeliveryTimes = {'1','2','3','5','7','10','14','15','20','21','28','30'};
f = figure('Visible','off','Position',[360,500,450,285]);
hselect = uicontrol('Style','pushbutton','String','Select',...
        'Position',[200,220,70,25],...
        'Callback',{@selectbutton_Callback});
htextn  = uicontrol('Style','text','String','Number',...
           'Position',[325,190,60,15]);
hpopupn = uicontrol('Style','popupmenu',...
           'String',Numbers,...
           'Position',[300,160,100,25],...
           'Callback',@popup_menu_Callback)
htextc  = uicontrol('Style','text','String','Commodity',...
           'Position',[325,130,60,15]);
hpopupc = uicontrol('Style','popupmenu',...
           'String',Commodities,...
           'Position',[300,100,100,25],...
           'Callback',@popup_menu_Callback) 
       
htextt  = uicontrol('Style','text','String','Tonnage',...
           'Position',[325,70,60,15]);
hpopupt = uicontrol('Style','popupmenu',...
           'String',Tonnages,...
           'Position',[300,40,100,25],...
           'Callback',@popup_menu_Callback)
align([htextn,hpopupn,htextc,hpopupc,htextt,hpopupt],'Center','None');       
htextb  = uicontrol('Style','text','String','Buyer',...
           'Position',[200,190,60,15]);
hpopupb = uicontrol('Style','popupmenu',...
           'String',Clients,...
           'Position',[200,160,100,25],...
           'Callback',@popup_menu_Callback)     
htexts  = uicontrol('Style','text','String','Seller',...
           'Position',[200,130,60,15]);
hpopups = uicontrol('Style','popupmenu',...
           'String',Clients,...
           'Position',[200,100,100,25],...
           'Callback',@popup_menu_Callback)      
htextp  = uicontrol('Style','text','String','Price',...
           'Position',[200,70,60,15]);
hpopupp = uicontrol('Style','popupmenu',...
           'String',TransactionPrices,...
           'Position',[200,40,100,25],...
           'Callback',@popup_menu_Callback);       
align([hselect,htextb,hpopupb,htexts,hpopups,htextp,hpopupp],'Center','None');
htextd  = uicontrol('Style','text','String','Date',...
           'Position',[75,190,60,15]);
hpopupd = uicontrol('Style','popupmenu',...
           'String',Dates,...
           'Position',[75,160,100,25],...
           'Callback',@popup_menu_Callback);
htextdd  = uicontrol('Style','text','String','Delivery',...
           'Position',[75,130,60,15]);  
hpopupdd = uicontrol('Style','popupmenu',...
           'String',DeliveryTimes,...
           'Position',[75,100,100,25],...
           'Callback',@popup_menu_Callback);       
align([htextd,hpopupd,htextdd,hpopupdd],'Center','None');
hpopupp.Value
% Make the UI visible.
f.Visible = 'on';
hold on
movegui(f,'center');
%popv = hpopup.Value
   function popup_menu_Callback(source,eventdata) 
      % Determine the selected data set.
      str = source.String;
      val = source.Value;
      % Set current data to the selected data set.
      switch str{val};
      case 'Peaks' % User selects Peaks.
         current_data = peaks_data;
      case 'Membrane' % User selects Membrane.
         current_data = membrane_data;
      case 'Sinc' % User selects Sinc.
         current_data = sinc_data;
      end
   end
function selectbutton_Callback(source,eventdata) 
% Display surf plot of the currently selected data.
     Transaction_Number = char(Numbers(hpopupn.Value));
     Transaction_Commodity = char(Commodities(hpopupc.Value));
     Transaction_Tonnage = char(Tonnages(hpopupt.Value));
     Transaction_Buyer = char(Clients(hpopupb.Value));
     Transaction_Seller = char(Clients(hpopups.Value));
     Transaction_Price = char(TransactionPrices(hpopupp.Value));
     Transaction_Date = char(Dates(hpopupd.Value));
     Transaction_DeliveryinDays = char(DeliveryTimes(hpopupdd.Value));
     dv1  = datevec(date);
     dv1(3) = dv1(3) + str2num(Transaction_DeliveryinDays);
     Transaction_DeliveryDate = datestr(datenum(dv1));
     
     t.Number = Transaction_Number;
     t.Date = Transaction_Date;
     t.DeliveryDate = Transaction_DeliveryDate;    
     t.Commodity = Transaction_Commodity;  
     t.Tonnage =  Transaction_Tonnage;           
     t.Price   =   Transaction_Price;        
     t.Buyer  =   Transaction_Buyer;   
     t.Seller  =   Transaction_Seller;   
     save TP.mat t;
end

end