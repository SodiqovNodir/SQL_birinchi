-- birinchisi
DROP TABLE IF EXISTS foydalanuvchilar;

CREATE TABLE IF NOT EXISTS foydalanuvchilar(
	foydalanuvchi_id SERIAL NOT NULL UNIQUE,
	ism TEXT NOT NULL, 
	yosh INTEGER, 
	manzil TEXT
);

INSERT INTO foydalanuvchilar(ism, yosh, manzil) VALUES
('Ali', 34, 'Farg''ona'),
('Bakir', 23, 'Andijon'),
('Salim', 45, 'Namangan');

SELECT * FROM foydalanuvchilar;

-- ---------------------------------------
-- ikkinchisi

DROP TABLE IF EXISTS mahsulotlar;

CREATE TABLE IF NOT EXISTS mahsulotlar(
	mahsulot_id SERIAL PRIMARY KEY,
	nomi TEXT NOT NULL,
	narx INTEGER,
	tavsif TEXT
);

INSERT INTO mahsulotlar(nomi, narx, tavsif) VALUES
('Olma', 5000, 'Qizil'),
('Torvuz', 10000, 'Katta'),
('Gilos', 20000, 'Qashqar');

SELECT * FROM mahsulotlar;

-- ------------------------------------------
-- uchinchisi

DROP TABLE IF EXISTS buyurtmalar;

CREATE TABLE IF NOT EXISTS buyurtmalar(
	buyurtma_id SERIAL NOT NULL UNIQUE,
	foydalanuvchi TEXT,
	mahsulot TEXT,
	miqdor INTEGER	
);

INSERT INTO buyurtmalar(foydalanuvchi, mahsulot, miqdor) VALUES
('Akmal', 'Stul', 10),
('Amir', 'Ko''z oynak', 3),
('Ziyoda', 'Kiyim', 4);

SELECT * FROM buyurtmalar;

-- -----------------------------------------
-- tortinchisi

DROP TABLE IF EXISTS xodimlar;

CREATE TABLE IF NOT EXISTS xodimlar(
	xodim_id SERIAL PRIMARY KEY,
	ism TEXT NOT NULL,
	lavozim TEXT,
	ish_haqi INTEGER
);

INSERT INTO xodimlar(ism, lavozim, ish_haqi) VALUES
('Temur', 'Boshliq', 12000000),
('Islom', 'Xisobchi', 6500000),
('G''ani', 'Ishchi', 2000000);

SELECT * FROM xodimlar;

-- -----------------------------------------
-- beshinchisi

DROP TABLE IF EXISTS yetkazib_beruvchilar;

CREATE TABLE IF NOT EXISTS yetkazib_beruvchilar(
	y_b_id SERIAL NOT NULL UNIQUE,
	kompaniya_nomi TEXT NOT NULL,
	tel_raqam TEXT,
	manzil TEXT
);

INSERT INTO yetkazib_beruvchilar(kompaniya_nomi, tel_raqam, manzil) VALUES
('Sladok', '+998 91 234 94 33', 'Farg''ona'),
('Snikers', '+998 99 873 23 47', 'Andijon'),
('Pepsi', '+998 50 238 91 12', 'Toshkent');

SELECT * FROM yetkazib_beruvchilar;







