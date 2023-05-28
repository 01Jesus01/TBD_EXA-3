DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_3
BEFORE DELETE ON cuentas_pacientes_detalles
FOR EACH ROW
BEGIN
    DELETE FROM cuentas_pacientes WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_3
AFTER UPDATE ON cuentas_pacientes_detalles
FOR EACH ROW
BEGIN
    UPDATE cuentas_pacientes SET cuentas_pacientes_id = NEW.cuentas_pacientes_id WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END //

DELIMITER ;