lst:=[2,3,5,7];
for a in [1..Length(lst)] do
    for b in [a+1..Length(lst)] do
        x:=lst[a];
        y:=lst[b];
        Print([x,y]);
        Print("\n");
    od;
od;
