% BattleGenerator
% Phillip Ngo

clear, clc, clf

%% Your Character's Class+Stats
% Player beings their colosseum entry by inputing their name and choosing their
% class OR loading a saved character file
gsave = input('New Character(0) or Load Character(1)?: ', 's');
while (strcmp(gsave, '0') == 0 && strcmp(gsave, '1') == 0)
    clc
    gsave = input('New Character(0) or Load Character(1)?: ', 's');
end

    gsave = str2double(gsave);
    
if gsave == 1
    loadChar = input('Enter Character Name: ', 's');
    load(loadChar)
    cHp = maxHp;
    cMp = maxMp;
    cAtk = maxAtk;
    cDef = maxDef;
    cSpd = maxSpd;
    cMgc = maxMgc;
end

clc

if (gsave == 0)
charName = input('What is your adventurers name? ', 's');
zClass = 0;
while strcmp(zClass,'1')==0 && strcmp(zClass,'2')==0 && strcmp(zClass, '3')==0
    zClass=input('Are you an Archer(1), Mage(2), or Fighter(3)? ', 's');
end
switch zClass
    case '1' % Archer Stats
        charString = 'Archer';
        cAtk = 5;
        cDef = 4;
        cSpd = 6;
        cMgc = 1;
        cHp = 150;
        cMp = 100;
    case '2' % Mage Stats
        charString = 'Mage';
        cAtk = 2;
        cDef = 4;
        cSpd = 4;
        cMgc = 7;
        cHp = 150;
        cMp = 200;
        mSword = 0;
    case '3' % Fighter Stats
        charString = 'Fighter';
        cAtk = 7;
        cDef = 6;
        cSpd = 3;
        cMgc = 0;
        cHp = 200;
        cMp = 100;
    otherwise
        disp('error in defining character''s class');
end
prestige = 0;
charHome = input('Where are you from? ', 's');
fprintf('Welcome to The Colosseum %s, mightiest %s of %s. \n', charName, charString, charHome);

if strcmp(charName,'Admin15') == 1 % Admin code for certain name
    disp('Admin, all stats have been set to 15.')
    cAtk = 15;
    cDef = 15;
    cSpd = 15;
    cMgc = 15;
    cHp = 500;
    cMp = 500;
end
if strcmp(charName,'AdminDummy') == 1 % Code for Combat Dummy
        disp('Admin, opponents are now dummies.')
end

disp('====================================================================================');
disp('Click any button to continue.');
pause
clc

%% STORYLINE/BUYING ITEMS
% The plot of the story begins here. The user chooses their equipment.

disp('You enter the armory, choose your equipment wisely');
disp('====================================================================================');
disp('Click any button to continue.');
pause
clc
disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)]) 
disp('====================================================================================');
disp('Armor')
disp('====================================================================================');
disp('1. Light Robes')
disp('      Def +1 Mgc +1')
disp('2. Leather Armor')
disp('      Def +1 Spd +1')
disp('3. Chainmail')
disp('      Def +1 Atk +1')
disp('4. Iron Armor')
disp('      Def +2')
disp('====================================================================================');
armor='_';
while strcmp(armor,'1')==0 && strcmp(armor,'2')==0 && strcmp(armor,'3')==0 && strcmp(armor,'4')==0
    armor=input('Which armor would you like? 1, 2 ,3 or 4? ','s');
end
switch armor
    case '1'
        cDef = cDef + 1;
        cMgc = cMgc + 1;
    case '2'
        cSpd = cSpd + 1;
        cDef = cDef + 1;
    case '3'
        cDef = cDef + 1;
        cAtk = cAtk + 1;
    case '4'
        cDef = cDef + 2;
    otherwise
        disp('error picking armor')
end
clc
disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)]) 
disp('====================================================================================');
disp('Helmet')
disp('====================================================================================');
disp('1. Great Helm')
disp('      Def +1 Atk +1')
disp('2. Leather Cap')
disp('      Def +1 Spd +1')
disp('3. Cotton Hood')
disp('      Def +1 Mgc +1')
disp('4. Iron Helmet')
disp('      Def +2')
disp('====================================================================================');
helmet='_';
while strcmp(helmet,'1')==0 && strcmp(helmet,'2')==0 && strcmp(helmet,'3')==0 && strcmp(helmet,'4')==0
    helmet=input('Which helmet would you like, 1, 2 ,3 or 4? ','s');
end
switch helmet
    case '1'
        cDef = cDef + 1;
        cAtk = cAtk + 1;
    case '2'
        cSpd = cSpd + 1;
        cDef = cDef + 1;
    case '3'
        cDef = cDef + 1;
        cMgc = cMgc + 1;
    case '4'
        cDef = cDef + 2;
    otherwise
        disp('error picking helmet')
end
clc
disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)]) 
disp('====================================================================================');
disp('Forearm Guards')
disp('====================================================================================');
disp('1. Bladed Guards')
disp('      Atk +2')
disp('2. Leather Guards')
disp('      Def +1 Spd +1')
disp('3. Plated Guards')
disp('      Def +2')
disp('4. Enchanted Guards')
disp('      Mgc +2')
disp('====================================================================================');
guard='_';
while strcmp(guard,'1')==0 && strcmp(guard,'2')==0 && strcmp(guard,'3')==0 && strcmp(guard,'4')==0
    guard=input('Which forearm guard would you like, 1, 2, 3, or 4? ','s');
end
switch guard
    case '1'
        cAtk = cAtk + 2;
    case '2';
        cSpd = cSpd + 1;
        cDef = cDef + 1;
    case '3'
        cDef = cDef + 2;
    case '4'
        cMgc = cMgc + 2;
    otherwise
        disp('error picking forearm guards')
end
clc
switch zClass
    case '2'
        disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)]) 
        disp('====================================================================================');
        disp('Spellbook')
        disp('====================================================================================');
        disp('1. Defense Spell')
        disp('      Def +1 Mgc +1')
        disp('2. Balanced Spell')
        disp('      Spd +1 Mgc +1')
        disp('3. Attack Spell')
        disp('      Mgc +2')
        disp('====================================================================================');
        weapon='_';
        while strcmp(weapon,'1')==0 && strcmp(weapon,'2')==0 && strcmp(weapon,'3')==0
            weapon=input('Which spellbook would you like?,1, 2, or 3? ','s');
        end
        switch weapon
            case '1'
                cDef = cDef + 1;
                cMgc = cMgc + 1;
            case '2'
                cSpd = cSpd + 1;
                cMgc = cMgc + 1;
            case '3'
                cMgc = cMgc + 2;
            otherwise
                disp('error picking spell book')
        end
    case '1'
        disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)]) 
        disp('====================================================================================');
        disp('Bow and Arrow')
        disp('====================================================================================');
        disp('1. Short Bow')
        disp('      Spd +2')
        disp('2. Long Bow')
        disp('      Spd +1 Atk +1')
        disp('3. Crossbow')
        disp('      Atk +2')
        disp('====================================================================================');
        weapon='_';
        while strcmpi(weapon,'1')==0 && strcmpi(weapon,'2')==0 && strcmpi(weapon,'3')==0
            weapon=input('Which bow would you like, 1, 2, or 3? ','s');
        end
        switch weapon
            case '1'
                cSpd = cSpd + 2;
            case '2'
                cSpd = cSpd + 1;
                cAtk = cAtk + 1;
            case '3'
                cAtk = cAtk + 2;
            otherwise
                disp('error picking bow')
        end
    case '3'
        disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)]) 
        disp('====================================================================================');
        disp('Sword')
        disp('====================================================================================');
        disp('1. Short Sword')
        disp('      Spd +2')
        disp('2. Long Sword')
        disp('      Spd +1 Atk +1')
        disp('3. Broad Sword')
        disp('      Atk +2')
        disp('====================================================================================');
        weapon='_';
        while strcmp(weapon,'1')==0 && strcmp(weapon,'2')==0 && strcmp(weapon,'3')==0
            weapon=input('Which sword would you like, 1, 2, or 3? ','s');
        end
        switch weapon
            case '1'
                cSpd = cSpd + 2;
            case '2'
                cSpd = cSpd + 1;
                cAtk = cAtk + 1;
            case '3'
                cAtk = cAtk + 2;
            otherwise
                disp('error picking sword')
        end
    otherwise
        disp('error in class weapon selection switch')
end
clc
disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)])
disp('====================================================================================');
disp('Stat Potion')
disp('====================================================================================');
disp('1. Potion of the Cougar')
disp('      Spd +1')
disp('2. Potion of the Porcupine')
disp('      Def +1')
disp('3. Potion of the Shark')
disp('      Atk +1')
disp('4. Potion of the Chameleon')
disp('      Mgc +1')
disp('5. Potion of the Bear')
disp('      HP +50')
disp('6. Potion of the Turtle')
disp('      MP +50')
disp('====================================================================================');
statpot='_';
while strcmp(statpot,'1')==0 && strcmp(statpot,'2')==0 && strcmp(statpot,'3')==0 && strcmp(statpot,'4')==0 && strcmp(statpot,'5')==0 && strcmp(statpot,'6')==0
    statpot=input('Which stat boost would you like, 1, 2, 3, 4, 5, or 6? ','s');
end
switch statpot
    case '1'
        cSpd = cSpd + 1;
    case '2';
        cDef = cDef + 1;
    case '3'
        cAtk = cAtk + 1;
    case '4'
        cMgc = cMgc + 1;
    case '5'
        cHp = cHp + 50;
    case '6'
        cMp = cMp + 50;
    otherwise
        disp('error picking stat potion')
end
clc
disp('You have been given 3 HP potions and 3 MP potions for your fights!')
potionHp = 3;
potionMp = 3;
disp('====================================================================================');
disp('Click any button to continue.');
    %statsf = figure('name','Your Stats');
    y = [cMgc cSpd cDef cAtk];
    barh(y);
    title('Your Stats');
    xlim([0 15]);
    set(gca, 'YTickLabel', {'Magic', 'Speed', 'Defense', 'Attack'})
    ax = get(gca);
    b = ax.Children; 
    set(gca, 'box' , 'off');
pause
clc
disp('====================================================================================');
disp('Welcome to The Colosseum.');
disp('====================================================================================');
pause(2)
clc
disp('====================================================================================');
disp('In The Colosseum, you will have the opportunity to fight many opponents.')
disp(' ')
pause(2)
disp('You can stop fighting anytime to receive rewards based on how many you have defeated,')
disp(' ')
pause(3)
disp('Or you can continue to fight to get to the top!')
disp(' ')
pause(2)
disp('Unless you die first...');
disp('====================================================================================');
disp('Click any button to continue.');
pause
clc
end

%% LOADED CHARACTER
% Gives custom welcome back message and extra stat boost to returning
% winner
if gsave == 1 && numDefeat == oppNum
    disp('====================================================================================');
    disp(['Welcome back Champion ' charName '!']);
    disp('====================================================================================');
    pause(2)
    clc
    disp('Please choose another stat boost as a boon for being Champion!');
    disp('====================================================================================');
    disp(['Your stats: ' 'Atk ' num2str(cAtk) ' Def ' num2str(cDef) ' Spd ' num2str(cSpd) ' Mgc ' num2str(cMgc) '    HP ' num2str(cHp) ' MP ' num2str(cMp)])
    disp('====================================================================================');
    disp('Stat Potion')
    disp('====================================================================================');
    disp('1. Potion of the Cougar')
    disp('      Spd +1')
    disp('2. Potion of the Porcupine')
    disp('      Def +1')
    disp('3. Potion of the Shark')
    disp('      Atk +1')
    disp('4. Potion of the Chameleon')
    disp('      Mgc +1')
    disp('5. Potion of the Bear')
    disp('      HP +25')
    disp('6. Potion of the Turtle')
    disp('      MP +25')
    disp('====================================================================================');
    statpot='_';
    while strcmp(statpot,'1')==0 && strcmp(statpot,'2')==0 && strcmp(statpot,'3')==0 && strcmp(statpot,'4')==0 && strcmp(statpot,'5')==0 && strcmp(statpot,'6')==0
        statpot=input('Which stat boost would you like, 1, 2, 3, 4, 5, or 6? ','s');
    end
    switch statpot
        case '1'
            cSpd = cSpd + 1;
        case '2';
            cDef = cDef + 1;
        case '3'
            cAtk = cAtk + 1;
        case '4'
            cMgc = cMgc + 1;
        case '5'
            cHp = cHp + 25;
        case '6'
            cMp = cMp + 25;
        otherwise
            disp('error picking stat potion')
    end
    prestige = prestige + 1;
    clc
end
if gsave == 1 && numDefeat < oppNum
disp('====================================================================================');
disp(['Welcome back ' charName '!']);
disp('Looking to try again?');
disp('====================================================================================');
pause(2)
clc
end
if gsave == 1
    y = [cMgc cSpd cDef cAtk];
    barh(y);
    title('Your Stats');
    xlim([0 15]);
    set(gca, 'YTickLabel', {'Magic', 'Speed', 'Defense', 'Attack'})
    ax = get(gca);
    b = ax.Children; 
    set(gca, 'box' , 'off');
    disp('You have been given 3 HP potions and 3 MP potions for your fights!')
    potionHp = 3;
    potionMp = 3;
    disp('====================================================================================');
    disp('Click any button to continue.');
    pause
    clc
    disp('Good Luck!');
    pause(1)
    disp('The Tournament starts in...');
    pause(1)
    disp('3');
    pause(1)
    disp('2');
    pause(1)
    disp('1');
    pause(1)
    clc
end

%% Opponent Generator + Battles

% Predefined variables that starts the loop
loot = 0;
numDefeat = 0;
zcommand = '';
battleEvent = '1';
maxHp = cHp;
maxMp = cMp;
maxAtk = cAtk;
maxDef = cDef;
maxSpd = cSpd;
maxMgc = cMgc;
oppNum = 10 + round((prestige-.001)/2);
%battlef = figure('name','Battle');

% Repeats below code up to 10 times or until the player runs/dies
while numDefeat <= oppNum+1 && strcmp(zcommand,'4')==0 && cHp > 0 && strcmp(battleEvent,'1') == 1
    
%% Opponent's Class+Stats
% Defines your opponents class
    
    oppClass = floor((3-1+1)*rand+1);
    
    switch oppClass
        case 1 % Archer
            eClass = 'Archer';
            eAtk = 4;
            eDef = 2;
            eSpd = 6;
            eMgc = 1;
            eHp = 120;
            eMp = 100;
            potionHp2 = 1;
            loot = loot + 1;
        case 2 % Mage
            eClass = 'Mage';
            eAtk = 2;
            eDef = 2;
            eSpd = 3;
            eMgc = 6;
            eHp = 120;
            eMp = 200;
            potionHp2 = 1;
            loot = loot + 1;
        case 3 % Fighter
            eClass = 'Fighter';
            eAtk = 6;
            eDef = 3;
            eSpd = 3;
            eMgc = 1;
            eHp = 150;
            eMp = 100;
            potionHp2 = 1;
            loot = loot + 1;
        otherwise
            disp('error in defining opponents class');
    end
    
%% Opponent Type
% Sets a random trait to the opponent. The trait effects opponent stats.
% Example: 'Strong' trait gives opponent +2 atk/mgc
    
    oppType = floor((25-1+1)*rand+1);
    
    switch oppType
        case 1
            eAttribute = 'Weak';
            if oppClass ~= 2
                eAtk = eAtk - 2;
            else
                eMgc = eMgc - 2;
            end
        case 2
            eAttribute = 'Strong';
            if oppClass ~= 2
                eAtk = eAtk + 2;
            else
                eMgc = eMgc + 2;
            end
        case 3
            eAttribute = 'Clumsy';
            eSpd = eSpd - 2;
        case 4
            eAttribute = 'Fast';
            eSpd = eSpd + 2;
        case 5
            eAttribute = 'Buff';
            eHp = eHp + 50;
        case 6
            eAttribute = 'Frail';
            eHp = eHp - 30;
            if (oppClass == 2)
                eMp = eMp - 50;
            else
                eMp = eMp - 25;
            end
        case 7
            eAttribute = 'Armored';
            eDef = eDef +2;
        case 8
            eAttribute = 'Naked';
            eDef = 0;
            eSpd = eSpd + 2;
        case 9
            eAttribute = 'Nimble';
            eAtk = eAtk + 1;
            eSpd = eSpd + 1;
        case 10
            eAttribute = 'Lightly Armored';
            eDef = eDef + 1;
            eSpd = eSpd + 1;
        case 11
            eAttribute = 'Sickly';
            eAtk = eAtk - 1;
            eDef = eDef - 1;
            eSpd = eSpd - 1;
            eHp = eHp - 30;
            if (oppClass == 2)
                eMp = eMp - 50;
            else
                eMp = eMp - 25;
            end
        case 12
            eAttribute = 'Psycho';
            eDef = eDef - 2;
            eSpd = eSpd + 1;
            if oppClass == 2
                eMgc = eMgc + 2;
            else
                eAtk = eAtk + 2;
            end
        case 13
            eAttribute = 'Rich';
            eSpd = eSpd + 1;
            loot = loot + 2;
            if oppClass == 2
                eMgc = eMgc + 1;
            else
                eAtk = eAtk + 1;
            end
        case 14
            eAttribute = 'Poor';
            eDef = eDef - 1;
            loot = loot - 1;
            eHp = eHp - 20;
        case 15
            eAttribute = 'Invincible';
            eAtk = eAtk*2;
            eDef = eDef*3;
            eSpd = eSpd*2;
            eHp = eHp*2;
            loot = loot+4;
            eMgc = eMgc*2;
            eMp = eMp*2;
        case 16
            eAttribute = 'Paranoid';
            eDef = eDef + 1;
            eSpd = eSpd + 2;
            eAtk = eAtk - 2;
            eMgc = eMgc - 2;
        case 17
            eAttribute = 'Ugly';
            eHp = eHp + 50;
            eDef = eDef + 2;
            eSpd = eSpd - 1;
            eAtk = eAtk - 1;
        case 18
            eAttribute = 'Normal';
        case 19
            eAttribute = 'Apprentice';
            eSpd = eSpd - 1;
            eAtk = eAtk - 1;
            eMgc = eMgc - 1;
            eDef = eDef - 1;
            eHp = eHp - 20;
            eMp = eMp - 20;
        case 20
            eAttribute = 'Master';
            eSpd = eSpd + 1;
            eAtk = eAtk + 1;
            eMgc = eMgc + 1;
            eDef = eDef + 1;
            eHp = eHp + 20;
            eMp = eMp + 20;
        case 21
            eAttribute = 'Drunk';
            eSpd = eSpd - 2;
            eAtk = eAtk + 2;
            eDef = eDef - 1;
            eMgc = eMgc + 2;
        case 22
            eAttribute = 'Cowardly';
            eDef = eDef + 2;
            if oppClass ~= 2
                eAtk = eAtk - 2;
            else
                eMgc = eMgc - 2;
            end
        case 23
            eAttribute = 'Wise';
            eMgc = eMgc + 3;
            eDef = eDef - 1;
        case 24
            eAttribute = 'Giant';
            eHp = eHp*2;
            eSpd = eSpd - 3;
            eMp = eMp + 50;
            eAtk = eAtk + 2;
        case 25
            eAttribute = 'Mini';
            eHp = eHp - 50;
            eSpd = eSpd*2;
            eAtk = eAtk + 2;
            eMgc = eMgc + 2;
            eDef = eDef - 2;
            eMp = eMp + 25;
        otherwise
            disp('error in choosing opponent type');
    end
    
%% Display Opponent
% Displays who and what class and type Your next opponent is
    if strcmp(charName,'AdminDummy') == 1 % Code for Combat Dummy
        eAttribute = 'Dummy';
    end

    if (eAttribute(1) == 'A' || eAttribute(1) == 'E' || eAttribute(1) == 'I' || eAttribute(1) == 'O' || eAttribute(1) == 'U' || eAttribute(1) == 'y')
        if numDefeat == 0
            disp(['Your first opponent is an ', eAttribute, ' ', eClass, '!']);
        else
            disp(['Your next opponent is an ', eAttribute, ' ', eClass, '!']);
        end
    else
        if numDefeat == 0
            disp(['Your first opponent is a ', eAttribute, ' ', eClass, '!']);
        else
            disp(['Your next opponent is a ', eAttribute, ' ', eClass, '!']);
        end
    end
    
%% Opponent Chat
% Opponent's random intro line
    
    oppChat = floor((3-1+1)*rand+1);
    switch oppClass
        case 1
            switch oppChat
                case 1
                    disp([eAttribute,' ', eClass, ' points at you and yells, "Prepare to die!"'])
                case 2
                    disp([eAttribute,' ', eClass, ' asks you, "Would you like an arrow in your knee?"']);
                case 3
                    disp([eAttribute,' ', eClass, ' shakes his quiver saying, "My arrows quiver for your heart"']);
                otherwise
                    disp('error in archer chat');
            end
        case 2
            switch oppChat
                case 1
                    disp([eAttribute,' ', eClass, ' points at you and yells, "Prepare to die!"']);
                case 2
                    disp([eAttribute,' ', eClass, ' asks you, "Would you like death by fire, ice, or lightning?"']);
                case 3
                    disp([eAttribute,' ', eClass, ' asks you, "Wanna see what I learned at Hogwarts?"']);
                otherwise
                    disp('error in mage chat');
            end
        case 3
            switch oppChat
                case 1
                    disp([eAttribute,' ', eClass, ' points at you and yells, "Prepare to die!"']);
                case 2
                    disp([eAttribute,' ', eClass, ' screams, "I AM GONNA CHOP YOU UP!"']);
                case 3
                    disp([eAttribute,' ', eClass, ' screams, "By the power of Greyskull, I HAVE THE POWER!"']);
                otherwise
                    disp('error in fighter chat');
            end
    end

%% Battle
% Contains code for the opponent attacking you if speed is lower or higher
% as well as the user's choices for attacking/using items and spells.

    battleEvent = '1';
    spell = '';
    item = '';
    zcommand = '';
    stanceFire = 0;
    stanceWind = 0;
    stanceEarth = 0;
    
    disp('====================================================================================');
    disp('BATTLE BEGINS');
    
    while (eHp > 0 && cHp > 0 && battleEvent == '1')
        if strcmp(charName,'AdminDummy') == 1 % Code for Combat Dummy
            eAtk = 0;
            eDef = 3;
            eSpd = 0;
            eMgc = 0;
            eHp = 10000;
            eMp = 0;
            cMp = 10000;
            cDef = 20;
        end
        y = [eMp, eHp ; cMp cHp];
        barh(y, 1);
        title(['Battling ' eAttribute ' ' eClass])
        xlim([0 250]);
        set(gca, 'YTickLabel', {[eClass ' HP/MP'], 'Your HP/MP'})
        ax = get(gca);
        b = ax.Children;
        set(b(1),'FaceColor',[1 0 0]);
        set(b(2),'FaceColor',[0 0 1]);  
        set(gca, 'box' , 'off');
        
    % Opponent battle if speed is greater
        if (eHp > 0 && eSpd > cSpd && cHp > 0 && strcmp(item, '0') == 0 && strcmp(spell, '0') == 0 && battleEvent == '1')
            
            crit = floor((10-1+1)*rand+1);
            
            disp('====================================================================================');
            disp('Your opponent''s speed is faster! He attacks first!');
            eBattle = floor((8-1+1)*rand+1);
            switch oppClass
                case 1 % Archer Opponent
                    if eHp > 35 || potionHp2 == 0
                        if (eBattle == 1 && eMp >= 25)
                            eMp = eMp - 25;
                            eSpd = eSpd + 2;
                            disp('Your opponent uses wind stance!');
                            disp('Wind enwraps your opponent.');
                            disp('Their speed increases!.');
                        else if (eBattle == 2 || eBattle == 3) && eMp >= 25
                                eMp = eMp - 25;
                                if (crit ~= 10)
                                    netshotDmg = randi([10, 15]) + eSpd*3 + eAtk - (cDef + 4);
                                else if (crit == 10)
                                        netshotDmg = (randi([10, 15]) + eSpd*3 + eAtk - (cDef + 4))*2;
                                    end
                                end
                                if netshotDmg < 0
                                    netshotDmg = 0;
                                end
                                cHp = cHp - netshotDmg;
                                cSpd = cSpd - 1;
                                disp('Your opponent uses Net Shot!');
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(netshotDmg), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(netshotDmg), ' damage.']);
                                    end
                                end
                                disp('Your speed decreases!');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((12-1+1)*rand+1);
                                if (zChat2 == 1 || zChat2 == 2 || zChat2 == 3 || zChat2 == 4 || zChat2 == 5 || zChat2 == 6 || zChat2 == 11 || zChat2 == 12)
                                    disp('The opponent shoots you with an arrow.');
                                else if (zChat2 == 7 || zChat2 == 8)
                                        disp('Your opponent smacks you with their bow.');
                                    else if (zChat2 == 9 || zChat2 == 10)
                                            disp('The opponent stabs you with an arrow.');
                                        end
                                    end
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    else if eHp <= 35 && potionHp2 == 1
                            eLowHp = floor((4-1+1)*rand+1);
                            if eLowHp == 1
                                potionHp2 = potionHp2 - 1;
                                eHp = eHp + 75;
                                disp('Your opponent drinks an HP potion.');
                                disp('It heals 75 HP.');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((12-1+1)*rand+1);
                                if (zChat2 == 1 || zChat2 == 2 || zChat2 == 3 || zChat2 == 4 || zChat2 == 5 || zChat2 == 6 || zChat2 == 11 || zChat2 == 12)
                                    disp('The opponent shoots you with an arrow.');
                                else if (zChat2 == 7 || zChat2 == 8)
                                        disp('Your opponent smacks you with their bow.');
                                    else if (zChat2 == 9 || zChat2 == 10)
                                            disp('The opponent stabs you with an arrow.');
                                        end
                                    end
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    end
                case 2 % Mage Opponent
                    if eHp > 35 || potionHp2 == 0
                        if (eBattle == 5 || eBattle == 6 || eBattle == 7 || eBattle == 8) && eMp >= 25
                            eMp = eMp - 25;
                            if crit ~= 10
                                fireballDmg2 = randi([10,15]) + ((eMgc*4) - (cDef + 4));
                            else
                                fireballDmg2 = round((randi([10,15]) + ((eMgc*4) - (cDef + 4)))*1.5);
                            end
                            if fireballDmg2 < 0
                                fireballDmg2 = 0;
                            end
                            cHp = cHp - fireballDmg2;
                            disp('Your opponent conjures a giant ball of fire. They launch it at you.');
                            if crit ~= 10
                                disp(['It deals ', num2str(fireballDmg2),' damage.']);
                            else
                                disp(['A lucky hit! It deals ', num2str(fireballDmg2), ' damage.']);
                            end
                        else if eBattle == 1 && eMp >= 50
                                eMp = eMp - 25;
                                eDef = eDef + 1;
                                disp('Your opponent uses Mystical Cloak!');
                                disp('Their defense increases!');
                            else if (eBattle == 2 || eBattle == 3 || eBattle == 4) && eMp >= 25
                                    eMp = eMp - 25;
                                    if crit ~= 10
                                        iceDmg = randi([5,10]) + eSpd*2 + ((eMgc*4) - (cDef + 4));
                                    else
                                        iceDmg = round((randi([5,10]) + eSpd*2 + ((eMgc*4) - (cDef + 4)))*1.5);
                                    end
                                    if iceDmg < 0
                                        iceDmg = 0;
                                    end
                                    cHp = cHp - iceDmg;
                                    disp('Your opponent uses glacial spike!');
                                    disp('A large ice stalagmite forms within their hands! They launch it at you.');
                                    if crit ~= 10
                                        disp(['It deals ', num2str(iceDmg),' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ', num2str(iceDmg), ' damage.']);
                                    end
                                else
                                    disp('The enemy is out of MP!');
                                    if (crit ~= 10)
                                        zdmg2 = randi([5,10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                    else if (crit == 10)
                                            zdmg2 =  (randi([5, 10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                        end
                                    end
                                    if zdmg2 < 0
                                        zdmg2 = 0;
                                    end
                                    cHp = cHp - zdmg2;
                                    disp('Your opponent smacks you.');
                                    if (crit ~= 10)
                                        disp(['It deals ', num2str(zdmg2), ' damage.']);
                                    else if (crit == 10)
                                            disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                        end
                                    end
                                end
                            end
                        end
                    else if eHp <= 35 && potionHp2 == 1
                            eLowHp = floor((4-1+1)*rand+1);
                            if eLowHp == 1
                                potionHp2 = potionHp2 - 1;
                                eHp = eHp + 75;
                                disp('Your opponent drinks an HP potion.');
                                disp('It heals 75 HP.');
                            else
                                if (eMp >= 25)
                                    eMp = eMp - 25;
                                    if crit ~= 10
                                        fireballDmg2 = randi([10,15]) + ((eMgc*4) - (cDef + 4));
                                    else
                                        fireballDmg2 = round((randi([10,15]) + ((eMgc*4) - (cDef + 4)))*1.5);
                                    end
                                    if fireballDmg2 < 0
                                        fireballDmg2 = 0;
                                    end
                                    cHp = cHp - fireballDmg2;
                                    disp('Your opponent conjures a giant ball of fire. They launch it at you.');
                                    if crit ~= 10
                                        disp(['It deals ', num2str(fireballDmg2),' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ', num2str(fireballDmg2), ' damage.']);
                                    end
                                else if (eMp < 25)
                                        disp('The enemy is out of MP!');
                                        if (crit ~= 10)
                                            zdmg2 = randi([5,10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                        else if (crit == 10)
                                                zdmg2 =  (randi([5, 10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                            end
                                        end
                                        if zdmg2 < 0
                                            zdmg2 = 0;
                                        end
                                        cHp = cHp - zdmg2;
                                        disp('Your opponent smacks you.');
                                        if (crit ~= 10)
                                            disp(['It deals ', num2str(zdmg2), ' damage.']);
                                        else if (crit == 10)
                                                disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                case 3 % Fighter Opponent
                    if eHp > 35 || potionHp2 == 0
                        if (eBattle == 1 || eBattle == 3) && eMp >= 50
                            eMp = eMp - 50;
                            if crit ~= 10
                                powerburstDmg = randi([10,15]) + eAtk*3 + eSpd*3 - (cDef + 4);
                            else
                                powerburstDmg = (randi([10,15]) + eAtk*3 + eSpd*3 - (cDef + 4))*2;
                            end
                            if powerburstDmg < 0
                                powerburstDmg = 0;
                            end
                            cHp = cHp - powerburstDmg;
                            disp('Your opponent uses Power Burst!');
                            disp('They strike you three times in quick succession!');
                            if crit ~= 10
                                disp(['It deals ', num2str(powerburstDmg),' damage.']);
                            else
                                disp(['A lucky hit! It deals ', num2str(powerburstDmg), ' damage.']);
                            end
                        else if (eBattle == 2 ) && eMp >= 25
                                eMp = eMp - 25;
                                cAtk = cAtk + 2;
                                disp('Your opponent uses Build Up!');
                                disp('They grow visibly bigger.');
                                disp('Their attack increases!');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((3-1+1)*rand+1);
                                switch zChat2
                                    case 1
                                        disp('Your opponent jabs at you.');
                                    case 2
                                        disp('Your opponent lunges at you.');
                                    case 3
                                        disp('Your opponent slashes at you.');
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    else if eHp <= 35 && potionHp2 == 1
                            eLowHp = floor((4-1+1)*rand+1);
                            if eLowHp == 1
                                potionHp2 = potionHp2 - 1;
                                eHp = eHp + 75;
                                disp('Your opponent drinks an HP potion.');
                                disp('It heals 75 HP.');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((3-1+1)*rand+1);
                                switch zChat2
                                    case 1
                                        disp('Your opponent jabs at you.');
                                    case 2
                                        disp('Your opponent lunges at you.');
                                    case 3
                                        disp('Your opponent slashes at you.');
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    end
            end
            y = [eMp, eHp ; cMp cHp];
            barh(y, 1);
            title(['Battling ' eAttribute ' ' eClass])
            xlim([0 250]);
            set(gca, 'YTickLabel', {[eClass ' HP/MP'], 'Your HP/MP'})
            ax = get(gca);
            b = ax.Children;
            set(b(1),'FaceColor',[1 0 0]);
            set(b(2),'FaceColor',[0 0 1]);
            set(gca, 'box' , 'off');
            if (cHp <= 0) % If user dies, displays message and ends loop
                battleEvent = '0';
                mSword = 0;
                if (stanceWind == 1 || stanceEarth == 1 || stanceFire == 1)
                    if stanceWind == 1
                        cSpd = cSpd - 4;
                        cAtk = cAtk + 2;
                    else if stanceEarth == 1
                            cDef = cDef - 4;
                            cSpd = cSpd + 2;
                        else if stanceFire == 1
                                cAtk = cAtk - 4;
                                cDef = cDef + 2;
                            end
                        end
                    end
                    stanceWind = 0;
                    stanceEarth = 0;
                    stanceFire = 0;
                end
                disp('====================================================================================');
                disp('GAME OVER. YOU LOSE!');
                disp(['You have been defeated by ' , eAttribute, ' ', eClass, '!']);
                disp('====================================================================================');
                disp(['You were able to defeat ', num2str(numDefeat), ' opponents.']);
                disp('====================================================================================');
                disp('Click any button to continue.');
                if gsave == 1
                    delete([charName '.mat'])
                end
                pause
                clc
                clf
            end
        end
        
% User Battle
        
        if cHp > 0
            
            % resets spell/item/critical variables each move 
            crit = floor((10-1+1)*rand+1);
            spell = '';
            item = '';
            
        % Display Battle Menu
            disp('====================================================================================');
            disp(['Battling ', eAttribute, ' ', eClass]);
            disp('====================================================================================');
            disp(['Your HP/MP: ', num2str(cHp), '/', num2str(cMp), ' || ', 'Enemy HP/MP: ', num2str(eHp), '/', num2str(eMp)]);
            disp('1. Attack');
            disp('2. Spells');
            disp('3. Item');
            disp('4. Run');
            while strcmp(zcommand,'1')==0 && strcmp(zcommand,'2')==0 && strcmp(zcommand,'3')==0 && strcmp(zcommand,'4')==0 && strcmp(zcommand,'keyboard')==0
                zcommand = input('Enter move (1, 2, 3, or 4): ', 's');
            end
            disp('====================================================================================');
        end
        
        switch zClass
        % Archer Battle
            case '1'
                switch zcommand
                    case '1' % Attack
                        if (crit ~= 10)
                            zdmg = randi([10, 15]) + ((cAtk*2) + (cSpd*2) - (eDef+3));
                        else if (crit == 10)
                                zdmg =  (randi([10, 15]) + ((cAtk*2) + (cSpd*2) - (eDef+3)))*2;
                            end
                        end
                        eHp = eHp - zdmg;
                        zChat = floor((12-1+1)*rand+1);
                        if (zChat == 1 || zChat == 2 || zChat == 3 || zChat == 4 || zChat == 5 || zChat == 6 || zChat == 11 || zChat == 12)
                            disp('You shoot at your opponent.');
                        else if (zChat == 7 || zChat == 8)
                                disp('You smack your opponent with your bow.');
                            else if (zChat == 9 || zChat == 10)
                                    disp('You stab your opponent with an arrow.');
                                end
                            end
                        end
                        if (crit ~= 10)
                            disp(['It deals ', num2str(zdmg), ' damage.']);
                        else if (crit == 10)
                                disp(['A lucky hit! It deals ', num2str(zdmg), ' damage.']);
                            end
                        end
                        spell = '';
                        item = '';
                        zcommand = '';
                    case '2' % Spell
                        disp('SPELLS');
                        disp('====================================================================================');
                        disp('1. Penetrating Arrow (25 MP)');
                        disp('2. Double Shot (25 MP)');
                        disp('3. Haste (25 MP)');
                        disp('4. Hamstring Shot (25 MP)');
                        while strcmp(spell,'1')==0 && strcmp(spell,'2')==0 && strcmp(spell,'3')==0 && strcmp(spell,'4')==0 && strcmp(spell,'0')==0
                            spell = input('Enter move (1, 2, 3, 4, or 0 to go back): ', 's');
                        end
                        disp('====================================================================================');
                        switch spell
                            case '1'
                                if (cMp >= 25)
                                    cMp = cMp - 25;
                                    if crit ~= 10
                                        penetratingDmg = randi([9,14]) + cAtk*4 +  cSpd + cMgc*7 - eDef+3;
                                    else
                                        penetratingDmg = (randi([9,14]) + cAtk*4 +  cSpd + cMgc*7 - eDef+3)*2;
                                    end
                                    eHp = eHp - penetratingDmg;
                                    eDef = eDef - 1;
                                    disp('Your arrow shears through the opponents armor');
                                    if crit ~= 10
                                        disp(['You deal ', num2str(penetratingDmg), ' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ',  num2str(penetratingDmg), ' damage.']);
                                    end
                                    disp('Your opponent''s defense decreases!');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 25)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '2'
                                if (cMp >= 25)
                                    cMp = cMp - 25;
                                    if crit ~= 10
                                        doubleDmg = round(randi([10, 15]) + ((cAtk*2) + (cSpd*2) - (eDef+3))*2);
                                    else
                                        doubleDmg = round(randi([10, 15]) + ((cAtk*2) + (cSpd*2) - (eDef+3))*4);
                                    end
                                    eHp = eHp - doubleDmg;
                                    disp('You shoot two arrows!');
                                    if crit ~= 10
                                        disp(['It deals ', num2str(doubleDmg), ' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ',  num2str(doubleDmg), ' damage.']);
                                    end
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 25)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '3'
                                if cSpd > maxSpd + 6
                                    disp('You already have the maximum speed!');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                else if (cMp >= 25)
                                    cMp = cMp - 25;
                                    cSpd = cSpd + 2;
                                    disp('Energy fills your body.');
                                    disp('Your speed increases.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 25)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                    end
                                end
                            case '4'
                                if (cMp >= 25)
                                    cMp = cMp - 25;
                                    if crit ~= 10
                                        hamstringDmg = randi([8,13]) + cAtk +  cSpd*4 + cMgc*7 - eDef+3;
                                    else
                                        hamstringDmg = (randi([8,13]) + cAtk +  cSpd*4 + cMgc*7 - eDef+3)*2;
                                    end
                                    eSpd = eSpd - 2;
                                    eHp = eHp - hamstringDmg;
                                    disp('You take aim and shoot at your opponents leg.');
                                    if crit ~= 10
                                        disp(['You deal ', num2str(hamstringDmg), ' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ',  num2str(hamstringDmg), ' damage.']);
                                    end
                                    disp('Your opponent''s speed decreases.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 25)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '0'
                                clc
                                zcommand = '';
                        end
                    case '3' % Item
                        disp('ITEMS');
                        disp('====================================================================================');
                        disp(['1. HP Potion (', num2str(potionHp), ')']);
                        disp(['2. MP Potion (', num2str(potionMp), ')']);
                        while strcmp(item,'1')==0 && strcmp(item,'2')==0 && strcmp(item,'0')==0
                            item = input('Enter move (1, 2, or 0 to go back): ', 's');
                        end
                        disp('====================================================================================');
                        switch item
                            case '1'
                                if (potionHp > 0)
                                    potionHp = potionHp - 1;
                                    cHp = cHp + 100;
                                    if cHp > maxHp
                                        cHp = maxHp;
                                    end
                                    disp('You gulp down the potion.');
                                    disp('It heals 100 health.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (potionHp == 0)
                                        disp('You do not have any HP potions')
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '2'
                                if (potionMp > 0)
                                    potionMp = potionMp - 1;
                                    cMp = cMp + 100;
                                    if cMp > maxMp
                                        cMp = maxMp;
                                    end
                                    disp('You gulp down the potion.');
                                    disp('It heals 100 MP.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (potionMp == 0)
                                        disp('You do not have any MP potions')
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '0'
                                clc
                                zcommand = '';
                        end
                    case '4' % Run
                        disp('You run away... Coward.');
                        disp('The crowds boo you as you scamper out of the Arena.');
                        battleEvent = '0';
                    case 'keyboard'
                        clc
                        disp('Now in keyboard mode')
                        keyboard
                        disp('====================================================================================');
                        disp('Click any button to continue.');
                        pause
                        spell = '0';
                        item = '0';
                        zcommand = '';
                        clc
                end
                if strcmp(item, '0') == 0 && strcmp(spell, '0') == 0 && cHp > 0
                    y = [eMp, eHp ; cMp cHp];
                    barh(y, 1);
                    title(['Battling ' eAttribute ' ' eClass])
                    xlim([0 250]);
                    set(gca, 'YTickLabel', {[eClass ' HP/MP'], 'Your HP/MP'})
                    ax = get(gca);
                    b = ax.Children;
                    set(b(1),'FaceColor',[1 0 0]);
                    set(b(2),'FaceColor',[0 0 1]);
                    set(gca, 'box' , 'off');
                    disp('====================================================================================');
                    disp('Click any button to continue.');
                    pause
                    clc
                else
                    clc
                end   
        % Mage Battle
            case '2'
                switch zcommand
                    case '1' % Attack
                        if (crit ~= 10)
                            zdmg = randi([5,10]) + ((cAtk*2) + (cSpd*2) - (eDef+3));
                        else if (crit == 10)
                                zdmg =  (randi([10, 15]) + ((cAtk*2) + (cSpd*2) - (eDef+3)))*2;
                            end
                        end
                        eHp = eHp - zdmg;
                        if (mSword == 0)
                            disp('You smack your opponent.');
                        else if (mSword == 1)
                                zChat = floor((3-1+1)*rand+1);
                                if (zChat == 1)
                                    disp('You jab at your opponent.');
                                else if (zChat == 2)
                                        disp('You lunge at your opponent.');
                                    else if (zChat == 3);
                                            disp('You slash at your opponent.');
                                        end
                                    end
                                end
                            end
                        end
                        if (crit ~= 10)
                            disp(['It deals ', num2str(zdmg), ' damage.']);
                        else if (crit == 10)
                                disp(['A lucky hit! It deals ', num2str(zdmg), ' damage.']);
                            end
                        end
                        spell = '';
                        item = '';
                        zcommand = '';
                    case '2' % Spell
                        disp('SPELLS');
                        disp('====================================================================================');
                        disp('1. Fireball (20 MP)');
                        disp('2. Heal (20 MP)');
                        disp('3. Curse (20 MP)');
                        disp('4. Magic Sword (40 MP)');
                        disp('5. Lightning (20 MP)');
                        while strcmp(spell,'1')==0 && strcmp(spell,'2')==0 && strcmp(spell,'3')==0 && strcmp(spell,'4')==0 && strcmp(spell,'0')==0 && strcmp(spell,'5')==0
                            spell = input('Enter move (1, 2, 3, 4, 5, or 0 to go back): ', 's');
                        end
                        disp('====================================================================================');
                        switch spell
                            case '1'
                                if (cMp >= 20)
                                    cMp = cMp - 20;
                                    if crit ~= 10
                                        fireballDmg = randi([7,15]) + cMgc*5 - eDef+3;
                                    else
                                        fireballDmg = (randi([7,15]) + cMgc*5 - eDef+3)*2;
                                    end
                                    eHp = eHp - fireballDmg;
                                    disp('You conjure a violent ball of fire. You launch it at your opponent.');
                                    if crit ~= 10
                                        disp(['You deal ', num2str(fireballDmg),' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ', num2str(fireballDmg), ' damage.']);
                                    end
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 20)
                                        disp('You do not have enough MP to use this spell');
                                    end
                                    spell = '0';
                                    item = '0';
                                    zcommand = '';
                                    disp('====================================================================================');
                                    disp('Click any button to continue.');
                                    pause
                                    clc
                                end
                            case '2'
                                if (cMp >= 20)
                                    cMp = cMp - 20;
                                    heal = randi([10, 12]) + (cMgc*4);
                                    cHp = cHp + heal;
                                    if cHp > 150
                                        cHp = 150;
                                    end
                                    disp('Green magic swirls around you.');
                                    disp(['You heal ', num2str(heal), ' health.']);
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 20)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '3'
                                if (cMp >= 20)
                                    cMp = cMp - 20;
                                    eAtk = eAtk - 1;
                                    eDef = eDef - 1;
                                    disp('You call a voodoo curse upon your opponent.');
                                    disp('Your opponent''s attack and defense decrease.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 20)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '4'
                                if (mSword == 1)
                                    disp('You already have a magic sword equipped');
                                    spell = '0';
                                    item = '0';
                                    zcommand = '';
                                    disp('====================================================================================');
                                    disp('Click any button to continue.');
                                    pause
                                    clc
                                else if (cMp >= 40)
                                        cMp = cMp - 40;
                                        mSword = 1;
                                        if (mSword == 1)
                                            cAtk = cAtk + 6;
                                        end
                                        disp('You conjure and equip a mystical sword.');
                                        disp('Your attack greatly increases.');
                                        spell = '';
                                        item = '';
                                        zcommand = '';
                                    else if(cMp < 40)
                                            disp('You do not have enough MP to use this spell');
                                            spell = '0';
                                            item = '0';
                                            zcommand = '';
                                            disp('====================================================================================');
                                            disp('Click any button to continue.');
                                            pause
                                            clc
                                        end
                                    end
                                end
                            case '5'
                                if (cMp >= 20)
                                    cMp = cMp - 20;
                                    if crit ~= 10
                                        lightningDmg = randi([6,11]) + cMgc*4 + cSpd - eDef+3;
                                    else
                                        lightningDmg = (randi([6,11]) + cMgc*4 + cSpd - eDef+3)*2;
                                    end
                                    eHp = eHp - lightningDmg;
                                    eSpd = eSpd - 2;
                                    disp('Sparks form around your hand and streak towards the opponent.');
                                    disp('Your opponent''s speed decreases.');
                                    if crit ~= 10
                                        disp(['You deal ', num2str(lightningDmg),' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ', num2str(lightningDmg), ' damage.']);
                                    end
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 20)
                                        disp('You do not have enough MP to use this spell');
                                        disp('====================================================================================');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '0'
                                clc
                                zcommand = '';
                        end
                    case '3' % Item
                        disp('ITEMS');
                        disp('====================================================================================');
                        disp(['1. HP Potion (', num2str(potionHp), ')']);
                        disp(['2. MP Potion (', num2str(potionMp), ')']);
                        while strcmp(item,'1')==0 && strcmp(item,'2')==0 && strcmp(item,'0')==0
                            item = input('Enter move (1, 2, or 0 to go back): ', 's');
                        end
                        disp('====================================================================================');
                        switch item
                            case '1'
                                if (potionHp > 0)
                                    potionHp = potionHp - 1;
                                    cHp = cHp + 100;
                                    if cHp > maxHp
                                        cHp = maxHp;
                                    end
                                    disp('You gulp down the potion.');
                                    disp('It heals 100 health.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (potionHp == 0)
                                        disp('You do not have any HP potions')
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '2'
                                if (potionMp > 0)
                                    potionMp = potionMp - 1;
                                    cMp = cMp + 100;
                                    if cMp > maxMp
                                        cMp = maxMp;
                                    end
                                    disp('You gulp down the potion.');
                                    disp('It heals 100 MP.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (potionMp == 0)
                                        disp('You do not have any MP potions')
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '0'
                                clc
                                zcommand = '';
                        end
                    case '4' % Run
                        disp('You run away... Coward.');
                        disp('The crowds boo you as you scamper out of the Arena.');
                        battleEvent = '0';
                    case 'keyboard'
                        clc
                        disp('Now in keyboard mode')
                        keyboard
                        disp('====================================================================================');
                        disp('Click any button to continue.');
                        pause
                        spell = '0';
                        item = '0';
                        zcommand = '';
                        clc
                end
                if strcmp(item, '0') == 0 && strcmp(spell, '0') == 0 && cHp > 0
                    y = [eMp, eHp ; cMp cHp];
                    barh(y, 1);
                    title(['Battling ' eAttribute ' ' eClass])
                    xlim([0 250]);
                    set(gca, 'YTickLabel', {[eClass ' HP/MP'], 'Your HP/MP'})
                    ax = get(gca);
                    b = ax.Children;
                    set(b(1),'FaceColor',[1 0 0]);
                    set(b(2),'FaceColor',[0 0 1]);
                    set(gca, 'box' , 'off');
                    disp('====================================================================================');
                    disp('Click any button to continue.');
                    pause
                    clc
                else
                    clc
                end
        % Fighter Battle
            case '3'
                switch zcommand
                    case '1' % Attack
                        if (crit ~= 10)
                            zdmg = randi([10, 15]) + ((cAtk*3) + (cSpd*2) - (eDef+3));
                        else if (crit == 10)
                                zdmg =  (randi([10, 15]) + ((cAtk*3) + (cSpd*2) - (eDef+3)))*2;
                            end
                        end
                        eHp = eHp - zdmg;
                        zChat = floor((3-1+1)*rand+1);
                        if (zChat == 1)
                            disp('You jab at your opponent.');
                        else if (zChat == 2)
                                disp('You lunge at your opponent.');
                            else if (zChat == 3);
                                    disp('You slash at your opponent.');
                                end
                            end
                        end
                        if (crit ~= 10)
                            disp(['It deals ', num2str(zdmg), ' damage.']);
                        else if (crit == 10)
                                disp(['A lucky hit! It deals ', num2str(zdmg), ' damage.']);
                            end
                        end
                        spell = '';
                        item = '';
                        zcommand = '';
                    case '2' % Spell
                        disp('SPELLS');
                        disp('====================================================================================');
                        disp('1. Fire Stance (25 MP)');
                        disp('2. Wind Stance (25 MP)');
                        disp('3. Earth Stance (25 MP)');
                        disp('4. Brutal Strike (50 MP)');
                        while strcmp(spell,'1')==0 && strcmp(spell,'2')==0 && strcmp(spell,'3')==0 && strcmp(spell,'4')==0 && strcmp(spell,'0')==0
                            spell = input('Enter move (1, 2, 3, 4, or 0 to go back): ', 's');
                        end
                        disp('====================================================================================');
                        switch spell
                            case '1'
                                if (cMp >= 25)
                                    cMp = cMp - 25;
                                        if crit ~= 10
                                            stanceDmg = randi([5, 10]) + ((cAtk*2) + (cSpd*2) - (eDef+3));
                                        else
                                            stanceDmg = (randi([5, 10]) + ((cAtk*2) + (cSpd*2) - (eDef+3)))*2;
                                        end
                                        eHp = eHp - stanceDmg;
                                        zChat = floor((3-1+1)*rand+1);
                                        switch zChat
                                            case 1
                                                disp('You jab at your opponent and form Fire Stance.');
                                            case 2
                                                disp('You lunge at your opponent and form Fire Stance.');
                                            case 3
                                                disp('You slash at your opponent and form Fire Stance.');
                                        end
                                        if crit ~= 10
                                            disp(['It deals ', num2str(stanceDmg), ' damage.']);
                                        else
                                            disp(['A lucky hit! It deals ',  num2str(stanceDmg), ' damage.']);
                                        end
                                        if (stanceWind == 1 || stanceEarth == 1 || stanceFire == 1)
                                            if stanceWind == 1
                                                cSpd = cSpd - 4;
                                                cAtk = cAtk + 2;
                                            else if stanceEarth == 1
                                                cDef = cDef - 4;
                                                cSpd = cSpd + 2;
                                            else if stanceFire == 1
                                                cAtk = cAtk - 4;
                                                cDef = cDef + 2;
                                                end
                                                end
                                            end
                                            stanceWind = 0;
                                            stanceEarth = 0;
                                            stanceFire = 1;
                                        else
                                            stanceFire = 1;
                                        end
                                        cAtk = cAtk + 4;
                                        cDef = cDef - 2;
                                        disp('');
                                        disp('Your Attack increases greatly!');
                                        disp('Your Defense decreases.');
                                        spell = '';
                                        item = '';
                                        zcommand = '';
                                else if (cMp < 25)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '2'
                                if (cMp >= 25)
                                    cMp = cMp - 25;
                                    if crit ~= 10
                                        stanceDmg = randi([5, 10]) + ((cAtk*2) + (cSpd*2) - (eDef+3));
                                    else
                                        stanceDmg = (randi([5, 10]) + ((cAtk*2) + (cSpd*2) - (eDef+3)))*2;
                                    end
                                    eHp = eHp - stanceDmg;
                                    zChat = floor((3-1+1)*rand+1);
                                    switch zChat
                                        case 1
                                            disp('You jab at your opponent and form Wind Stance.');
                                        case 2
                                            disp('You lunge at your opponent and form Wind Stance.');
                                        case 3
                                            disp('You slash at your opponent and form Wind Stance.');
                                    end
                                    if crit ~= 10
                                        disp(['It deals ', num2str(stanceDmg), ' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ',  num2str(stanceDmg), ' damage.']);
                                    end
                                    if (stanceWind == 1 || stanceEarth == 1 || stanceFire == 1)
                                        if stanceWind == 1
                                            cSpd = cSpd - 4;
                                            cAtk = cAtk + 2;
                                        else if stanceEarth == 1
                                            cDef = cDef - 4;
                                            cSpd = cSpd + 2;
                                        else if stanceFire == 1
                                            cAtk = cAtk - 4;
                                            cDef = cDef + 2;
                                            end
                                            end
                                        end
                                        stanceWind = 0;
                                        stanceEarth = 0;
                                        stanceFire = 1;
                                    else
                                        stanceWind = 1;
                                    end
                                    cSpd = cSpd + 4;
                                    cAtk = cAtk - 2;
                                    disp('');
                                    disp('Your Speed increases greatly!');
                                    disp('Your Attack decreases.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 10)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '3'
                                if (cMp >= 25)
                                    cMp = cMp - 25;
                                        if crit ~= 10
                                            stanceDmg = randi([10, 15]) + ((cAtk) + (cSpd) - (eDef+3));
                                        else
                                            stanceDmg = (randi([10, 15]) + ((cAtk) + (cSpd) - (eDef+3)))*2;
                                        end
                                        eHp = eHp - stanceDmg;
                                        zChat = floor((3-1+1)*rand+1);
                                        switch zChat
                                            case 1
                                                disp('You jab at your opponent and form Earth Stance.');
                                            case 2
                                                disp('You lunge at your opponent and form Earth Stance.');
                                            case 3
                                                disp('You slash at your opponent and form Earth Stance.');
                                        end
                                        if crit ~= 10
                                            disp(['It deals ', num2str(stanceDmg), ' damage.']);
                                        else
                                            disp(['A lucky hit! It deals ',  num2str(stanceDmg), ' damage.']);
                                        end
                                        if (stanceWind == 1 || stanceEarth == 1 || stanceFire == 1)
                                            if stanceWind == 1
                                                cSpd = cSpd - 4;
                                                cAtk = cAtk + 2;
                                            else if stanceEarth == 1
                                                cDef = cDef - 4;
                                                cSpd = cSpd + 2;
                                            else if stanceFire == 1
                                                cAtk = cAtk - 4;
                                                cDef = cDef + 2;
                                                end
                                                end
                                            end
                                            stanceWind = 0;
                                            stanceEarth = 1;
                                            stanceFire = 0;
                                        else
                                            stanceEarth = 1;
                                        end
                                        cDef = cDef + 4;
                                        cSpd = cSpd - 2;
                                        disp('');
                                        disp('Your Defense increases greatly!');
                                        disp('Your Speed decreases.');
                                        spell = '';
                                        item = '';
                                        zcommand = '';
                                else if (cMp < 25)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '4'
                                if (cMp >= 50)
                                    cMp = cMp - 50;
                                    if crit ~= 10
                                        brutalDmg = randi([12, 17]) + (cAtk*4) + (cSpd*3);
                                    else
                                        brutalDmg = (randi([12, 17]) + (cAtk*4) + (cSpd*3))*2;
                                    end
                                    eHp = eHp - brutalDmg;
                                    cSpd = cSpd - 1;
                                    eDef = eDef - 2;
                                    disp('Your rage builds up and you strike your opponent with all your might.');
                                    if crit ~= 10
                                            disp(['It deals ', num2str(brutalDmg), ' damage.']);
                                        else
                                            disp(['A lucky hit! It deals ',  num2str(brutalDmg), ' damage.']);
                                    end
                                    disp('Your speed decreases');
                                    disp('Your opponent''s defense decreases.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (cMp < 50)
                                        disp('You do not have enough MP to use this spell');
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '0'
                                clc
                                zcommand = '';
                        end
                    case '3' % Item
                        disp('ITEMS');
                        disp('====================================================================================');
                        disp(['1. HP Potion (', num2str(potionHp), ')']);
                        disp(['2. MP Potion (', num2str(potionMp), ')']);
                        while strcmp(item,'1')==0 && strcmp(item,'2')==0 && strcmp(item,'0')==0
                            item = input('Enter move (1, 2, or 0 to go back): ', 's');
                        end
                        disp('====================================================================================');
                        switch item
                            case '1'
                                if (potionHp > 0)
                                    potionHp = potionHp - 1;
                                    cHp = cHp + 100;
                                    if cHp > maxHp
                                        cHp = maxHp;
                                    end
                                    disp('You gulp down the potion.');
                                    disp('It heals 100 health.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (potionHp == 0)
                                        disp('You do not have any HP potions')
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '2'
                                if (potionMp > 0)
                                    potionMp = potionMp - 1;
                                    cMp = cMp + 100;
                                    if cMp > maxMp
                                        cMp = maxMp;
                                    end
                                    disp('You gulp down the potion.');
                                    disp('It heals 100 MP.');
                                    spell = '';
                                    item = '';
                                    zcommand = '';
                                else if (potionMp == 0)
                                        disp('You do not have any MP potions')
                                        spell = '0';
                                        item = '0';
                                        zcommand = '';
                                        disp('====================================================================================');
                                        disp('Click any button to continue.');
                                        pause
                                        clc
                                    end
                                end
                            case '0'
                                clc
                                zcommand = '';
                        end
                    case '4' % Run
                        disp('You run away... Coward.');
                        disp('The crowds boo you as you scamper out of the Arena.');
                        battleEvent = '0';
                    case 'keyboard'
                        clc
                        disp('Now in keyboard mode')
                        keyboard
                        disp('====================================================================================');
                        disp('Click any button to continue.');
                        pause
                        spell = '0';
                        item = '0';
                        zcommand = '';
                        clc
                end
                if strcmp(item, '0') == 0 && strcmp(spell, '0') == 0 && cHp > 0
                    y = [eMp, eHp ; cMp cHp];
                    barh(y, 1);
                    title(['Battling ' eAttribute ' ' eClass])
                    xlim([0 250]);
                    set(gca, 'YTickLabel', {[eClass ' HP/MP'], 'Your HP/MP'})
                    ax = get(gca);
                    b = ax.Children;
                    set(b(1),'FaceColor',[1 0 0]);
                    set(b(2),'FaceColor',[0 0 1]);
                    set(gca, 'box' , 'off');
                    disp('====================================================================================');
                    disp('Click any button to continue.');
                    pause
                    clc
                else
                    clc
                end
        end
        if (eHp <= 0) % if user defeats an opponent. displays message and sets variable to execute "battle again?" code
            battleEvent = '0';
            numDefeat = numDefeat + 1;
            disp('====================================================================================');
            disp('Congratulations!');
            disp(['You have defeated ' , eAttribute, ' ', eClass, '!']);
            disp('====================================================================================');
            disp('Click any button to continue.');
            pause
            clc
            clf
        end
        
    % Opponent Battle if speed is lower or equal to
        if (eHp > 0 && eSpd <= cSpd && cHp > 0 && strcmp(item, '0') == 0 && strcmp(spell, '0') == 0 && battleEvent == '1')
            
            crit = floor((10-1+1)*rand+1);
            
            disp('====================================================================================');
            eBattle = floor((8-1+1)*rand+1);
            switch oppClass
                case 1 % Archer Opponent
                    if eHp > 35 || potionHp2 == 0
                        if (eBattle == 1 || eBattle == 3) && eMp >= 25
                            eMp = eMp - 25;
                            eSpd = eSpd + 2;
                            disp('Your opponent uses wind stance!');
                            disp('Wind enwraps your opponent.');
                            disp('Their speed increases!.');
                        else if (eBattle == 2 || eBattle == 3) && eMp >= 25
                                eMp = eMp - 25;
                                if (crit ~= 10)
                                    netshotDmg = randi([10, 15]) + eSpd*3 + eAtk - (cDef + 4);
                                else if (crit == 10)
                                        netshotDmg = (randi([10, 15]) + eSpd*3 + eAtk - (cDef + 4))*2;
                                    end
                                end
                                if netshotDmg < 0
                                    netshotDmg = 0;
                                end
                                cHp = cHp - netshotDmg;
                                cSpd = cSpd - 1;
                                disp('Your opponent uses Net Shot!');
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(netshotDmg), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(netshotDmg), ' damage.']);
                                    end
                                end
                                disp('Your speed decreases!');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((12-1+1)*rand+1);
                                if (zChat2 == 1 || zChat2 == 2 || zChat2 == 3 || zChat2 == 4 || zChat2 == 5 || zChat2 == 6 || zChat2 == 11 || zChat2 == 12)
                                    disp('The opponent shoots you with an arrow.');
                                else if (zChat2 == 7 || zChat2 == 8)
                                        disp('Your opponent smacks you with their bow.');
                                    else if (zChat2 == 9 || zChat2 == 10)
                                            disp('The opponent stabs you with an arrow.');
                                        end
                                    end
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    else if eHp <= 35 && potionHp2 == 1
                            eLowHp = floor((4-1+1)*rand+1);
                            if eLowHp == 1
                                potionHp2 = potionHp2 - 1;
                                eHp = eHp + 75;
                                disp('Your opponent drinks an HP potion.');
                                disp('It heals 75 HP.');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((12-1+1)*rand+1);
                                if (zChat2 == 1 || zChat2 == 2 || zChat2 == 3 || zChat2 == 4 || zChat2 == 5 || zChat2 == 6 || zChat2 == 11 || zChat2 == 12)
                                    disp('The opponent shoots you with an arrow.');
                                else if (zChat2 == 7 || zChat2 == 8)
                                        disp('Your opponent smacks you with their bow.');
                                    else if (zChat2 == 9 || zChat2 == 10)
                                            disp('The opponent stabs you with an arrow.');
                                        end
                                    end
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    end
                case 2 % Mage Opponent
                    if eHp > 35 || potionHp2 == 0
                        if (eBattle == 5 || eBattle == 6 || eBattle == 7 || eBattle == 8) && eMp >= 25
                            eMp = eMp - 25;
                            if crit ~= 10
                                fireballDmg2 = randi([10,15]) + ((eMgc*4) - (cDef + 4));
                            else
                                fireballDmg2 = round((randi([10,15]) + ((eMgc*4) - (cDef + 4)))*1.5);
                            end
                            if fireballDmg2 < 0
                                fireballDmg2 = 0;
                            end
                            cHp = cHp - fireballDmg2;
                            disp('Your opponent conjures a giant ball of fire. They launch it at you.');
                            if crit ~= 10
                                disp(['It deals ', num2str(fireballDmg2),' damage.']);
                            else
                                disp(['A lucky hit! It deals ', num2str(fireballDmg2), ' damage.']);
                            end
                        else if eBattle == 1 && eMp >= 50
                                eMp = eMp - 25;
                                eDef = eDef + 1;
                                disp('Your opponent uses Mystical Cloak!');
                                disp('Their defense increases!');
                            else if (eBattle == 2 || eBattle == 3 || eBattle == 4) && eMp >= 25
                                    eMp = eMp - 25;
                                    if crit ~= 10
                                        iceDmg = randi([5,10]) + eSpd*2 + ((eMgc*4) - (cDef + 4));
                                    else
                                        iceDmg = round((randi([5,10]) + eSpd*2 + ((eMgc*4) - (cDef + 4)))*1.5);
                                    end
                                    if iceDmg < 0
                                        iceDmg = 0;
                                    end
                                    cHp = cHp - iceDmg;
                                    disp('Your opponent uses glacial spike!');
                                    disp('A large ice stalagmite forms within their hands! They launch it at you.');
                                    if crit ~= 10
                                        disp(['It deals ', num2str(iceDmg),' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ', num2str(iceDmg), ' damage.']);
                                    end
                                else
                                    disp('The enemy is out of MP!');
                                    if (crit ~= 10)
                                        zdmg2 = randi([5,10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                    else if (crit == 10)
                                            zdmg2 =  (randi([5, 10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                        end
                                    end
                                    if zdmg2 < 0
                                        zdmg2 = 0;
                                    end
                                    cHp = cHp - zdmg2;
                                    disp('Your opponent smacks you.');
                                    if (crit ~= 10)
                                        disp(['It deals ', num2str(zdmg2), ' damage.']);
                                    else if (crit == 10)
                                            disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                        end
                                    end
                                end
                            end
                        end
                    else if eHp <= 35 && potionHp2 == 1
                            eLowHp = floor((4-1+1)*rand+1);
                            if eLowHp == 1
                                potionHp2 = potionHp2 - 1;
                                eHp = eHp + 75;
                                disp('Your opponent drinks an HP potion.');
                                disp('It heals 75 HP.');
                            else
                                if (eMp >= 25)
                                    eMp = eMp - 25;
                                    if crit ~= 10
                                        fireballDmg2 = randi([10,15]) + ((eMgc*4) - (cDef + 4));
                                    else
                                        fireballDmg2 = round((randi([10,15]) + ((eMgc*4) - (cDef + 4)))*1.5);
                                    end
                                    if fireballDmg2 < 0
                                        fireballDmg2 = 0;
                                    end
                                    cHp = cHp - fireballDmg2;
                                    disp('Your opponent conjures a giant ball of fire. They launch it at you.');
                                    if crit ~= 10
                                        disp(['It deals ', num2str(fireballDmg2),' damage.']);
                                    else
                                        disp(['A lucky hit! It deals ', num2str(fireballDmg2), ' damage.']);
                                    end
                                else if (eMp < 25)
                                        disp('The enemy is out of MP!');
                                        if (crit ~= 10)
                                            zdmg2 = randi([5,10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                        else if (crit == 10)
                                                zdmg2 =  (randi([5, 10]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                            end
                                        end
                                        if zdmg2 < 0
                                            zdmg2 = 0;
                                        end
                                        cHp = cHp - zdmg2;
                                        disp('Your opponent smacks you.');
                                        if (crit ~= 10)
                                            disp(['It deals ', num2str(zdmg2), ' damage.']);
                                        else if (crit == 10)
                                                disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                case 3 % Fighter Opponent
                    if eHp > 35 || potionHp2 == 0
                        if (eBattle == 1 || eBattle == 3) && eMp >= 50
                            eMp = eMp - 50;
                            if crit ~= 10
                                powerburstDmg = randi([10,15]) + eAtk*3 + eSpd*3 - (cDef + 4);
                            else
                                powerburstDmg = (randi([10,15]) + eAtk*3 + eSpd*3 - (cDef + 4))*2;
                            end
                            if powerburstDmg < 0
                                powerburstDmg = 0;
                            end
                            cHp = cHp - powerburstDmg;
                            disp('Your opponent uses Power Burst!');
                            disp('They strike you three times in quick succession!');
                            if crit ~= 10
                                disp(['It deals ', num2str(powerburstDmg),' damage.']);
                            else
                                disp(['A lucky hit! It deals ', num2str(powerburstDmg), ' damage.']);
                            end
                        else if (eBattle == 2 ) && eMp >= 25
                                eMp = eMp - 25;
                                cAtk = cAtk + 2;
                                disp('Your opponent uses Build Up!');
                                disp('They grow visibly bigger.');
                                disp('Their attack increases!');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((3-1+1)*rand+1);
                                switch zChat2
                                    case 1
                                        disp('Your opponent jabs at you.');
                                    case 2
                                        disp('Your opponent lunges at you.');
                                    case 3
                                        disp('Your opponent slashes at you.');
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    else if eHp <= 35 && potionHp2 == 1
                            eLowHp = floor((4-1+1)*rand+1);
                            if eLowHp == 1
                                potionHp2 = potionHp2 - 1;
                                eHp = eHp + 75;
                                disp('Your opponent drinks an HP potion.');
                                disp('It heals 75 HP.');
                            else
                                if (crit ~= 10)
                                    zdmg2 = randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4)));
                                else if (crit == 10)
                                        zdmg2 =  (randi([10, 15]) + ((eAtk*2) + (eSpd*2) - ((cDef + 4))))*2;
                                    end
                                end
                                if zdmg2 < 0
                                    zdmg2 = 0;
                                end
                                cHp = cHp - zdmg2;
                                zChat2 = floor((3-1+1)*rand+1);
                                switch zChat2
                                    case 1
                                        disp('Your opponent jabs at you.');
                                    case 2
                                        disp('Your opponent lunges at you.');
                                    case 3
                                        disp('Your opponent slashes at you.');
                                end
                                if (crit ~= 10)
                                    disp(['It deals ', num2str(zdmg2), ' damage.']);
                                else if (crit == 10)
                                        disp(['A lucky hit! It deals ', num2str(zdmg2), ' damage.']);
                                    end
                                end
                            end
                        end
                    end
            end
            y = [eMp, eHp ; cMp cHp];
            barh(y, 1);
            title(['Battling ' eAttribute ' ' eClass])
            xlim([0 250]);
            set(gca, 'YTickLabel', {[eClass ' HP/MP'], 'Your HP/MP'})
            ax = get(gca);
            b = ax.Children;
            set(b(1),'FaceColor',[1 0 0]);
            set(b(2),'FaceColor',[0 0 1]);
            set(gca, 'box' , 'off');
            if (cHp <= 0) % If user dies, displays message and ends loop
                battleEvent = '0';
                mSword = 0;
                if (stanceWind == 1 || stanceEarth == 1 || stanceFire == 1)
                    if stanceWind == 1
                        cSpd = cSpd - 4;
                        cAtk = cAtk + 2;
                    else if stanceEarth == 1
                            cDef = cDef - 4;
                            cSpd = cSpd + 2;
                        else if stanceFire == 1
                                cAtk = cAtk - 4;
                                cDef = cDef + 2;
                            end
                        end
                    end
                    stanceWind = 0;
                    stanceEarth = 0;
                    stanceFire = 0;
                end
                disp('====================================================================================');
                disp('GAME OVER. YOU LOSE!');
                disp(['You have been defeated by ' , eAttribute, ' ', eClass, '!']);
                disp('====================================================================================');
                disp(['You were able to defeat ', num2str(numDefeat), ' opponents.']);
                disp('====================================================================================');
                disp('Click any button to continue.');
                pause
                if gsave == 1
                    delete([charName '.mat'])
                end
                clc
                clf
            end
        end
        if strcmp(battleEvent, '0') == 1 && cHp > 0 && numDefeat <= oppNum-1 % "battle again?" code. asks the user if they want to continue
            while strcmp(battleEvent,'1')==0 && strcmp(battleEvent,'2')==0 && strcmp(zcommand,'4')==0
                battleEvent = input (['You have defeated ', num2str(numDefeat), ' opponents.\nWould you like to continue and fight again? Yes(1) or No(2): '], 's');
            end
            if strcmp(battleEvent, '2') == 1
                clc
                mSword = 0;
                if (stanceWind == 1 || stanceEarth == 1 || stanceFire == 1)
                    if stanceWind == 1
                        cSpd = cSpd - 4;
                        cAtk = cAtk + 2;
                    else if stanceEarth == 1
                            cDef = cDef - 4;
                            cSpd = cSpd + 2;
                        else if stanceFire == 1
                                cAtk = cAtk - 4;
                                cDef = cDef + 2;
                            end
                        end
                    end
                    stanceWind = 0;
                    stanceEarth = 0;
                    stanceFire = 0;
                end
                lootCalc = round(floor((3-1+1)*rand+1) + ((loot^(2))*(10)));
                if gsave == 1
                    gold = gold + lootCalc;
                else
                    gold = lootCalc;
                end
                loot = 0;
                disp('Have you decided to drop out of the tournament?');
                disp('====================================================================================');
                disp(['You defeated a grand total of ', num2str(numDefeat), ' opponents.']);
                disp(['You are rewarded ', num2str(lootCalc), ' gold.']);
                disp('====================================================================================');
                disp('Click any button to continue.');
                pause
                clc
                clf
                gsave = 1;
                save(charName);
                disp('Game Saved');
                pause(1)
                clc
            end
            clc
        end
        if (eHp <= 0 && numDefeat == oppNum) % if user succesfully defeats opponents. displays message and puts into infinite loop.
            battleEvent = '0';
            mSword = 0;
            if (stanceWind == 1 || stanceEarth == 1 || stanceFire == 1)
                if stanceWind == 1
                    cSpd = cSpd - 4;
                    cAtk = cAtk + 2;
                else if stanceEarth == 1
                        cDef = cDef - 4;
                        cSpd = cSpd + 2;
                    else if stanceFire == 1
                            cAtk = cAtk - 4;
                            cDef = cDef + 2;
                        end
                    end
                end
                stanceWind = 0;
                stanceEarth = 0;
                stanceFire = 0;
            end
            disp('====================================================================================');
            disp(['Amazing job out there ', charName, '!']);
            if gsave == 1 && prestige > 0
                disp(['You defeated ' num2str(oppNum) ' opponents and keep your Champion Crown!']);
            else
                disp(['You defeated ' num2str(oppNum) ' opponents and have been crowned champion of The Colosseum!']);
            end
            lootCalc = round(floor((3-1+1)*rand+1) + 1000 + ((loot^(2))*(10)));
            if gsave == 1
                gold = gold + lootCalc;
            else
                gold = lootCalc;
            end
            loot = 0;
            disp('====================================================================================');
            disp(['You are awarded ', num2str(lootCalc) , ' gold!']);
            disp(['You have ', num2str(gold) , ' gold.']);
            disp('====================================================================================');
            disp('Press any button to end.');
            pause
            clc
            clf
            gsave = 1;
            save(charName);
            disp('Game Saved');
            pause(1)
            clc
        end
    end
end                                                                                                                                                 ,clear

