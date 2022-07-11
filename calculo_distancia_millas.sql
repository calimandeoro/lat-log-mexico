/**
 * Author:  uriel
 * Created: 11 jul. 2022
 */
CREATE DEFINER=`sistemas`@`localhost` PROCEDURE `distancia`(IN `lat` DOUBLE, IN `lon` DOUBLE, IN `distancex` DOUBLE)
SELECT 
    *
FROM
    (SELECT 
    *,
    (
        (
            (ACOS
                (
                    SIN((`lat` * PI() / 180)) * SIN((latitud * PI() / 180)) + 
                    COS((`lat` * PI() / 180)) * COS((latitud * PI() / 180)) * 
                    COS(((`lon` - longitud) * PI() / 180)))) * 180 / PI()
        ) * 60 * 1.1515
    ) AS distance
FROM
    `cpostal`
GROUP BY codigoPostal) markers
WHERE
    distance BETWEEN 0 AND `distancex`
ORDER BY distance ASC
