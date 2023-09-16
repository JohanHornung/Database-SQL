SELECT S.Vorname, AVG(SWS)
FROM BA_Vorlesungen V, BA_hoeren h, BA_Studierende S
WHERE 	V.VorlNr = h.VorlNr
AND		h.MatrNr = S.MatrNr
AND 	S.Semester BETWEEN 2 AND 10
GROUP BY S.Vorname