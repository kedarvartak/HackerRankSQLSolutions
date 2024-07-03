/*
Enter your query here.
*/

DELIMITER $$

CREATE PROCEDURE print_pattern(IN R INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE j INT;

    WHILE i <= R DO
        SET @row = '';
        SET j = 1;

        WHILE j <= i DO
            SET @row = CONCAT(@row, '* ');
            SET j = j + 1;
        END WHILE;

        SELECT @row;
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL print_pattern(20);
