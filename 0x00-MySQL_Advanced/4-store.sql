-- Creates a trigger after order is made
CREATE TRIGGER decrease_q AFTER INSERT ON orders FOR EACH ROW
-- updates every row that an order has been made to quantity = quantity - order
UPDATE `items` SET quantity = quantity - New.number WHERE name=New.item_name;
