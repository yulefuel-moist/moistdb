WITH cte_inactive AS (
    SELECT character_id, character_name
    FROM Characters
    WHERE character_name IN (
        'Alagar',
        'Dumbdumb',
        'Boomer',
        'Gordman',
        'Divine',
        'Divinê',
        'Wader',
        'Vancleef',
        'Fjordur',
        'Tinkiton',
        'Bili',
        'Rahkawarr',
        'Baffoneger',
        'Fizzlecrank',
        'Holychad',
        'Stridaren',
        'Nl',
        'Holdhur',
        'Pingvinstång',
        'Niedrig',
        'Turaleon',
        'Deliciouss',
        'Brotherofwar',
        'Tanky',
        'Poorpower',
        'Gwilliam',
        'Thanx',
        'Nandor',
        'Drimpen',
        'Minetkomat',
        'Rokit',
        'Pälsarn',
        'Shelf',
        'Mf',
        'Hoiga'
    )
    UNION
    SELECT * FROM InactiveCharacters
)
INSERT OR IGNORE INTO InactiveCharacters
SELECT * FROM cte_inactive;