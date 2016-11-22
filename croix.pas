program croix;

uses crt;

//algorithme croix
//BUT faire une croix avec un caractere
//ENTRER un caractere
//SORTIE la croix
//VAR
//        espace,ligne,espace1,espacebis,espace1bis:chaine
//       lettre:carcatere
//        i,taille,t,compteur,test,moitier:entier
//DEBUT
//        ECRIRE " Entrer une lettre:"
//        LIRE lettre
//        ECRIRE " Entrer la taille de la croix"
//        LIRE  taille
//        test<--taille MOD 2;
//        SI test=0 alors
//                        compteur<--0
//                        t<--(taille-2) div 2
//                        Pour i de 1 a t faire
//                                        espace1<--espace1+' '
//	          FINPOUR
//                        Pour i de t a 0 faire
//                                        ligne<--espace+lettre+espace1+espace1+lettre+espace
//                                        espace<--espace+' '
//                                        compteur<--compteur+1
//                                        espace1<--EXTRACTION(espace1,0,t-compteur)
//                                        ECRIRE ligne
//	          FINPOUR
//                        espace<-- ''
//                        espace1<--''
//                        compteur<--0
//                        pour i de 1 a t faire
//                                        espace1<--espace1+' '
//	          FINPOUR
//                        pour i det a 0 faire
//                                        ligne<--espace1+lettre+espace+lettre+espace
//                                        espace<--espace+' '
//                                        espace<--espace+' '
//                                        compteur<--compteur+1
//                                        espace1<--EXTRACTION(espace1,1,t-compteur)
//                                        ECRIRE " ligne"
//	        FINPOUR
//        SINON
//                        t<--(taille-2) div 2
//                        espace1<--''
//                        espace<--''
//                        pour i de 1 a t faire
//                                        espace1<--espace1+' '
//	         FINPOUR
//                        pour i de t a 0 faire
//                                        ligne<--espace+lettre+espace1+' '+espace1+lettre+espace
//                                        espace<--espace+' '
//                                        compteur<--compteur+1
//                                        espace1<--EXTRACTION(espace1,1,t-compteur)
//                                       ECRIRE ligne
//	          FINPOUR
//                        moitier<--(taille-1) div 2
//                        espace<--''
//                        pour i de 1 a moitier faire
//                                        espace<--espace+' '
//                                        ligne<--espace+lettre
//	          FINPOUR
//                                        ECRIRE " ligne"
//                                        espace<--''
//                                        espace1<--''
//                                        compteur<--0
//                        pour i de 1 a t faire
//                                        espace1<--espace1+' '
//                       FINPOUR
//                        pour i de t a 0 faire
//                                        ligne<--espace1+lettre+espace+' '+lettre+espace1
//                                        espace<--espace+' '
//                                        espace<--espace+' '
//                                        compteur<--compteur+1
//                                        espace1<--EXTRACTION(espace1,1,t-compteur)
//                                        ECRIRE " ligne"
//	       FINPOUR
//     FINSI
//FIN

VAR
        espace,ligne,espace1,espacebis,espace1bis:string;
        lettre:char;
        i,taille,t,compteur,test,moitier:integer;
BEGIN
        clrscr;
        writeln('Entrer une lettre:');
        readln(lettre);
        writeln('Entrer la taille de la croix');
        readln(taille);
        test:=taille MOD 2;
        if test=0 then
                begin
                        compteur:=0;
                        t:=(taille-2) div 2;
                        for i:=1 to t do
                                 begin
                                        espace1:=espace1+' ';
                                 end;
                        for i:=t downto 0 do
                                 begin
                                        ligne:=espace+lettre+espace1+espace1+lettre+espace;
                                        espace:=espace+' ';
                                        compteur:=compteur+1;
                                        espace1:=copy(espace1,0,t-compteur);
                                        writeln(ligne);
                                 end;
                        espace:='';
                        espace1:='';
                        compteur:=0;
                        for i:=1 to t do
                                begin
                                        espace1:=espace1+' ';
                                end;
                        for i:=t downto 0 do
                                begin
                                        ligne:=espace1+lettre+espace+lettre+espace1;
                                        espace:=espace+' ';
                                        espace:=espace+' ';
                                        compteur:=compteur+1;
                                        espace1:=copy(espace1,1,t-compteur);
                                        writeln(ligne);

                                end;
                end
        else
                begin
                        t:=(taille-2) div 2;
                        espace1:='';
                        espace:='';
                        for i:=1 to t do
                                begin
                                        espace1:=espace1+' ';
                                end;
                        for i:=t downto 0 do
                                begin
                                        ligne:=espace+lettre+espace1+' '+espace1+lettre+espace;
                                        espace:=espace+' ';
                                        compteur:=compteur+1;
                                        espace1:=copy(espace1,1,t-compteur);
                                        writeln(ligne);
                                end;
                        moitier:=(taille-1) div 2;
                        espace:='';
                        for i:=1 to moitier do
                                begin
                                        espace:=espace+' ';
                                end;
                                        ligne:=espace+lettre;
                                        writeln(ligne);
                                        espace:='';
                                        espace1:='';
                                        compteur:=0;
                        for i:=1 to t do
                                begin
                                        espace1:=espace1+' ';
                                end;
                        for i:=t downto 0 do
                                begin
                                        ligne:=espace1+lettre+espace+' '+lettre+espace1;
                                        espace:=espace+' ';
                                        espace:=espace+' ';
                                        compteur:=compteur+1;
                                        espace1:=copy(espace1,1,t-compteur);
                                        writeln(ligne);

                                end;
                end;

        readln;
END.

