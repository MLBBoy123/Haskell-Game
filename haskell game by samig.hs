----------------------------------------------inductory message-----------------------------------------------

linkstart = do 
--linkstart function
   putStrLn("")
--Empty parameter for the spacing
   putStrLn("Link Estabilishing...\n")
   putStrLn("")
   putStrLn("Link Estabilished!\n")
   putStrLn("")
   putStrLn("Welcome to the World of Union of West London (UWLO)!\n")
   putStrLn("Before we get started, may I know your name?\n") 
--intro message
   putStrLn("Please enter your name: \n")
--asks user for their name
   playerName <- getLine 
--binds the user's input with playerName
   putStrLn("")
   putStrLn("Your name is " ++playerName++ " huh? That's a nice name.\n")
--confirms the user's name
   putStrLn("Now shall we get started?\n")
--asks user if they are ready
   introAnswer <- getLine 
--getLine asks for the user's reply and binds it to introAnswer
   putStrLn("")
   if introAnswer == "Yes" then do putStrLn("I love your enthusiasm " ++playerName++ "!\n")
--if statement which uses the value of introAnswer. 
--if the value of the introAnswer is "Yes" then putStrLn will return this parameter
   else do putStrLn("Are you scared? What a Noob! Just kidding!\n")
--else statement which will return this parameter if value of introAnswer is anthing else.
   putStrLn("Well enough talking, so lets get cracking! I always wanted to say that!\n")
   putStrLn("Please type 'help' for instructions!\n")
--ask users to input the function 'help'

-------------------------------------------------instructions-------------------------------------------------

help = do
--help function
   putStrLn("")
   putStrLn("Here are your instructions:\n")
   putStrLn("")
   putStrLn("Each action will occur based on the command you type.\n")
   putStrLn("On each floor you will come across enemies and you can decided what action to take.\n")
   putStrLn("When you face an enemy, you will have three option: \n")
   putStrLn("")
   putStrLn("Fight -- You will fight with the enemy.\n")
   putStrLn("Die   -- You will allow the enemy kill you and You'll be respawned in respawn area.\n")
   putStrLn("Run   -- you will run back to the previous floor, then you'll have to fight the enemy again.\n")
   putStrLn("")
   putStrLn("Make sure you pick an option thats suitable for the situation!\n")
   putStrLn("If you do happen to be in the respawn area then you must start from Floor 1!\n")
   putStrLn("In order to move through floors, please enter the number of floor shown.\n")
   putStrLn("")
   putStrLn("Quit  -- This option will close the game.\n")
   putStrLn("And one more thing,you cannot leave the game until you complete the whole game...\n")
   putStrLn("Failure to follow this instruction may result your device to be corrupted with a virus!\n")
--instructions for the game
   putStrLn("")   
   putStrLn("Can we please start now?\n") 
   putStrLn("Please type 'begin' to start the real game!\n")
--asks user to input the function 'begin'

----------------------------------------------------floors---------------------------------------------------- 

begin = do 
--begin function
   let floor = 1
--game starts from floor1V2
   option floor 
--calls the 'option floor' function
   
option floor = do 
--option floor function
    putStr("You are in floor: " ++ show floor ++ "\n")
--tells the user which floor they are currently
    putStr("Enter a command: ")
--asks user to input a command
    command <- getLine
--bind the user's input with command
    putStrLn("")
    floors floor command
--calls the 'floors floor command' funciton	

floors floor command = do
--floors floor command function 
    if(floor == 0) then do respawnArea floor command
--if floor value is 0 then go to Respawn Area
    else if(floor == 1) then do floor1V2 floor command
--else if value is 1 then go to First Floor Final Boss
    else if(floor == 2) then do floor2 floor command
--else if value is 2 then go to Second Floor
    else if(floor == 3) then do floor3 floor command
--else if value is 3 then go to Third Floor
    else if(floor == 4) then do finalFloorV2 floor command
--else if value is 4 then go to Final Floor No Boss
    else if(floor == 5) then do floor1 floor command
--else if value is 5 then go to Actual First Floor
    else if(floor == 6) then do mainFloor floor command
--else if value is 6 then go to Actual Final Floor
    else do option floor
--else call the option floor function 

-------------------------------------------------Respawn Area-------------------------------------------------     

respawnArea floor command = do
--respawnArea floor command function
    putStrLn("Oh did you just die? Well no worries, you have respawned once more!\n")
    putStrLn("Well go to floor 1 and start again! Type 'start' to teleport to floor 1.\n")
    if(command == "start") then do 
--if the user types start 
       floor <- return 5 
       putStrLn("Teleporting to " ++ show floor) 
       option floor
--then the user will be sent to Actual First Floor
    else if (command == "Quit") then do 
--else if the user types quit 
       putStrLn ("You cannot quit until you finish the game!\n")
       putStrLn("Or perhaps you want the virus installed in your computer?\n")
       option floor
--then send a message that they cannot quit the game
    else do 
--else do
       putStrLn("Please enter a valid command!\n")
       option floor
--send a message to the user to enter a valid command

--------------------------------------------First Floor Final Boss--------------------------------------------- 

floor1V2 floor command = do
--floor1V2 floor command function
   putStrLn("Oh whats this? This must be a bug! I am sorry... But you have been aproached by the Final Boss Velo!!!\n")
   putStrLn("Don't look at me with a shock! I mean games are supposed to have bugs right?\n")
   putStrLn("Velo: Silence Game Master! You talk too much!\n")
   putStrLn("But but... Fine! I will take my leave. Good luck\n")
   putStrLn("Velo: Now that annoying minion is gone, what will you do?\n")   
--intro message
   putStrLn("Please type a command. --Fight --Die --Run --Quit \n")
--asks the user to enter a following command
   if (command == "Fight") then do 
--if the user types Fight
       floor <-return 0
       putStrLn("Velo: I love your fighting spirit but you are too weak! Meet me once more at the final floor!\n")
       putStrLn("You have died, you will be respawned at the Respawn Area.\n")
       putStrLn("Teleporting to " ++show floor)
       option floor
--then the user will be sent to Respawn Area 
   else if(command == "Die")then do 
--else if the user types Die
       floor <-return 4
       putStrLn("Velo: I am disappointed in you! Well goodbye coward!\n")
       putStrLn("You have died, you will be respawnnnnnnnnnnnnnnnnnnn3dasdeqeqaddqdq.\n")
       putStrLn("Hey again, it seems you died and also came across another bug ~ hehe I guess I need to fix this game again!\n")
       putStrLn("To compensate you for the bugs, I'll teleport you to final floor! Don't tell anyone, its a secret between you and me!\n")
       putStrLn("Teleporting to " ++show floor)
       option floor 
--then the user will be sent to Final Floor No Boss
   else if (command == "Run") then do 
--else if the user types Run
       putStrLn("Velo: Why are you running? Why are your running?\n")
       putStrLn("You are cannot run from the Final Boss Velo. Fight or Die!\n")
       option floor 
--then the user will be warned to fight or die. 
   else if (command == "Quit") then do 
--else if the user types Quit
       putStrLn ("You cannot leave the game, not when you a Final Boss is in front of you!!!\n")
       option floor
--sends a message they cannot leave the game 
   else do 
--else do
       putStrLn("Please enter a valid command!\n")
       option floor
--send a message to the user to input a valid command 

-------------------------------------------Final Floor No Final Boss---------------------------------------------    

finalFloorV2 floor command = do 
--finalFloorV2 floor command function
   putStrLn("Aye now you are in the final floor! You are one step away from completing this game!\n")
   putStrLn("But we better hurry before Velo appears back to the final floor. Don't panic tho!\n")
   putStrLn("Well there is two doors you can take. One door will complete the game and the other door will reset the game from floor 1.\n")
   putStrLn("Now make your decision!\n")
--intro message
   putStrLn("Please type a command to select a door. --Door 1 (Finish) --Door 2 (Reset) --Quit\n")
--asks the user to input a command
   if (command == "Door 1") then do 
--if the user types Door 1
       floor <- return 0 
       putStrLn("To think you'd fall for a simple trick-hahah! You think I'd let you complete the game that easily? Pathetic!\n" )
       putStrLn("Well have fun starting from respawn area! Until next time!\n")
       putStrLn("You are now telporting back to " ++ show floor)
       option floor 
--then the user is sent to Respawn Area 
   else if (command == "Door 2") then do 
--else if the user types Door 2
       floor <-return 5
       putStrLn("You are very clever. You cannot complete the game with door 1.\n")
       putStrLn("Now you will be teleported back to the real floor 1! This is where the actual game starts!\n")
       putStrLn("You are now telporting back to " ++ show floor)
       option floor
--then the user is sent to Actual First Floor
   else if (command == "Quit") then do 
--else if the user types Quit
       putStrLn("Lol, are you crazy? I told you cannot quit only way to quit is to complete the game!")
       option floor
--sends a message that the user cannot quit
   else do 
--else do
       putStrLn("Please enter a valid command!\n")
       option floor
--asks the user to enter a valid command.

-----------------------------------------------Actual First Floor------------------------------------------------- 

floor1 floor command = do 
--floor1 floor command function 
   putStrLn("Ok, this is the real floor 1. No more bugs I promise! Have fun!\n")
   putStrLn("You have been approached by a Slime Rimuru. What will you do?\n") 
--intro message
   putStrLn("Please type a command. --Fight --Die --Run --Quit \n")
--asks the user to input a command
   if (command == "Fight") then do 
--if the user types Fight
       floor <-return 2
       putStrLn("You have defeated the Slime Rimuru!\n")
       putStrLn("I'd laugh if you lost here, losing against a slime that is! Hahaha!.\n")
       putStrLn("Teleporting to " ++show floor)
       option floor
--then the user will be sent to Second Floor
   else if (command == "Die")then do 
--else if the user types Die
       floor <-return 0
       putStrLn("Omg did you just let a slime kill you ahahahhaha!\n")
       putStrLn("I need to take a screenshot of this! Ahahaha!\n")
       putStrLn("Anyway hope you have to courage to beat this slime next time ahahaha!\n")
       putStrLn("Teleporting to " ++show floor)
       option floor 
--then the user will be sent to Respawn Area
   else if (command == "Run") then do 
--else if the user types Run
       floor <-return 0
       putStrLn("You actually running away from a slime?\n")
       putStrLn("I shouldn't laugh but this must be a 300 IQ strat for sure!\n")
       putStrLn("You are now heading back to " ++ show floor)
       option floor 
--then the user will be sent to Respawn Area
   else if (command == "Quit") then do 
--else if the user types Quit
       putStrLn ("You cannot leave the game, go fight the slime!!!\n")
       option floor
--sends a message that the user cannot quit
   else do 
--else do
       putStrLn("Please enter a valid command!\n")
       option floor
--asks the user to enter a valid command.

--------------------------------------------------Second Floor----------------------------------------------------- 

floor2 floor command = do 
--floor2 floor command function 
   putStrLn("Now you are on the second floor! Each floor will get harder mind you!\n")
   putStrLn("You will now face a Succubus named Clessy. Do not be fooled by her beauty!\n")
   putStrLn("Clessy: Hi there, I am the voluptuous Succubus Clessy.\n")
   putStrLn("Clessy: Oh my you look really tasty! Why don't you type 'Die' let me get a taste on you?\n")
   putStrLn("Clessy: I promise you will still be alive.\n")
   putStrLn("You have been approached by a Succubus Clessy. What will you do?\n") 
--intro message
   putStrLn("Please type a command. --Fight --Die --Run --Quit \n")
--asks the user to type the following commands
   if (command == "Fight") then do 
--if the user types Fight
       floor <-return 3
       putStrLn("You have defeated the Succubus Clessy!\n")
       putStrLn("Clessy: How can this be? No one has ever resisted me! Impossible!\n")
       putStrLn("Wow you are like those monks! Not bad kiddo.\n")
       putStrLn("Teleporting to " ++show floor)
       option floor
--then the user is sent to Third Floor
   else if (command == "Die")then do 
--else if the user types Die
       floor <-return 0
       putStrLn("Clessy: That's it. Just follow my commands.\n")
       putStrLn("You have been seduced by Succubus Clessy. You cannot move!\n")
       putStrLn("Clessy: Well thank you for the feast! That's number 1001\n")
       putStrLn("Succubus Clessy has executed you. You have died...\n")
       putStrLn("Wow you are really weak... Well back to Respawn Area you go!\n")
       putStrLn("Teleporting to " ++show floor)
       option floor
--then the user is sent to Respawn Area
   else if (command == "Run") then do 
--else if the user types Run
       floor <-return 5
       putStrLn("Clessy: Don't you trust me?\n")
       putStrLn("Clessy: Pfft. Pathetic!\n")
       putStrLn("Well uhm I guess its better than running.\n")
       putStrLn("You are now heading back to " ++ show floor)
       option floor 
--then the user is sent to Actual First Floor 
   else if (command == "Quit") then do 
--else if the user types Quit
       putStrLn ("You cannot leave the game, go fight that succubus!!!\n")
       option floor
--sends a message they cannot leave the game
   else do
--else do
       putStrLn("Please enter a valid command!\n")
       option floor
--asks the user to enter a valid command 

--------------------------------------------------Third Floor-----------------------------------------------------

floor3 floor command = do 
--floor3 floor command function 
   putStrLn("Now you are on the third floor! Keep it going!\n")
   putStrLn("You will now face a Demon God called Botara.\n")
   putStrLn("Botara: Hey there!\n")
   putStrLn("Botara: Unlike others I just want to fight the strongest players!\n")
   putStrLn("Botara: Now, come at me!\n")
   putStrLn("You have been approached by a Demon God Ara. What will you do?\n") 
--intro message
   putStrLn("Please type a command. --Fight --Die --Run --Quit \n")
--asks the user to enter the following command
   if (command == "Fight") then do 
--if the user types Fight
       floor <-return 6
       putStrLn("Botara: You are a very strong person!\n")
       putStrLn("Botara: Not only you bested the urge from my wife in second floor, but even beat me to a great fight!")
       putStrLn("Botara: Hope we clash again someday!")
       putStrLn("You have defeated the Demon God!\n")
       putStrLn("Botara: Guess I will pay a visit to my wife on the second floor once I respawn. Haven't seen her for 5 years...\n")
       putStrLn("That was so cool that fight. I am impressed! Right since I am too lazy lets take you to the real final floor!\n")
       putStrLn("Yes the final boss is waiting for you. With the experience you gained so far, it should be doable!\n")
       putStrLn("Teleporting to " ++show floor)
       option floor
--then the user will be sent to Actual Final Floor
   else if (command == "Die")then do 
--else if the user types Die
       floor <-return 0
       putStrLn("Botara: You are not strong enough! Don't appear before me ever again!\n")
       putStrLn("You have been slained by Demon God Botara...\n")
       putStrLn("Well I got nothing more to say but, get gud Noob!\n")
       putStrLn("Teleporting to " ++show floor)
       option floor 
--then the user is sent to Respawn Area
   else if (command == "Run") then do 
--else if the user types Run
       floor <-return 2
       putStrLn("Botara: Come back here you coward! I will not accept such battle\n")
       putStrLn("Ahahah! You actually ran away from him. He will be really annoyed.\n")
       putStrLn("You are now heading back to " ++ show floor)
       option floor 
--then the user is sent to Second Floor 
   else if (command == "Quit") then do 
--else if the user types Quit
       putStrLn ("You cannot leave the game, go fight the demon god!!!\n")
       option floor
--sends a message to the user that they cannot leave the game
   else do 
--else do
       putStrLn("Please enter a valid command!\n")
       option floor
--asks the user to enter a valid command

------------------------------------------------Actual Final Floor--------------------------------------------------

mainFloor floor command = do 
--mainFloor floor command function 
   putStrLn("You reached the final floor!\n")
   putStrLn("You will now face the Final Boss Velo.\n")
   putStrLn("It was nice knowing you...\n")
   putStrLn("Just kidding. You still have a chance- I think.\n")
   putStrLn("Velo: Hello Mortal! It is I, Velo the Superior Being!\n")
   putStrLn("Velo: Do you have what it takes to beat me?\n")
   putStrLn("Ok, this may be our last adventure or maybe not. But give it your all!\n")
   putStrLn("If you want to leave this game that is. Hehe.\n")
   putStrLn("Velo: You seriously talk too much Game Master. Maybe I should kill you!\n")
   putStrLn("Alright, I'll leave. Good luck, go defeat Velo and escape this game!\n")
   putStrLn("You have been approached by Final Boss Velo the Supreme Being. What will you do?\n")
--intro message   
   putStrLn("Please type a command. --Fight --Die --Run --Quit \n")
--ask the user to enter the following command
   if (command == "Fight") then do 
--if the user types Fight
       completedGame
--then call the function completedGame
   else if (command == "Die")then do 
--else if the user types Die
       floor <-return 0
       putStrLn("Velo: Hahaha, you punny human. Did you really think you had a chance against me?\n")
       putStrLn("You have been incinerated by Final Boss Velo...\n")
       putStrLn("Well RIP you can try again!\n")
       putStrLn("Teleporting to " ++show floor)
       option floor 
--then the user is sent to Respawn Area
   else if (command == "Run") then do 
--else if the user types Run
       floor <-return 3
       putStrLn("Velo: Run! Run! Keep running you punny human!\n")
       putStrLn("Well thats a safety strat, right?\n")
       putStrLn("You are now heading back to " ++ show floor)
       option floor 
--then the user is sent to Third Floor 
   else if (command == "Quit") then do 
--else if the user types Quit
       putStrLn ("You cannot leave the game, go fight the Velo first!!!\n")
       option floor
--sends a message that the user cannot quit the game
   else do
--else do  
       putStrLn("Please enter a valid command!\n")
       option floor 
--asks the user to enter a valid command 


--------------------------------------------completed game message--------------------------------------------

completedGame = do
--completedGame function
   putStrLn("Velo: Impossible! How can a mere human beat a supreme being like me...\n")
   putStrLn("Congratualations! I knew you would do it! Well kinda...\n")
   putStrLn("Here is my gift to you.\n")
   putStrLn("NOTICE: YOU ARE NOW ABLE TO COMPLETE AND LEAVE THE GAME\n")
   putStrLn("You have now completed the game! How was it? Fun?\n")
   putStrLn("Well making this game was fun for me but the amount of bugs and errors gave me a headache!\n")
   putStrLn("Well bye now. Hope we meet again soon...\n")
   putStrLn("Finito")
--this message will appear when user completes the game
