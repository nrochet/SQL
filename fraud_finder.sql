WITH processed_users
AS (SELECT LEFT(u.phone_country, 2) AS short_phone_country, u.id
FROM users u)
SELECT t.user_id,
t.merchant_country,
sum(t.amount / fx.rate / Power(10, cd.exponent)) AS amount
FROM transactions t
JOIN fx_rates fx
ON ( fx.ccy = t.currency
AND fx.base_ccy = 'EUR' )
JOIN currency_details cd
ON cd.currency = t.currency
JOIN processed_users pu
ON pu.id = t.user_id
WHERE t.source = 'GAIA'
AND pu.short_phone_country = t.merchant_country
GROUP BY t.user_id,
t.merchant_country
ORDER BY amount DESC;

SELECT t.user_id, min(t.created_date), (t.amount / fx.rate / Power (10, cd.exponent) )  AS amount, Count
  FROM transactions AS t
    JOIN fx_rates AS fx 
     ON ( fx.ccy = t.currency 
      AND fx.base_ccy = "USD" ) 
    JOIN currency_details AS cd 
     ON cd.currency = t.currency
  WHERE t.type="card_payment"
   AND (t.amount / fx.rate / Power (10, cd.exponent) )>=10
   AND t.state='completed'
   AND count=1
  GROUP BY t.amount,t.user_id,fx.rate,cd.exponent;
  
  
  