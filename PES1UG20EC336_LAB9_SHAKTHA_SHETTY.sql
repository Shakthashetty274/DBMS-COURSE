DELIMITER $$
CREATE TRIGGER before_update_parts 
BEFORE UPDATE  
ON parts FOR EACH ROW  
BEGIN  
    DECLARE error_msg VARCHAR(255);  
    SET error_msg = ('The new quantity cannot be greater than 2 times the current quantity');  
    IF new.Qty > old.Qty * 2 THEN  
    SIGNAL SQLSTATE '45000'   
    SET MESSAGE_TEXT = error_msg;  
    END IF;  
END $$   
DELIMITER ;

UPDATE parts
set Qty=25
where P_ID=704;

select * from parts;

UPDATE parts
set Qty=8
where P_ID=703;

select * from parts;