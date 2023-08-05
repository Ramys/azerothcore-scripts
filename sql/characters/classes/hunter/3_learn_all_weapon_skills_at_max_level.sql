/***************************************************************************************************
Faction:            Both
DB:                 characters
DB Version:         2023-08-05
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Sets all possible weapon skills (also the learnable ones) to the highest level
- 43 = Swords, 44 = Axes, 45 = Bows, 46 = Guns, 55 = Two-Handed Swords, 95 = Defense,
  136 = Staves, 162 = Unarmed, 172 = Two-Handed Axes, 173 = Daggers, 176 = Thrown,
  226 = Crossbows, 229 = Polearms
***************************************************************************************************/

/***************************************************************************************************
 CONFIGURATION
***************************************************************************************************/
SET @CHARACTER = 1;
SET @VALUE = 400;
SET @MAX = 400;
-- *************************************************************************************************

DELETE
FROM `character_skills`
WHERE `guid` = @CHARACTER
  AND `skill` IN (43, 44, 45, 46, 55, 95, 136, 162, 172, 173, 176, 226, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 43, @VALUE, @MAX),
       (@CHARACTER, 44, @VALUE, @MAX),
       (@CHARACTER, 45, @VALUE, @MAX),
       (@CHARACTER, 46, @VALUE, @MAX),
       (@CHARACTER, 55, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 172, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 176, @VALUE, @MAX),
       (@CHARACTER, 226, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);
