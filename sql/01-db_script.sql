-- Création de la table des patients
CREATE TABLE patient (
    id SERIAL PRIMARY KEY,
    num_secu CHAR(13) UNIQUE,
    cle_secu CHAR(2),
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    date_naissance DATE NOT NULL,
    adresse VARCHAR(100),
    telephone VARCHAR(15),
    parent_id INT NULL REFERENCES patient(id) -- Personnes affiliée à un numéro de sécu
);

-- Ajoute un index sur le nom
CREATE INDEX nom_patient_idx
    ON patient (
        nom
    );

-- Création de la table des ordonnances médicales
CREATE TABLE ordonnance (
    id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patient(id) ON DELETE CASCADE,
    date_ordonnance DATE NOT NULL,
    date_prelevement TIMESTAMP
);



-- Table des types de résultats pour un acte médical
CREATE TABLE type_resultat (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(150) NOT NULL UNIQUE
);

-- Table des libellés de type
CREATE TABLE libelle_type (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(150) NOT NULL UNIQUE
);

-- Création de la table des actes médicaux
CREATE TABLE acte_medical (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(100) NOT NULL UNIQUE,
    prix DECIMAL(10, 2) NOT NULL,
    depuis_le DATE NOT NULL,
    type_resulat_id INT REFERENCES type_resultat(id) ON DELETE CASCADE
);

-- Table d'association des libellé vers les types
CREATE TABLE type_resultat_libelle (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(75) NOT NULL UNIQUE,
    type_resultat_id INT REFERENCES type_resultat(id) ON DELETE CASCADE,
    libelle_type_id INT REFERENCES libelle_type(id) ON DELETE CASCADE
);

-- Création de la table d'association Ordonnance vers Actes
CREATE TABLE ordonnance_acte (
    id SERIAL PRIMARY KEY,
    ordonnance_id INT REFERENCES ordonnance(id) ON DELETE CASCADE,
    acte_medical_id INT REFERENCES acte_medical(id) ON DELETE CASCADE
);

-- Création de la table des résultats
CREATE TABLE resultat (
    id SERIAL PRIMARY KEY,
    ordonnance_acte_id INT REFERENCES ordonnance_acte(id) ON DELETE CASCADE,
    value VARCHAR(75)
);
-- Création de la table des factures
CREATE TABLE facture (
    id SERIAL PRIMARY KEY,
    ordonnance_id INT REFERENCES ordonnance(id) ON DELETE CASCADE,
    reference VARCHAR(10) NOT NULL,
    date_facturation DATE NOT NULL,
    date_envoi_assurance DATE,
    date_envoi_complementaire DATE    
);
