
-- ///////////////////////////TRIGGER-1////////////////////////

CREATE OR REPLACE FUNCTION nueva_venta() RETURNS TRIGGER AS $$
    BEGIN
        UPDATE Tiendas
        SET Stock = Stock - 1
        WHERE Tiendas.Id_tienda = (SELECT Id_tienda
                                   FROM Vehiculos
                                   WHERE NEW.Matricula = Vehiculos.Matricula);

        UPDATE Vehiculos
        SET Disponibilidad = 'VENDIDO', Id_tienda = NULL
        WHERE NEW.Matricula = Vehiculos.Matricula;

        RAISE NOTICE 'DATOS RELACIONADOS CON LA VENTA ACTUALIZADOS';
        RETURN NULL;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER venta_realizada AFTER INSERT
ON Venta_Vehiculos FOR EACH ROW
EXECUTE PROCEDURE nueva_venta();


-- ///////////////////////////TRIGGER-2////////////////////////

CREATE OR REPLACE FUNCTION comprobar_rotacion() RETURNS TRIGGER AS $$
    BEGIN
	    IF EXISTS (SELECT * FROM Tiendas WHERE Id_tienda=NEW.Tienda_origen AND Stock=0)THEN
            RAISE EXCEPTION 'LA TIENDA DE ORIGEN NO DISPONE DE VEHÍCULOS';
        END IF;

        IF EXISTS (SELECT * FROM Tiendas WHERE Id_tienda=NEW.Tienda_destino AND Stock=Aforo)THEN
            RAISE EXCEPTION 'LA TIENDA DE DESTINO NO DISPONE DE ESPACIO SUFICIENTE';
        END IF;

        RAISE NOTICE 'ROTACIÓN CORRECTA';
        RETURN NEW;		
    END
$$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_rotacion BEFORE INSERT
ON Rotacion FOR EACH ROW
EXECUTE PROCEDURE comprobar_rotacion();


-- ///////////////////////////TRIGGER-3////////////////////////

CREATE OR REPLACE FUNCTION nueva_rotacion() RETURNS TRIGGER AS $$
    BEGIN
        UPDATE Tiendas
        SET Stock = Stock - 1
        WHERE Id_tienda = NEW.Tienda_origen;

        UPDATE Tiendas
        SET Stock = Stock + 1
        WHERE Id_tienda = NEW.Tienda_destino;

        UPDATE Vehiculos
        SET Id_tienda = NEW.Tienda_destino, Num_rotaciones = Num_rotaciones + 1
        WHERE Matricula=NEW.Matricula;

        RAISE NOTICE 'ROTACIÓN REALIZADA CORRECTAMENTE';
        RETURN NULL;
    END
$$ LANGUAGE plpgsql;

CREATE TRIGGER rotacion_realizada AFTER INSERT
ON Rotacion FOR EACH ROW
EXECUTE PROCEDURE nueva_rotacion();


-- ///////////////////////////TRIGGER-4////////////////////////

CREATE OR REPLACE FUNCTION comprobar_ubicacion() RETURNS TRIGGER AS $$
    BEGIN
        IF EXISTS (SELECT * FROM Tiendas WHERE Id_tienda=NEW.Id_tienda AND Stock=Aforo) THEN
            RAISE EXCEPTION 'NO HAY ESPACIO EN LA TIENDA ESPECIFICADA';
        END IF;

        UPDATE Tiendas
        SET Stock = Stock + 1
        WHERE Id_tienda=NEW.Id_tienda;

        RAISE NOTICE 'UBICACIÓN CORRECTA';
        RETURN NEW;
    END
$$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_ubicacion BEFORE INSERT
ON Vehiculos FOR EACH ROW
EXECUTE PROCEDURE comprobar_ubicacion();




