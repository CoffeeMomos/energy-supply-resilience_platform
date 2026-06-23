MATCH (risk:RiskEvent)-[:THREATENS]->(c:Corridor)
      -[:ENTERS_VIA]->(p:Port)
      -[s:SUPPLIES]->(ref:Refinery)

WITH
risk,
ref,
s.exposure_pct AS exposure

RETURN
risk.name AS RiskEvent,
ref.name AS Refinery,
risk.severity AS Severity,
risk.probability AS Probability,
exposure AS ExposurePct,
ROUND(
(
(0.6 * risk.severity + 0.4 * risk.probability)
*
(exposure / 100.0)
),2
) AS RefineryRisk

ORDER BY RefineryRisk DESC
