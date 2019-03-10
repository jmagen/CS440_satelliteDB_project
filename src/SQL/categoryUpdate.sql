CREATE TRIGGER `categoryUpdate` AFTER INSERT ON `Contains`
 FOR EACH ROW UPDATE categories
SET count = count + 1
WHERE new.category = categories.name