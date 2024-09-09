CREATE TABLE Menu (
    MenuID INT,
    MenuName VARCHAR(50),
    TypeID INT,
    Price DECIMAL(10, 2)
);
CREATE TABLE MenuTypes (
    TypeID INT,
    TypeName VARCHAR(50)
);
CREATE TABLE Restaurant (
    RestaurantID INT,
    RestaurantName VARCHAR(50),
    Location VARCHAR(100)
);
INSERT INTO MenuTypes (TypeID, TypeName)
VALUES (1, 'Delicacies'), (2, 'Dessert'), (3, 'Soft drinks');
INSERT INTO Menu (MenuID, MenuName, TypeID, Price)
VALUES (1, 'Chapo Beef', 1, 220.00),
       (2, 'Ice cream', 2, 120.00),
       (3, 'Chai', 3, 30.00);
INSERT INTO Restaurant (RestaurantID, RestaurantName, Location)
VALUES (1, 'Mama Brayo', 'Kisii'),
       (2, 'Kempinski', 'Nairobi'),
       (3, 'Marmanet', 'Nyahururu');
SELECT * FROM Menu;
SELECT * FROM MenuTypes;
SELECT * FROM Restaurant;
UPDATE Menu
SET Price = 250.00
WHERE MenuName = 'Chapo Beef';
ALTER TABLE Menu
ADD Description VARCHAR(255);
ALTER TABLE Menu
DROP COLUMN Description;
DROP TABLE Menu;