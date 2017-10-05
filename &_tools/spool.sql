SELECT STATION_NAME
  ||' ('
  || TECH_STATION_NAME
  ||');',
  FP
  ||',0'||
  CPU
  ||',0'||
  SCANNER
  ||';',
  TYPICAL
FROM S7_STATION_CONFIG
ORDER BY TECH_STATION_NAME;