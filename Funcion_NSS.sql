delimiter //
-- Axel Felipe Reyes Valadez
-- Jesus Manuel Arellano Merendon
-- Luis Daniel Delgado Enriquez
-- Luis Angel Soto Hernendez

-- Creacion de la tabla consecuivos 
-- CREATE TABLE CONSECUTIVOS (CONSECUTIVO INT);

-- Agrega un registro inicial a la tabla "CONSECUTIVOS" con un valor de inicio de 1000:
-- INSERT INTO CONSECUTIVOS (CONSECUTIVO) VALUES (1000);

-- usamos como parametro el id del empleado por ejemplo 1 al usar la funcion en el cmd, Select generar_nss(1);
create function generar_nss(id int) returns varchar(100) reads sql data deterministic
begin
-- Variables
  declare numero_oficina int;
  declare año_nacimiento varchar(100);
  
  declare inscribio_trabajador int;
  declare año_sum int;
  declare año_actual int;
    
-- Variables para el verificador del NSS
  declare suma int;
  declare x int;
  declare digito int;
  declare codigo_verificador int;
  -- --------------------------------------------
  declare ultimo_consecutivo int;
  declare num_consecutivo int;
  -- -----------------------------------------------
  
  -- VARIABLE PRINCIPAL PARA LA GENERACION DEL NSS
  declare nss varchar(100);
  declare nss_temp varchar(100);
  
--  1: ----------------------------------------
-- FLOOR es solo devolver valores interos y el RAND ES UNA FUNCION DE NUMERO ALTEARIO DEL 0 AL 100
  set numero_oficina = floor(rand() * 101);
  
  if numero_oficina < 10 then
     set nss = concat("0", numero_oficina);
     set nss_temp = concat("0", numero_oficina);
  else
     set nss = concat(numero_oficina);
     set nss_temp = concat(numero_oficina);
  end if;

-- 2  ---------------------------------------------------------------------------------------

  select year(fecha_nacimiento) into inscribio_trabajador from empleados where empleados_id = id;

  set año_sum = inscribio_trabajador + 15;
  set año_actual = year(current_date);
  
  set inscribio_trabajador = año_sum + floor(rand() * (año_actual - año_sum + 1));
  set inscribio_trabajador = inscribio_trabajador % 100;
    
  set nss = concat(nss, "-", inscribio_trabajador);
  set nss_temp = concat(nss_temp, inscribio_trabajador);

--   3 --------------------------------------------------------------------------------------
  select right(year(fecha_nacimiento), 2) into año_nacimiento from empleados where empleados_id = id;
  set nss = concat(nss, "-", año_nacimiento);
  set nss_temp = concat(nss_temp, año_nacimiento);

-- 8449: Cada vez que agregue un nuevo paciente, y genere el NSS, tome el ÚLTIMO valor de la tabla CONSECUTIVOS, súmele 1 para generar el NSS 

  select consecutivo into num_consecutivo from consecutivos order by consecutivo desc limit 1;
  set nss = concat(nss, "-", num_consecutivo + 1);
  set nss_temp = concat(nss_temp, num_consecutivo + 1);
  update consecutivos set consecutivo = consecutivo + 1;
    
-- 5 ------------------------------------------------------------------

  set suma = 0;
  set x = 1;
  
  while x <= 10 do
    set digito = cast(substring(nss_temp, x, 1) as unsigned);
    
    set digito = digito * (2 - (x % 2));
    
    if digito >= 10 then
      set digito = digito - 9;
    end if;
    
    set suma = suma + digito;
    set x = x + 1;
  end while;
  set codigo_verificador = (10 - (suma % 10)) % 10;
  
  set nss = concat(nss, "-", codigo_verificador);
  
  
  -- RETORNA TODO EL NSS GENERADO EXITOSAMENTE :)
  return nss;
  
end //
delimiter ;
