-- SELECT e.name, p.title FROM employees AS e
-- INNER JOIN projects_employees AS pe ON e.id=pe.employee_id
-- INNER JOIN projects AS p ON p.id=pe.project_id;

-- SELECT e.name, t.name FROM teams AS t
-- INNER JOIN employees AS e ON t.id=e.team_id;

SELECT employees.name, teams.name, buildings.name FROM employees
INNER JOIN teams on employees.team_id=teams.id
INNER JOIN buildings on teams.building_id=buildings.id
WHERE buildings.id=3;
