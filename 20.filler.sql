-- INSERT INTO buildings (name)
-- VALUES ('Main Building'),
--     ('Research Lab'),
--     ('Darkroom');
-- INSERT INTO teams (name, building_id)
-- VALUES ('Admin', 1),
--     ('Data Analysts', 3),
--     ('R&D', 2);
-- INSERT INTO employees (name, email, team_id)
-- VALUES ('Julie Barnes', 'julie@test.com', 3),
--     ('Max Schwarz', 'max@test.com', 1),
--     ('Manuel Lorenz', 'manu@test.com', 2);
-- INSERT INTO intranet_accounts (email, password)
-- VALUES ('max@test.com', 'abcae1'),
--     ('manu@test.com', 'fdasfdas1'),
--     ('julie@test.com', 'adsfsaf3');
-- INSERT INTO projects_employees (employee_id, project_id)
-- VALUES (1, 1),
--     (2, 2),
--     (1, 3),
--     (3, 1),
--     (3, 3),
--     (2, 3);

INSERT INTO projects (title, deadline) VALUES
('Make meow counter', '2023-08-01'),
('Categorize all cats', '2023-08-28'),
('PR cats', NULL);