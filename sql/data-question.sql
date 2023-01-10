SET client_encoding = 'UTF8';
insert into question (id, text, answer_type) 
    values (1, 'Comment vous appelez-vous ?', 'FREE');
select setval('question_id_seq', max(id)) from question;