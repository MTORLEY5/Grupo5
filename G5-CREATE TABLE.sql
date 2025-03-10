CREATE TABLE G5.Ventas (
  id_venta VARCHAR(10) PRIMARY KEY,
  id_cliente INT,
  fecha_venta DATE,
  modelo_id  VARCHAR(9),
  precio int,
  Precio_Final DECIMAL(10,2),
  buyback BIT,
  id_buyback varchar(12),
  valor_buyback DECIMAL(10,2),
  id_sede VARCHAR (20),
  id_metodo_pago VARCHAR (20),
);

DROP TABLE G5.Sede
CREATE TABLE G5.Sede (
   id_sede VARCHAR (20) PRIMARY KEY,  
   nombre_sede VARCHAR(100) NOT NULL,      
   ubicacion VARCHAR(200) NOT NULL,
   departamento VARCHAR(50) NOT NULL,      
   fecha_apertura DATE NOT NULL,
   activo BIT
   );


DROP TABLE G5.Modelo
CREATE TABLE G5.Modelo (  
    modelo_id varchar(9) NOT NULL primary key,                      
    familia varchar(20) NOT NULL,            
    capacidad varchar(5) NOT NULL,    
    color varchar(20) NOT NULL,            
    precio int NOT NULL                                
); 

DROP TABLE G5.Clientes
CREATE TABLE G5.Clientes (
    id_cliente INT PRIMARY KEY,                 
    tipo_de_doc VARCHAR(20),
	Num_doc VARCHAR(20),   
    nombre_cliente VARCHAR(20),
	apellido_cliente VARCHAR(20),
    email_cliente VARCHAR(100),               
    telefono_cliente VARCHAR(15),
	email_suscrito VARCHAR(100),
    Fecha_nacimiento DATE                     
);



DROP TABLE G5.Metodo_pago;
CREATE TABLE G5.Metodo_pago (
    id_metodo_pago VARCHAR(20) PRIMARY KEY,
    metodo_pago varchar(100) NOT NULL
);



DROP TABLE G5.Buyback
CREATE TABLE G5.Buyback (  
    buyback_id varchar(12) NOT NULL primary key,                      
    modelo_id varchar(9) NOT NULL,            
    estado_equipo varchar(1) NOT NULL,    
    valor_buyback decimal(10,2) NOT NULL                                      
);