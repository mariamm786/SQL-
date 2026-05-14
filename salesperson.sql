SELECT sales_id    #this part finds all salesperson who sell to comapany Red
    FROM company c
    INNER JOIN orders o
    ON o.com_id=c.com_id
        WHERE c.name='Red'