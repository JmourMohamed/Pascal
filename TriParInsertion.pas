Program TRIParInsertion;
uses wincrt;

Type
	Tab = Array [1..100] of Integer;     // [0..100]

	Procedure saisie (var T: tab; N: Integer);
	var
		i: Integer;
	Begin

		for i:=1 to  N Do     //0 to n -1
		Begin
				WriteLn('Donner la case N',i);
				Readln(T[i]);
		end;
	end;

	Procedure Afficher(T: tab; N: Integer);
			var
			i : Integer;
	Begin
			for i:=1 to N do     //0 to n-1
				Write('T[',i,']=',T[i], ' ');
				WriteLn(' ');
	end;

	Procedure Tri(var T: tab; N: Integer);
	var i, j, tmp : Integer;
	Begin
			for i:=2 to N Do 
			begin
			  tmp := T[i];
				j:=i;
				while((j>1) and (T[j-1]>tmp)) do                
						Begin
							 T[j]:=T[j-1];                           
							 j:=j-1;
						end;
				T[j]:=tmp;
				Afficher(T,N);
			end;
	End;
var
	i, j,n,  x : Integer;
	 T: tab;
Begin
	WriteLn('Donner la valeur de n');
	readln(n);
	//Saisie du tableau
	saisie(T,n);
	//Affichage du tableau non trié
	Afficher(T,n);
	//Appliquer le tri
	Tri(T,n);
	//Affichage du tableau trié
	WriteLn('Voici le tableau trié');
	Afficher(T,n);

end.