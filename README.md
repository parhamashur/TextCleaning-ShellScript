# TextCleaning-ShellScript
Shell script to clean chat files and extract information.

In a project I needed to extract part of chat transcripts to new text file. There were more than 400 files where I wanted to:1) take the age and put it as part of new file names, 2) extract only what the child says (*CHI), 3) clean all the extra characters, 4) save in a new file.

                Chat example:
                @ID:	fra|Lyon|CHI|1;02.11|female|||Target_Child|||
                @ID:	fra|Lyon|MOT|25;01.18|female|||Mother|||
                @ID:	fra|Lyon|INV|25;01.18|female|||Investigator|||
                @Media:	10211a, video
                @Transcriber:	géraldine hilaire , christelle dodane
                @Date:	27-AUG-2002
                *CHI:	www [= ! crie] . 1945_14005
                *INV:	qu'est ce qu'i(l) y a ?
                %mor:	pro:int|que$v:aux|être&PRES&3s pro:dem|ce pro:rel
                *MOT:	non Moune t(u) as fini de manger . 15982_25097
                %mor:	co|non=no n:prop|Moune pro:subj|tu v:aux|avoir
                %sit:	CHI se dirige vers la chaise+haute .
                *CHI:	www [= ! crie] . 25100_27592
                %sit:	CHI tente de monter sur sa chaise .
                *CHI:	‹www [= ! crie] (.)› yyy . 28100_33457
                %pho:	* ba
                %mod:	* *
                *INV:	ça c'est bien passé avec Rym ?
                %mor:	pro:dem|ça pro:dem|ce$v:aux|être&PRES&3s 
                *INV:	parce que je l'ai pas revue comme elle partait juste après .
                %mor:	adv|parce pro:rel|que pro:subj|je pro:subj|il$v
                *MOT:	oui . 33457_42678
                %mor:	co|oui=yes .
                %sit:	bruits de vaisselle .
                *MOT:	oui .
                %mor:	co|oui=yes .
                *CHI:	xxx . 42678_71410
