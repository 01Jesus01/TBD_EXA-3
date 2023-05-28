DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Primer trigger de registro pacientes a pacientes
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_10
BEFORE DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_10
AFTER UPDATE ON registro_pacientes
FOR EACH ROW
BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END //

DELIMITER ;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
-- Segundo trigger de registro pacientes a cuentas pacientes
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_11
BEFORE DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM cuentas_pacientes WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_11
AFTER UPDATE ON registro_pacientes
FOR EACH ROW
BEGIN
    UPDATE cuentas_pacientes SET cuentas_pacientes_id = NEW.cuentas_pacientes_id WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END //

DELIMITER ;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER //
-- Tercer trigger de registro pacientes a empleados
-- Trigger para el borrado en cascada
CREATE TRIGGER borrado_cascada_12
BEFORE DELETE ON registro_pacientes
FOR EACH ROW
BEGIN
    DELETE FROM empleados WHERE empleados_id = OLD.registro_por_empleado_id;
END //

-- Trigger para la actualización en cascada
CREATE TRIGGER actualizar_cascada_12
AFTER UPDATE ON registro_pacientes
FOR EACH ROW
BEGIN
    UPDATE empleados SET empleados_id = NEW.registro_por_empleado_id WHERE empleados_id = OLD.registro_por_empleado_id;
END //

DELIMITER ;