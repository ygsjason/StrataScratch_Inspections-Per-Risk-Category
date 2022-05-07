select
  case
    when risk_category isnull then 'No Risk'
    else risk_category
  end,
  count(inspection_id) as n_isp
from sf_restaurant_health_violations
group by risk_category
order by n_isp desc
