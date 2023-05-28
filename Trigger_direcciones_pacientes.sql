DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Primer trigger de direcciones pacientes a pacientes
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_6
BEFORE DELETE ON direcciones_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_6
AFTER UPDATE ON direcciones_pacientes
FOR EACH ROW
BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END //

DELIMITER ;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
-- Segundo trigger de direcciones pacientes a direcciones
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_7
BEFORE DELETE ON direcciones_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM direcciones WHERE direccion_id = OLD.direccion_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_7
AFTER UPDATE ON direcciones_pacientes
FOR EACH ROW
BEGIN
    UPDATE direcciones SET direccion_id = NEW.direccion_id WHERE direccion_id = OLD.direccion_id;
END //

DELIMITER ;