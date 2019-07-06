
-- -----------------------------------------------------
-- Data for table Tiendas
-- -----------------------------------------------------
INSERT INTO Tiendas (Id_tienda, Localizacion, Stock, Aforo) VALUES (0, 'La Orotava', 1, 10);
INSERT INTO Tiendas (Id_tienda, Localizacion, Stock, Aforo) VALUES (1, 'Santa Cruz de Tenerife', 1, 12);
INSERT INTO Tiendas (Id_tienda, Localizacion, Stock, Aforo) VALUES (2, 'Icod de los Vinos', 3, 10);
INSERT INTO Tiendas (Id_tienda, Localizacion, Stock, Aforo) VALUES (3, 'Arona', 1, 10);
INSERT INTO Tiendas (Id_tienda, Localizacion, Stock, Aforo) VALUES (4, 'Santiago del Teide', 3, 10);


-- -----------------------------------------------------
-- Data for table Trabajadores
-- -----------------------------------------------------
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('28461837D', 'COMERCIAL', 'JUAN', 'RUÍZ GARCÍA', 1200, 'Lunes a Viernes de 8:00 a 16:00', 183726892, 0);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('93627452G', 'MANTENIMIENTO', 'PEDRO', 'HERRERA HERRERA', 850, 'Lunes a Viernes de 8:00 a 16:00', 748266384, 0);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('73528635E', 'SEGURIDAD', 'MARÍA', 'PÉREZ DÍAZ', 1000, 'Lunes a Viernes de 8:00 a 16:00', 992617283, 0);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('73648610H', 'MANTENIMIENTO', 'ARTURO', 'EXPÓSITO CASTRO', 850, 'Lunes a Viernes de 8:00 a 16:00', 112600263, 1);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('41076386A', 'COMERCIAL', 'LUCÍA', 'RODRÍGUEZ LEDESMA', 1200, 'Lunes a Viernes de 8:00 a 16:00', 667253891, 1);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('66623510W', 'SEGURIDAD', 'CARLA', 'RUÍZ SUÁREZ', 1000, 'Lunes a Viernes de 8:00 a 16:00', 900165018, 1);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('83619037Y', 'MANTENIMIENTO', 'MANUEL', 'DÓNIZ DÍAZ', 850, 'Lunes a Viernes de 8:00 a 16:00', 112265987, 2);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('02748817P', 'SEGURIDAD', 'CARLOS', 'GARCÍA DORTA', 1000, 'Lunes a Viernes de 8:00 a 16:00', 027094175, 2);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('63635119R', 'COMERCIAL', 'ANA', 'PÉREZ EXPÓSITO', 1200, 'Lunes a Viernes de 8:00 a 1200', 026888199, 2);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('17492757X', 'COMERCIAL', 'CARMEN', 'FERRERA GARCÍA', 1200, 'Lunes a Viernes de 12:00 a 16:00', 123543988, 2);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('94966216T', 'COMERCIAL', 'ISABEL', 'RODRÍGUEZ LEDESMA', 1200, 'Lunes a Viernes de 8:00 a 16:00', 020085584, 3);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('88853266E', 'MANTENIMIENTO', 'YERAY', 'EXPÓSITO GARCÍA', 850, 'Lunes a Viernes de 8:00 a 16:00', 167249140, 3);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('32316002V', 'SEGURIDAD', 'SERGIO', 'FERRERA DE DIEGO', 1000, 'Lunes a Viernes de 8:00 a 16:00', 103729518, 3);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('55446790Q', 'COMERCIAL', 'LUCAS', 'ORTEGA CASTILLO', 1200, 'Lunes a Viernes de 8:00 a 12:00', 826402947, 4);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('12788229U', 'COMERCIAL', 'PATRICIA', 'MENDEZ ORTIZ', 1200, 'Lunes a Viernes de 12:00 a 16:00', 161619995, 4);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('00346199Y', 'SEGURIDAD', 'SONIA', 'HERRERO CRUZ', 1000, 'Lunes a Viernes de 8:00 a 16:00', 027263937, 4);
INSERT INTO Trabajadores (DNI, Puesto, Nombre, Apellidos, Sueldo, Horario, Telefono, Id_tienda) VALUES ('01928256K', 'MANTENIMIENTO', 'PEDRO', 'GUERRERO SOTO', 850, 'Lunes a Viernes de 8:00 a 16:00', 929384627, 4);


-- -----------------------------------------------------
-- Data for table Clientes_Compra
-- -----------------------------------------------------
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('11122233L', 'ARTURO', 'VICENTE PARDO', 283746389);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('91827364G', 'LUCAS', 'OTERO CORTES', 173827389);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('62548290H', 'RODRIGO', 'SOTO MONTERO', 284930347);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('31628526M', 'ISABEL', 'GIL DÍAZ', 997383794);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('66611526T', 'JUAN', 'LEON PARDO', 938478374);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('99110002N', 'DIEGO', 'MEDINA FUENTES', 182900033);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('11238735F', 'DAVID', 'GUERRERO MORENO', 172839002);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('21212347D', 'CARLOS', 'EXPÓSITO CRESPO', 827364829);
INSERT INTO Clientes_Compra (DNI, Nombre, Apellidos, Telefono) VALUES ('99336278Z', 'FELIPE', 'GÓMEZ DÍAZ', 842923028);


-- -----------------------------------------------------
-- Data for table Ventas
-- -----------------------------------------------------
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (0, 17000, '10-06-2019', '28461837D', '11122233L');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (1, 12600, '15-06-2019', '41076386A', '91827364G');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (2, 32800, '20-06-2019', '17492757X', '62548290H');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (3, 13500, '22-06-2019', '17492757X', '31628526M');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (4, 22300, '22-06-2019', '94966216T', '66611526T');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (5, 9800, '23-06-2019', '55446790Q', '99110002N');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (6, 12300, '25-06-2019', '12788229U', '11238735F');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (7, 20500, '28-06-2019', '17492757X', '21212347D');
INSERT INTO Ventas (Id_venta, Importe, Fecha, DNI_trabajador, DNI_comprador) VALUES (8, 15500, '02-07-2019', '55446790Q', '99336278Z');


-- -----------------------------------------------------
-- Data for table Clientes_Venta
-- -----------------------------------------------------
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('29382746F', 'RAUL', 'SIMON CAMPO', 273891028);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('78392716H', 'MANUEL', 'SOLER REYES', 092736154);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('91736452D', 'CRISTIAN', 'SEGURA ESPINOSA', 117171563);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('19019273J', 'FELIPE', 'CABRERA VILA', 900372784);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('90289276A', 'JOSE', 'DELGADO DELGADO', 162789203);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('83627489R', 'RICARDO', 'RODRÍGUEZ RODRÍGUEZ', 183962538);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('18374628E', 'LORENA', 'LOPEZ HERRERO', 020376028);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('19374829Y', 'MARTA', 'DÍAZ SOSA', 019183647);
INSERT INTO Clientes_Venta (DNI, Nombre, Apellidos, Telefono) VALUES ('92934726J', 'ANTONIO', 'ESPINOSA MORENO', 193522121);


-- -----------------------------------------------------
-- Data for table Vehiculos
-- -----------------------------------------------------
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('6372UY', 0, ROW('AUDI', 2012, 80000, 'Sin daños', 22300), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('7346GH', 0, ROW('BMW', 2013, 85000, 'Sin daños', 9800), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('1232FW', 1, ROW('Toyota', 2016, 40000, 'Sin daños', 12300), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('9876AS', 2, ROW('Nissan', 2013, 87000, 'Sin daños', 20500), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('9534BK', 0, ROW('SEAT', 2013, 90000, 'Sin daños', 15500), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('8372FY', 1, ROW('AUDI', 2014, 60000, 'Sin daños', 17000), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('1276SE', 0, ROW('Toyota', 2012, 80000, 'Sin daños', 12600), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('9090AQ', 1, ROW('BMW', 2016, 40000, 'Sin daños', 32800), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('6745AD', 0, ROW('SEAT', 2016, 50000, 'Sin daños', 13500), 'VENDIDO', NULL);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('0976KK', 0, ROW('Nissan', 2016, 55000, 'Luna trasera dañada', 17200), 'EN VENTA', 0);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('6636UO', 0, ROW('AUDI', 2012, 75000, 'Arañazo en el lateral izquierdo', 8200), 'EN VENTA', 2);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('1326AO', 0, ROW('BMW', 2015, 48000, 'Algunos desperfectos en el interior', 7340), 'EN VENTA', 1);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('8899CC', 0, ROW('Nissan', 2015, 77000, 'Sin daños', 12400), 'EN VENTA', 2);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('3221FD', 1, ROW('Toyota', 2016, 30000, 'Roce en el lateral derecho', 9800), 'EN VENTA', 3);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('0101JH', 1, ROW('SEAT', 2015, 78000, 'Pintura deteriorada', 4500), 'EN VENTA', 4);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('8989WQ', 0, ROW('AUDI', 2016, 50000, 'Sin daños', 18800), 'EN VENTA', 4);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('6573ZZ', 0, ROW('Toyota', 2010, 130000, 'Presencia de oxido e interior envejecido', 2500), 'EN VENTA', 4);
INSERT INTO Vehiculos (Matricula, Num_rotaciones, Datos_coche, Disponibilidad, Id_tienda) VALUES ('7643XF', 1, ROW('BMW', 2011, 100000, 'Necesita cambio de gomas y su interior posee desperfectos', 2000), 'EN VENTA', 2);


-- -----------------------------------------------------
-- Data for table Venta_Vehiculos
-- -----------------------------------------------------
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('10-06-2024', NULL, 0, 0, '8372FY');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('15-06-2024', NULL, 0, 1, '1276SE');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('20-06-2024', 'ROTURA DE JUNTA DE LA CULATA', 1, 2, '9090AQ');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('22-06-2024', NULL, 0, 3, '6745AD');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('22-06-2024', NULL, 0, 4, '6372UY');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('23-06-2024', NULL, 0, 5, '7346GH');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('25-06-2024', 'PROBLEMA EN LA TRANSMISIÓN', 1, 6, '1232FW');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('28-06-2024', NULL, 0, 7, '9876AS');
INSERT INTO Venta_Vehiculos (Fin_garantia, Incidentes, Num_incidentes, Id_venta, Matricula) VALUES ('02-07-2024', NULL, 0, 8, '9534BK');


-- -----------------------------------------------------
-- Data for table vehiculos_adquiridos
-- -----------------------------------------------------
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('04-05-2019', 15000, '8372FY', '29382746F');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('08-05-2019', 8500, '1276SE', '78392716H');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('10-05-2019', 25000, '9090AQ', '91736452D');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('13-05-2019', 8000, '6745AD', '19019273J');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('15-05-2019', 15000, '0976KK', '90289276A');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('20-05-2019', 6300, '6636UO', '29382746F');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('24-05-2019', 5000, '1326AO', '83627489R');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('26-05-2019', 10000, '8899CC', '91736452D');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('28-05-2019', 7300, '3221FD', '18374628E');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('01-06-2019', 3200, '0101JH', '19374829Y');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('03-06-2019', 15400, '8989WQ', '90289276A');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('06-06-2019', 1000, '6573ZZ', '92934726J');
INSERT INTO vehiculos_adquiridos (Fecha_adquisicion, Precio_adquisicion, Matricula, DNI_vendedor) VALUES ('08-06-2019', 1200, '7643XF', '19019273J');


-- -----------------------------------------------------
-- Data for table Vehiculos_Entregados
-- -----------------------------------------------------
INSERT INTO Vehiculos_Entregados (Fecha_entrega, Matricula, DNI_cliente) VALUES ('15-06-2019', '6372UY', '91827364G');
INSERT INTO Vehiculos_Entregados (Fecha_entrega, Matricula, DNI_cliente) VALUES ('22-06-2019', '7346GH', '31628526M');
INSERT INTO Vehiculos_Entregados (Fecha_entrega, Matricula, DNI_cliente) VALUES ('23-06-2019', '1232FW', '99110002N');
INSERT INTO Vehiculos_Entregados (Fecha_entrega, Matricula, DNI_cliente) VALUES ('25-06-2019', '9876AS', '11238735F');
INSERT INTO Vehiculos_Entregados (Fecha_entrega, Matricula, DNI_cliente) VALUES ('02-07-2019', '9534BK', '99336278Z');


-- -----------------------------------------------------
-- Data for table Rotacion
-- -----------------------------------------------------
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (0, '20-05-2019', 0, 3, '8372FY');
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (1, '25-05-2019', 1, 2, '9876AS');
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (2, '28-05-2019', 4, 0, '9090AQ');
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (3, '10-06-2019', 3, 1, '1232FW');
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (4, '18-06-2019', 2, 4, '9876AS');
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (5, '19-06-2019', 1, 3, '3221FD');
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (6, '20-06-2019', 0, 4, '0101JH');
INSERT INTO Rotacion (Id_rotacion, Fecha, Tienda_origen, Tienda_destino, Matricula) VALUES (7, '24-06-2019', 4, 2, '7643XF');
