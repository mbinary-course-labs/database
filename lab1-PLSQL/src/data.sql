-- book data
  insert into Book values('BK001', '白夜行', '东野圭吾', 35, 0);
  insert into Book values('BK002', '恶意', '东野圭吾', 28, 1);
  insert into Book values('BK003', 'Oracle 1', 'Ullman', 39, 1);
  insert into Book values('BK004', 'Oracle 2', 'Ullman', 39, 0);
  insert into Book values('BK005', 'Oracle 3', 'Ullman', 39, 1);
  insert into Book values('BK006', 'Mysql', 'Ullman', 41, 0);
  insert into Book values('BK007', 'ML', 'Murphy', 64, 1);
  insert into Book values('BK008', 'DL', 'GoodFellow', 118, 1);


-- reader data

  insert into Reader values('RMA001', 'Navas', 32, '哥斯达黎加');
  insert into Reader values('RMA020', 'Asensio', 22, '西班牙');
  insert into Reader values('RMA004', 'Ramos', 32, '西班牙');
  insert into Reader values('RMA007', 'Ronaldo', 33, '葡萄牙');
  insert into Reader values('RMA009', 'Benzema', 31, '法国');
  insert into Reader values('RMA011', 'Bale', 32, '威尔士');
  insert into Reader values('RMA008', 'Kroos', 28, '德国');
  insert into Reader values('RMA010', 'Modric', 33, '克罗地亚');
  insert into Reader values('RMA098', 'Rose', 24, '英国');
  insert into Reader values('RMA099', '李林', 21, '中国');
  commit;

  insert into Borrow values('BK001', 'RMA098',str_to_date('2018-01-02', '%Y-%m-%d'), str_to_date('2018-03-02', '%Y-%m-%d'));
  insert into Borrow values('BK002', 'RMA098',str_to_date('2018-02-05', '%Y-%m-%d'), null);
  insert into Borrow values('BK006', 'RMA098',str_to_date('2018-01-22', '%Y-%m-%d'), str_to_date('2018-04-08', '%Y-%m-%d'));
  
  insert into Borrow values('BK007', 'RMA099',str_to_date('2018-02-15', '%Y-%m-%d'), null);
  insert into Borrow values('BK008', 'RMA099',str_to_date('2018-02-16', '%Y-%m-%d'), null);
  insert into Borrow values('BK005', 'RMA099',str_to_date('2018-02-17', '%Y-%m-%d'), null);
  insert into Borrow values('BK001', 'RMA099',str_to_date('2018-03-04', '%Y-%m-%d'), str_to_date('2018-04-02', '%Y-%m-%d'));
  
  insert into Borrow values('BK003', 'RMA007',str_to_date('2017-08-15', '%Y-%m-%d'), str_to_date('2018-01-02', '%Y-%m-%d'));
  insert into Borrow values('BK004', 'RMA007',str_to_date('2017-03-18', '%Y-%m-%d'), str_to_date('2018-01-02', '%Y-%m-%d'));
  insert into Borrow values('BK005', 'RMA007',str_to_date('2017-05-24', '%Y-%m-%d'), str_to_date('2018-01-02', '%Y-%m-%d'));
  insert into Borrow values('BK006', 'RMA007',str_to_date('2017-03-15', '%Y-%m-%d'), str_to_date('2018-01-02', '%Y-%m-%d'));
  insert into Borrow values('BK007', 'RMA007',str_to_date('2017-01-04', '%Y-%m-%d'), str_to_date('2018-01-02', '%Y-%m-%d'));
  
  insert into Borrow values('BK001', 'RMA008',str_to_date('2017-04-19', '%Y-%m-%d'), str_to_date('2017-11-22', '%Y-%m-%d'));
  insert into Borrow values('BK002', 'RMA010',str_to_date('2017-07-28', '%Y-%m-%d'), str_to_date('2018-12-12', '%Y-%m-%d'));
  
  insert into Borrow values('BK001', 'RMA011',str_to_date('2018-04-06', '%Y-%m-%d'), null);
  insert into Borrow values('BK002', 'RMA011',str_to_date('2017-02-04', '%Y-%m-%d'), str_to_date('2017-03-16', '%Y-%m-%d'));
  insert into Borrow values('BK004', 'RMA011',str_to_date('2017-01-15', '%Y-%m-%d'), str_to_date('2017-02-12', '%Y-%m-%d'));
  insert into Borrow values('BK005', 'RMA011',str_to_date('2017-02-14', '%Y-%m-%d'), str_to_date('2018-04-10', '%Y-%m-%d'));
