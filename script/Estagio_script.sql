--drop database estagio;
--CREATE DATABASE ESTAGIO; 
drop table usuario;
create table usuario(
     id BIGINT GENERATED ALWAYS AS IDENTITY 
                (start with 1, INCREMENT by 1) 
    , login varchar(200) not null
    , senha varchar(200) not null
    , primary key (id)
);

drop table curso;
create table curso(
     id BIGINT GENERATED ALWAYS AS IDENTITY 
                (start with 1, INCREMENT by 1)  
    , login varchar(200) not null
    , senha varchar(200) not null
    , primary key (id)
);

drop table setor;
create table setor(
    id BIGINT GENERATED ALWAYS AS IDENTITY 
                (start with 1, INCREMENT by 1) 
   , nome varchar(200) not null
   , id_curso BIGINT
   , primary key(id)
   , foreign key(id_curso) references curso(id)
);

drop table estagiario;
create table estagiario(
   id BIGINT GENERATED ALWAYS AS IDENTITY 
                (start with 1, INCREMENT by 1),
    nome varchar(200) not null,
    data_inicio date not null,
    data_termino date not null,
    id_curso BIGINT,
    id_setor BIGINT,
    id_usuario BIGINT,
    primary key(id),
    foreign key(id_curso) references curso(id),
    foreign key(id_setor) references setor(id),
    foreign key(id_usuario) references usuario(id)
);
drop table controle_estagio;    
create table controle_estagio(
   id BIGINT GENERATED ALWAYS AS IDENTITY 
                (start with 1, INCREMENT by 1),
    id_estagiario BIGINT,
    data_entrada TIMESTAMP,
    data_saida TIMESTAMP,
    primary key (id),
    foreign key (id_estagiario) references estagiario(id)
);
