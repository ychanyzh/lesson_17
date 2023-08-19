-- 1. Find a user who had the biggest amount of reservations. Return user name and user_id:

SELECT u.username, u.id AS user_id
FROM users u
JOIN guests g ON u.id = g.user_id
JOIN reservations r ON g.id = r.guest_id
GROUP BY u.username, u.id
ORDER BY COUNT(r.id) DESC
LIMIT 1;


-- 2. Find a host who earned the biggest amount of money for the last month. Return hostname and host_id:

SELECT h.id AS host_id, u.username AS hostname
FROM hosts h
JOIN users u ON h.user_id = u.id
JOIN rooms r ON h.id = r.host_id
JOIN reservations res ON r.id = res.room_id
WHERE res.check_in_date >= DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '1 month'
GROUP BY h.id, u.username
ORDER BY SUM(res.total_price) DESC
LIMIT 1;


-- 3. Find a host with the best average rating. Return hostname and host_id:

SELECT h.id AS host_id, u.username AS hostname
FROM hosts h
JOIN users u ON h.user_id = u.id
JOIN rooms r ON h.id = r.host_id
JOIN reviews rev ON r.id = rev.room_id
GROUP BY h.id, u.username
ORDER BY AVG(rev.total_rating) DESC
LIMIT 1;
