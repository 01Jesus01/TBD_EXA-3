DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada
BEFORE DELETE ON cuartos
FOR EACH ROW
BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada
AFTER UPDATE ON cuartos
FOR EACH ROW
BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END //

DELIMITER ;
