USE `PlatziBlog`;
ALTER TABLE `People`
ADD COLUMN `DateOfBirth` DATETIME NULL AFTER `City`;