
-- 2nd question
SELECT 
  transactions.person_id, transactions.date, persons.name FROM transactions
INNER JOIN 
  persons ON transactions.person_id=persons.id
INNER JOIN 
  items ON transactions.item_id=items.id
WHERE 
  transactions.date > '2020-01-01 00:00:00'
AND 
  transactions.date < '2020-06-01 00:00:00';

-- 3rd question

SELECT 
  transactions.person_id, transactions.date, persons.name, items.name FROM transactions
INNER JOIN 
  persons ON transactions.person_id=persons.id
INNER JOIN 
  items ON transactions.item_id=items.id
ORDER BY 
  transactions.total DESC;
