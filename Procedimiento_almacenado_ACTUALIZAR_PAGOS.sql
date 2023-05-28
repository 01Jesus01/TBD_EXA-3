DELIMITER //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

CREATE PROCEDURE ACTUALIZAR_PAGOS (IN paciente_id INT)
BEGIN
    SELECT 'EFECTIVO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'EFECTIVO'
    UNION ALL
    SELECT 'CHEQUE' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'CHEQUE'
    UNION ALL
    SELECT 'TARJETA CRÉDITO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'TARJETA CRÉDITO'
    UNION ALL
    SELECT 'TARJETA DÉBITO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'TARJETA DE DÉBITO'
    UNION ALL
    SELECT 'SIN PAGO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
	LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
        LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'SEGURO';
END //

DELIMITER ;

