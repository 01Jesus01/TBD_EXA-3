DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Primer trigger de cuentas pacientes a pacientes
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_1
BEFORE DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_1
AFTER UPDATE ON cuentas_pacientes
FOR EACH ROW
BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END //

DELIMITER ;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
-- Segundo trigger de cuentas pacientes a formas pago pacientes
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_2
BEFORE DELETE ON cuentas_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM formas_pago_pacientes WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_2
AFTER UPDATE ON cuentas_pacientes
FOR EACH ROW
BEGIN
    UPDATE formas_pago_pacientes SET forma_pago_pac_id = NEW.forma_pago_pac_id WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END //

DELIMITER ;