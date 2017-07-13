/*SELECT DATE_FORMAT(billing.charged_datetime, '%M') AS 'month', SUM(amount) as total_revenue
FROM billing
WHERE MONTH(billing.charged_datetime) = 3
AND YEAR(billing.charged_datetime) = 2012;*/

/*SELECT billing.clients_id, SUM(billing.amount) as total_revenue
FROM billing
WHERE billing.clients_id = 2;*/

/*SELECT sites.domain_name, sites.clients_id
FROM sites
WHERE sites.clients_id = 10*/

/*SELECT sites.clients_id, COUNT(sites.id) as num_sites, DATE_FORMAT(sites.created_datetime, '%M') AS month_created, DATE_FORMAT(sites.created_datetime, '%Y') AS year_created
FROM sites
WHERE sites.clients_id = 1
GROUP BY month_created, year_created*/

/*SELECT sites.domain_name, COUNT(leads.id) AS leads, DATE_FORMAT(leads.registered_datetime, '%M %d, %Y') AS date
FROM sites
JOIN leads ON sites.id = leads.sites_id
WHERE leads.registered_datetime BETWEEN '2011-01-01' AND '2011-02-15'
GROUP BY sites.id*/

/*SELECT clients.first_name, COUNT(leads.id) AS leads
FROM clients
LEFT JOIN sites ON clients.id = sites.clients_id
LEFT JOIN leads ON sites.id = leads.sites_id
WHERE leads.registered_datetime BETWEEN '2011-01-01' AND '2011-12-31'
group by clients_id*/

/*SELECT CONCAT(clients.first_name, ' ', clients.last_name) AS name, COUNT(leads.id) AS leads, DATE_FORMAT(leads.registered_datetime, '%M') AS 'month'
FROM clients
LEFT JOIN sites ON clients.id = sites.clients_id
JOIN leads ON sites.id = leads.sites_id
WHERE leads.registered_datetime BETWEEN '2011-01-01' AND '2011-06-30'
GROUP BY clients.id, MONTH(leads.registered_datetime)
ORDER BY MONTH(leads.registered_datetime)*/

/*SELECT CONCAT(clients.first_name, ' ', clients.last_name) AS name, sites.domain_name as website, COUNT(leads.id) AS leads, DATE_FORMAT(leads.registered_datetime, '%M %d, %Y') AS date
FROM clients
JOIN sites ON clients.id = sites.clients_id
LEFT JOIN leads ON sites.id = leads.sites_id
WHERE leads.registered_datetime BETWEEN '2011-01-01' AND '2011-12-31'
GROUP BY sites.domain_name
ORDER BY clients.id*/

/*SELECT CONCAT(clients.first_name, ' ', clients.last_name) AS name, SUM(billing.amount) as sum, DATE_FORMAT(billing.charged_datetime, '%M') AS month
FROM clients
LEFT JOIN billing ON clients_id = billing.clients_id
WHERE billing.charged_datetime BETWEEN '2011-01-01' AND '2011-12-31'
GROUP BY name, MONTH(billing.charged_datetime)
ORDER BY clients_id*/

/*SELECT CONCAT(clients.first_name, ' ', clients.last_name) AS name, GROUP_CONCAT(sites.domain_name) AS 'sites'
FROM clients
	LEFT JOIN sites ON clients.id = sites.clients_id
GROUP BY clients.id*/