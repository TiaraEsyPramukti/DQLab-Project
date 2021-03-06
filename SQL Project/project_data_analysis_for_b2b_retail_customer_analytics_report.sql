--Project by DQLab
--Project Data Analysis for B2B Retail: Customer Analytics Report 
/*
Bagaimana pertumbuhan penjualan saat ini?
Apakah jumlah customers xyz.com semakin bertambah ?
Dan seberapa banyak customers tersebut yang sudah melakukan transaksi?
Category produk apa saja yang paling banyak dibeli oleh customers?
Seberapa banyak customers yang tetap aktif bertransaksi?
*/


--Total Penjualan dan Revenue pada Quarter-1 (Jan, Feb, Mar) dan Quarter-2 (Apr,Mei,Jun)
SELECT
	SUM(quantity) as total_penjualan,
	SUM(quantity * priceEach) as revenue
FROM dqlab_order1
WHERE orderStatus = 'Shipped';

SELECT
	SUM(quantity) as total_penjualan,
	SUM(quantity * priceEach) as revenue
FROM dqlab_order2
WHERE orderStatus = 'Shipped';

--Persentasi keseluruhan penjualan
SELECT
	quarter, 
	SUM(quantity) as total_penjualan, 
	SUM(quantity * priceEach) as revenue
FROM (
	SELECT 
		orderNumber, 
		orderStatus, 
		quantity, 
		priceEach, 
		'1' as quarter
	FROM dqlab_order1
	UNION
	SELECT 
		orderNumber, 
		orderStatus, 
		quantity, 
		priceEach, 
		'2' as quarter
	FROM dqlab_order2
	) AS tabel_a
WHERE orderStatus = 'Shipped'
GROUP BY quarter;

--Apakah jumlah customers xyz.com semakin bertambah?
SELECT
	quarter, 
	COUNT(DISTINCT(customerID)) as total_customers
FROM (
	SELECT 
		customerID, 
		createDate, 
		DATEPART(qq, createDate) as quarter
	FROM dqlab_customer
	WHERE createDate BETWEEN '2004-01-01' AND '2004-06-30'
	) AS tabel_b
GROUP BY quarter;

--Seberapa banyak customers tersebut yang sudah melakukan transaksi?
SELECT 
	quarter,
	COUNT(DISTINCT(customerID)) as total_customers
FROM (
	SELECT 
		customerID,
		createDate,
		DATEPART(qq, createDate) as quarter
	FROM dqlab_customer
	WHERE createDate BETWEEN '2004-01-01' AND '2004-06-30'
	) AS tabel_b
WHERE customerID
IN (
	SELECT DISTINCT(customerID)
	FROM dqlab_order1
	UNION
	SELECT DISTINCT(customerID)
	FROM dqlab_order2)
GROUP BY quarter;

--Category produk apa saja yang paling banyak di-order oleh customers di Quarter-2?
SELECT 
	categoryID, 
	COUNT(DISTINCT orderNumber) as total_order, 
	SUM(quantity) as total_penjualan
FROM (
	SELECT 
		productCode, 
		orderNumber, 
		quantity, 
		orderStatus,
		LEFT(productCode,3) as categoryID
	FROM dqlab_order2
	WHERE orderStatus = 'Shipped'
	) AS tabel_c
GROUP BY categoryID
ORDER BY total_order DESC;

--Seberapa banyak customers yang tetap aktif bertransaksi setelah transaksi pertamanya?
--Menghitung total unik customers yang transaksi di quarter_1
SELECT 
	COUNT(DISTINCT customerID) as total_customers 
FROM dqlab_order1;

SELECT 
	'1' as quarter, 
	(COUNT(DISTINCT customerID)*100)/25 /*totalcustomer*/ as Q2
FROM dqlab_order1
WHERE 
	customerID IN (
	SELECT 
		DISTINCT(customerID) as customerID 
	FROM dqlab_order2)
	/*jumlah unik customers dibagi dengan total_ customers dalam percentage,
	pada Select statement dan beri nama �Q2". 
	"Q2" ini merupakan banyak customers yang tetap aktif bertransaksi setelah transaksi pertamanya (dalam persen)*/
	;

