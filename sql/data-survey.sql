SET client_encoding = 'UTF8';
insert into survey(id, title, level, poe_type) 
    values (1, 'Premier Retour', 'ONE_MONTH', 'POEI');
insert into survey(id, title, level, poe_type) 
    values (2, 'Deuxième Retour', 'SIX_MONTHS', 'POEI');
insert into survey(id, title, level, poe_type) 
    values (3, 'Le Retour Final', 'ONE_YEAR', NULL);
select setval('survey_id_seq', max(id)) from survey;