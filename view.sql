CREATE VIEW active_users_view AS
SELECT 
    id, 
    name, 
    email
FROM 
    users
WHERE 
    active = TRUE;

SELECT * FROM active_users_view;
