DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Primer trigger de direcciones empleados a empleados
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_4
BEFORE DELETE ON direcciones_empleados
FOR EACH ROW
BEGIN
    DELETE FROM empleados WHERE empleado_id = OLD.empleado_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_4
AFTER UPDATE ON direcciones_empleados
FOR EACH ROW
BEGIN
    UPDATE empleados SET empleado_id = NEW.empleado_id WHERE empleado_id = OLD.empleado_id;
END //

DELIMITER ;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
-- Segundo trigger de direcciones empleados a direcciones
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_5
BEFORE DELETE ON direcciones_empleados
FOR EACH ROW
BEGIN
    DELETE FROM direcciones WHERE direccion_id = OLD.direccion_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_5
AFTER UPDATE ON direcciones_empleados
FOR EACH ROW
BEGIN
    UPDATE direcciones SET direccion_id = NEW.direccion_id WHERE direccion_id = OLD.direccion_id;
END //

DELIMITER ;