Read("rubik.gap");
LogTo("rubik-pll-lattice.fullpll.txt");

PLLsInGrp:=function(G)
    local c;
    Print("\nPLLs:");
    for c in [1..Length(PLLs)] do
        if PLLs[c] in G then
            Print(" ");
            Print(PLLnm[c]);
        fi;
    od;
end;

PPLGrpInfo:=function(G)
        Print("\nIndex: ");
        Print(288/Order(G));
        Print("\nOrder: ");
        Print(Order(G));
        Print("\nGroup: ");
        Print(StructureDescription(G));
        PLLsInGrp(G);
        Print("\n");
end;

# Level 1
for a in [1..Length(PLLs)] do
        x:=PLLs[a];
        G:=Group([U,x]);
        if Order(G) <> 288 then
            continue;
        fi;
        Print("\n<U,");
        Print(PLLnm[a]);
        Print(">");
        #PPLGrpInfo(G);
od;

# Level 2
for a in [1..Length(PLLs)] do
    for b in [a+1..Length(PLLs)] do
        x:=PLLs[a];
        y:=PLLs[b];
        G:=Group([U,x,y]);
        if Order(G) <> 288 then
            continue;
        fi;
        Print("\n<U,");
        Print(PLLnm[a]);
        Print(",");
        Print(PLLnm[b]);
        Print(">");
        #PPLGrpInfo(G);
    od;
od;

# Level 3
# none are printed
for a in [1..Length(PLLs)] do
    for b in [a+1..Length(PLLs)] do
    for c in [b+1..Length(PLLs)] do
        x:=PLLs[a];
        y:=PLLs[b];
        z:=PLLs[c];
        G:=Group([U,x,y,z]);
        if Order(G) <> 288 then
            continue;
        fi;
        Ga:=Group([U,y,z]);
        Gb:=Group([U,x,z]);
        Gc:=Group([U,x,y]);
        #if G <> Ga and G <> Gb and G <> Gc then
            Print("\n<U,");
            Print(PLLnm[a]);
            Print(",");
            Print(PLLnm[b]);
            Print(",");
            Print(PLLnm[c]);
            Print(">");
            #PPLGrpInfo(G);
        #fi;
    od;
    od;
od;
