/*DELIMITER*/
drop table if exists restaurante cascade
/*Creación de tablas */
create table restaurante (
    mesas INT(3),
    menu VARCHAR(1000) NOT NULL,
    mesasDisponibles INT(3) NOT NULL,
    precioMenu FLOAT(8,2) NOT NULL
)
/*Claves primarias */
alter table restaurante add constraint pk_restaurante primary key(codigo)
alter table restaurante add constraint uk_restaurante unique key(usuario)
/*Claves foráneas*/
alter table restaurante add constraint fk_restaurante
    foreign key (codigo) references cliente(codigo) on delete cascade;


