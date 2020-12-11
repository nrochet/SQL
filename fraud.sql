
Select * from transactions t
Join fraudsters as f on f.user_id=t.user_id;

SELECT  type, source, entry_method, t.user_id,
merchant_country, 
merchant_category, 
state, 
count(type), 
count(source),
count(entry_method),
count(merchant_country), 
count(merchant_category),
count(state) from transactions t
Join fraudsters as f on f.user_id=t.user_id
GROUP BY 
t.type,t.source,
t.entry_method,
t.merchant_country,
t.merchant_category,
t.state,
t.user_id;




