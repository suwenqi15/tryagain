
CREATE TABLE IF NOT EXISTS accounttable(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    patient id TEXT, 
    first name TEXT, 
    last name TEXT,  
    email TEXT, 
    birthday TEXT, 
    cho benchmark REAL,  
    fat benchmark REAL
);

CREATE TABLE IF NOT EXISTS dailyfoodtable(
        id INTEGER PRIMARY KEY  AUTOINCREMENT, 
        uuid TEXT  UNIQUE,
        timeframe TEXT,
        category TEXT,
        food_name TEXT, 
        unit TEXT, 
        qty INTEGER,
        cho REAL, 
        fat REAL
    );


    

CREATE TABLE IF NOT EXISTS dailyrecordtable(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    date TEXT, 
    cho REAL,
    fat REAL 
);


CREATE TABLE IF NOT EXISTS personalfoodtable(
id INTEGER PRIMARY KEY AUTOINCREMENT,
        food_name TEXT, 
        unit TEXT, 
        qty INTEGER,
        cho REAL, 
        fat REAL
    );



-- CREATE TABLE IF NOT EXISTS systemfoodtable(id INTEGER PRIMARY KEY AUTOINCREMENT, name, type, unit, qty ,cho, fat);
-- INSERT or IGNORE INTO systemfoodtable VALUES(1, 'Artichoke', 'system','gram','1', '0.0400', '0.0000');
-- INSERT or IGNORE INTO systemfoodtable VALUES(2, 'Asparagus', 'system', 'gram', '1', '0.0200', '0.0000');
-- INSERT or IGNORE INTO systemfoodtable VALUES(3, 'Aubergine', 'system', 'gram', '1', '0.0222', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES(4, 'Baby corn', 'system', 'gram', '1', '0.0200', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES(5, 'Beetroot', 'system', 'gram', '1', '0.0667 ', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES(6, 'Broccoli', 'system', 'gram', '1', '0.0333 ', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES(7, 'Brussels sprouts', 'system ', 'gram', '1', '0.0400', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES(8, 'Butternut squash', 'system ', 'gram', '1', '0.0667 ', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES (9, 'Cabbage', 'system', 'gram', '1', '0.0400 ', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES(10, 'Carrots', 'system  ', 'gram', '1', '0.0400 ', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES(11, 'Cauliflower', 'system', 'gram', '1', '0.0400 ', '0.0000 ');
-- INSERT or IGNORE INTO systemfoodtable VALUES (12, 'Celeriac', 'system', 'gram', '1', '0.0222  ', '0.0000 '),
-- INSERT or IGNORE INTO systemfoodtable VALUES (13, 'Courgette', 'system', 'gram', '1', '0.0200', '0.0000' ), 
-- INSERT or IGNORE INTO systemfoodtable VALUES (14, 'Green Beans', 'system ', 'gram', '1', '0.0333','0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES (15, 'Leeks', 'system ', 'gram', '1', '0.0286', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES (16, 'Mange Tout', 'system ', 'gram', '1', '0.0400', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES (17, 'Okra', 'system ', 'gram', '1', '0.0286', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES (18, 'Onion', 'system', 'gram', '1', '0.0667', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES  (19, 'Parnip', 'system ', 'gram', '1', '0.1000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES  (20, 'Peas', 'system', 'gram', '1', '0.1111', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(21, 'Peppers (green)', 'system ', 'gram', '1', '0.0250', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(22, 'Peppers (red)', 'system ', 'gram', '1', '0.0333', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES (23, 'Peppers (yellow)', 'system', 'gram', '1', '0.0500', '0.0000' ), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(24, 'Petit pois', 'system  ', 'gram', '1', '0.0200', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(25, 'Radish',  'system', 'gram', '1', '0.0200', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(26, 'Runner Beans', 'system', 'gram', '1', '0.0333', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(27, 'Swede', 'system', 'gram', '1', '0.0500', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(28, 'Sweetcorn kernels (tinned)', 'system ', 'gram', '1', '0.1429', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(29, 'Tomatoes', 'system', 'gram', '1', '0.3333', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(30, 'Tomatoes (tinned)', 'system ', 'gram', '1', '0.4000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(31, 'Turnip', 'system', 'gram', '1', '0.0500', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(32, 'Apricots', 'system ', 'gram', '1', '0.0667', '0.0000')，
-- INSERT or IGNORE INTO systemfoodtable VALUES(33, 'Banana', 'system ', 'gram', '1', '0.2000', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(34, 'Blackberries', 'system ', 'gram', '1', '0.0500', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES (35, 'Blueberries', 'system  ', 'gram', '1', '0.1429', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(36, 'Cherries', 'system ', 'gram', '1', '0.1000', '0.0000'),  
-- INSERT or IGNORE INTO systemfoodtable VALUES(37, 'Cooked apples stewed with no sugar', 'system ', 'gram', '1', '0.1000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(38, 'Eating apples', 'system  ', 'gram', '1', '0.1000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(39, 'Grapes', 'system   ', 'gram', '1', '0.2000', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(40, 'Kiwi fruit', 'system    ', 'gram', '1', '0.1000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(41, 'Mango', 'system     ', 'gram', '1', '0.1429', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(42, 'Melon', 'system', 'gram', '1', '0.0667', '0.0000')
-- INSERT or IGNORE INTO systemfoodtable VALUES(43, 'Nectarines','system', 'gram', '1', '0.1000', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(44, 'Oranges', 'system', 'gram', '1', '0.1000', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(45, 'Passion fruit',  'system ', 'gram', '1', '0.0667', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(46, 'Peach', 'system  ', 'gram', '1', '0.0667', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES (47, 'Pear', 'system   ', 'gram', '1', '0.1000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(48, 'Pineapple', 'system    ', 'gram', '1', '0.1000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(49, 'Plum', 'system     ', 'gram', '1', '0.1000', '0.0000'),  
-- INSERT or IGNORE INTO systemfoodtable VALUES(50, 'Raspberries', 'system', 'gram', '1', '0.0500', '0.0000' ), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(51, 'Satsuma', 'system ', 'gram', '1', '0.1000', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(52, 'Strawberries', 'system ', 'gram', '1', '0.0667', '0.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(53, 'Tangerines', 'system  ', 'gram', '1', '0.0667', '0.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(54, 'Avocado', 'system   ', 'gram', '1', '0.0000', '0.2000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(55, 'Butter (tablespoon)', 'system  ', 'tablespoon', '1',  '0.0000', '5.0000'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(56, 'Butter (gram)', 'system   ', 'gram', '1', '0.0000', '0.8333'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(57, 'Brazil buts', 'system   ', 'gram', '1', '0.0000',  '0.6667'),
-- INSERT or IGNORE INTO systemfoodtable VALUES (58, 'Hellmann’s mayonnaise (tablespoon)', 'system  ', 'tablespoon', '1',  '0.0000', '5.0000'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(59, 'Hellmann’s mayonnaise (gram)', 'system    ', 'gram', '1', '0.0000',  '0.7692'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(60, 'Macadamia nuts', 'system    ', 'gram', '1', '0.0000',  '0.7692'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(61, 'Peperami® mini', 'system  ', 'gram', '1', '0.0000', '0.3333'), 
-- INSERT or IGNORE INTO systemfoodtable VALUES(62, 'Peperami® original', 'system   ', 'gram', '1', '0.0000', '0.4444'),
-- INSERT or IGNORE INTO systemfoodtable VALUES(63, 'Oil (tablespoon)', 'system', 'tablespoon', '1', '0.0000', '0.4444');     












