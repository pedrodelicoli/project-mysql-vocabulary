USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_order_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = current_date();
END $$

DELIMITER ;
