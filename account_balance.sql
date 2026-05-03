SELECT t2.name AS NAME,sum(amount) as BALANCE 
FROM Transactions t1 JOIN Users t2 ON t1.account=t2.account
GROUP BY t2.account
HAVING BALANCE  >10000