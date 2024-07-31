create database hospital;
use hospital;

CREATE TABLE medico (
    crm INT,
    especialidade VARCHAR(50),
    nome VARCHAR(50),
    PRIMARY KEY (crm)
);

CREATE TABLE ala (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE quarto (
    num INT PRIMARY KEY,
    fk_ala_id INT,
    id INT,
    andar INT,
    FOREIGN KEY (fk_ala_id)
        REFERENCES ala (id)
);

CREATE TABLE paciente (
    cpf INT,
    nome VARCHAR(50),
    fk_quarto_num INT,
    FOREIGN KEY (fk_quarto_num)
        REFERENCES quarto (num),
    PRIMARY KEY (cpf),
    saida varchar(50),
    entrada varchar(50)
);

CREATE TABLE enfermeira (
    cre INT PRIMARY KEY,
    fk_enfermeira_cre INT,
    nome VARCHAR(50),
    FOREIGN KEY (fk_enfermeira_cre)
        REFERENCES enfermeira (cre)
);

CREATE TABLE MedPac (
    fk_medico_crm INT,
    fk_paciente_cpf INT,
    FOREIGN KEY (fk_medico_crm)
        REFERENCES medico (crm),
    FOREIGN KEY (fk_paciente_cpf)
        REFERENCES paciente (cpf)
);

CREATE TABLE EnfAla (
    fk_enfermeira_cre INT,
    fk_ala_id INT,
    FOREIGN KEY (fk_enfermeira_cre)
        REFERENCES enfermeira (cre),
    FOREIGN KEY (fk_ala_id)
        REFERENCES ala (id)
);

CREATE TABLE atendimento (
    fk_medico_crm INT,
    fk_paciente_cpf INT,
    FOREIGN KEY (fk_medico_crm)
        REFERENCES medico (crm),
    FOREIGN KEY (fk_paciente_cpf)
        REFERENCES paciente (cpf),
    data DATE,
    hora date
);




