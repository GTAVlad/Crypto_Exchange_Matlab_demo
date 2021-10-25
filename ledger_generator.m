function l = ledger_generator(b,ledger,transaction)
b_length = length(b.blockArray);
Ledger_line = transaction;
Ledger_line.hash = b.blockArray(b_length).selfHash;
Ledger_line = struct2cell(Ledger_line);
Ledger_line = Ledger_line';
l = [ledger;Ledger_line];