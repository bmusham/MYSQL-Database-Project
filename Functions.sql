USE IMS;
DELETE FROM PERFORMANCE;
DROP PROCEDURE IF EXISTS yearly_return_report;
DELIMITER //
CREATE PROCEDURE yearly_return_report ()

BEGIN
   DECLARE initial_year int;
   DECLARE current_year int;
   DECLARE stock_increment int;
   DECLARE year_increment int;
   DECLARE no_of_years INT;
   DECLARE stock_count int;
   DECLARE stock_year_count int;
   DECLARE stock_year_price decimal(9,2);
   DECLARE current_year_price decimal(9,2);
   DECLARE rate_of_return decimal(9,2);
   
	SET no_of_years=1;
    -- SET current_year = year(now());
   SET stock_increment=1;
   SET stock_count=0;
   SET stock_year_count=0;
		Select (count(*)) from stock into stock_count;
		WHILE stock_increment <= stock_count DO
			SET year_increment = 1;
			select Stock_Price from stock_price where Stock_ID = stock_increment order by Stock_Year desc 
            limit 1 into current_year_price;
            select Stock_Year from stock_price where Stock_ID = stock_increment order by Stock_Year desc 
            limit 1 into current_year;
            select count(*) from stock_price where Stock_ID = stock_increment into stock_year_count;
			WHILE year_increment < stock_year_count DO
				select Stock_Price from stock_price where Stock_year=current_year - year_increment and 
                Stock_ID=stock_increment into stock_year_price;
                SET rate_of_return = round(((current_year_price-stock_year_price)/stock_year_price)*100,2);
                INSERT INTO performance (Investment_ID, Serial_No, No_Of_Years, Rate_Of_Return) 
				 select i.Investment_ID, s.Stock_ID, year_increment, rate_of_return from 
                 investments i, 
				 stock s
				 where s.Investment_ID=i.Investment_ID and s.Stock_ID = stock_increment;
                 SET year_increment = year_increment+1;
			END WHILE;
            SET stock_increment = stock_increment+1;
		END WHILE;
				
END //


DELIMITER ;

CALL yearly_return_report;



