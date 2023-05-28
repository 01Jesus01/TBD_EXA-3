DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Primer trigger de formas pago pacientes a pacientes
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_8
BEFORE DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_8
AFTER UPDATE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END //

DELIMITER ;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
-- Segundo trigger de formas pago pacientes a formas pago
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_9
BEFORE DELETE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM formas_pago WHERE forma_pago_id = OLD.forma_pago_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_9
AFTER UPDATE ON formas_pago_pacientes
FOR EACH ROW
BEGIN
    UPDATE formas_pago SET forma_pago_id = NEW.forma_pago_id WHERE forma_pago_id = OLD.forma_pago_id;
END //

DELIMITER ;