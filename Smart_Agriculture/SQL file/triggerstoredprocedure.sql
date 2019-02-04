#Trigger:


Delimiter #
CREATE TRIGGER log
AFTER INSERT on login
FOR EACH ROW
BEGIN
INSERT INTO log_details VALUES(NOW())
END#

# Stored Procedure

delimiter #
mysql> CREATE PROCEDURE getCrops()
begin
SELECT * FROM crop_details
END#


delimiter #
mysql> CREATE PROCEDURE getFarmers()
begin
SELECT * FROM farmer_details
END#

delimiter #
mysql> CREATE PROCEDURE getFertilizer()
begin
SELECT * FROM fertilizer
END#


delimiter #
mysql> CREATE PROCEDURE getMarket()
begin
SELECT * FROM market
END#


delimiter #
mysql> CREATE PROCEDURE getSuggested()
begin
SELECT * FROM suggested_crops
END#

delimiter #
mysql> CREATE PROCEDURE getWeather()
begin
SELECT * FROM weather
END#
