/***************************************************************************************************
Faction:            Both
DB:                 characters
DB Version:         2023-08-05
Author:             Lukas Volgger
****************************************************************************************************
DESCRIPTION
----------------------------------------------------------------------------------------------------
- Sets all possible weapon skills (also the learnable ones) to the highest level
- 54 = Maces, 95 = Defense, 136 = Staves, 160 = Two-Handed Maces, 162 = Unarmed,
  173 = Daggers, 229 = Polearms
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
  AND `skill` IN (54, 95, 136, 160, 162, 173, 229);

INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`)
VALUES (@CHARACTER, 54, @VALUE, @MAX),
       (@CHARACTER, 95, @VALUE, @MAX),
       (@CHARACTER, 136, @VALUE, @MAX),
       (@CHARACTER, 160, @VALUE, @MAX),
       (@CHARACTER, 162, @VALUE, @MAX),
       (@CHARACTER, 173, @VALUE, @MAX),
       (@CHARACTER, 229, @VALUE, @MAX);
