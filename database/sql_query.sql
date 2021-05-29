-- #1 Lastest position of each staff
SELECT Staff_ID, Department_ID, Position_ID
FROM Promote_History
WHERE	(Staff_ID, Promote_Date) IN
	(SELECT Staff_ID, MAX(Promote_Date)
	FROM Promote_History
	GROUP BY Staff_ID)
ORDER BY Staff_ID;

-- #2 ID and Name of department and position
SELECT d.Department_ID, d.Department_Name, p.Position_ID, p.Position_Name
FROM Department d JOIN Position p
	ON d.Department_ID = p.Department_ID;

-- #3 #1 with Staff name
SELECT s.Staff_ID, s.Staff_FirstName, s.Staff_LastName, p.Department_ID, p.Position_ID
FROM Staff_Info AS s
	RIGHT JOIN
		(SELECT Staff_ID, Department_ID, Position_ID
		FROM Promote_History
		WHERE	(Staff_ID, Promote_Date) IN
			(SELECT Staff_ID, MAX(Promote_Date)
			FROM Promote_History
			GROUP BY Staff_ID)) AS p
	ON s.Staff_ID = p.Staff_ID
ORDER BY Staff_ID;

-- #4 combine #1 - #3
SELECT t.Staff_ID, t.Staff_FirstName, t.Staff_LastName, t.Department_ID, t.Position_ID, d.Department_Name, t.Position_Name
FROM Department d
	RIGHT JOIN
		(SELECT lastP.Staff_ID, lastP.Staff_FirstName, lastP.Staff_LastName, po.Department_ID, po.Position_ID, po.Position_Name
		FROM Position po 
			RIGHT JOIN
				(SELECT s.Staff_ID, s.Staff_FirstName, s.Staff_LastName, p.Department_ID, p.Position_ID
				FROM Staff_Info AS s
					RIGHT JOIN
						(SELECT Staff_ID, Department_ID, Position_ID
						FROM Promote_History
						WHERE	(Staff_ID, Promote_Date) IN
							(SELECT Staff_ID, MAX(Promote_Date)
							FROM Promote_History
							GROUP BY Staff_ID)) AS p
					ON s.Staff_ID = p.Staff_ID) AS lastP
			ON po.Department_ID = lastP.Department_ID
				AND po.Position_ID = lastP.Position_ID) AS t
	ON d.Department_ID = t.Department_ID
ORDER BY Staff_ID;