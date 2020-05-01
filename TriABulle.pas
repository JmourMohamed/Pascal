Program TRIABulle;
uses wincrt;


Type
	Tab = Array [1..100] of Integer;

	Procedure saisie (var T: tab; N: Integer);
	var
		i: Integer;
	Begin

		for i:=1 to  N Do
		Begin
				WriteLn('Donner la case N',i);
				Readln(T[i]);
		end;
	end;

	Procedure Afficher(T: tab; N: Integer);
			var
			i : Integer;
	Begin
			for i:=1 to N do
				Write('T[',i,']=',T[i], ' ');
	end;

	Procedure Tri(var T: tab; N: Integer);
	var i, j, tmp : Integer;
	Begin
			for i:=N-1 DownTo 1	 Do
			begin
				for j:= 1 to i do
					if (T[j]>T[j+1]) then
						Begin
							 tmp := T[j+1];
							 T[j+1]:=T[j];
							 T[j]:= tmp;
						end;
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