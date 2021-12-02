
G:=Group(U,Tp);
Order(G);
StructureDescription(G);
# gap> 96
# gap> "(C2 x C2 x A4) : C2"


G:=Group(U,Yp);
Order(G);
StructureDescription(G);
# gap> 96
# gap> "(A4 : C4) : C2"


G:=Group(U,Ap);
Order(G);
StructureDescription(G);
# gap> 48
# gap> "A4 : C4"


G:=Group(U,Up);
Order(G);
StructureDescription(G);
# gap> 48
# gap> "A4 : C4"


G:=Group(U,Ap,Up);
Order(G);
StructureDescription(G);
# gap> 288
# gap> "(A4 x A4) : C2"


G:=Group(U,Tp,Up);
Order(G);
StructureDescription(G);
# gap> 288
# gap> "(A4 x A4) : C2"


G:=Group(U,Tp,Yp);
Order(G);
StructureDescription(G);
# gap> 288
# gap> "(A4 x A4) : C2"

G:=Group(U,Hp);
Order(G);
StructureDescription(G);
# gap> 8
# gap> "C4 x C2"

G:=Group(U,Zp);
Order(G);
StructureDescription(G);
# gap> 16
# gap> "(C4 x C2) : C2"


G:=Group(U,Ep);
Order(G);
StructureDescription(G);
# gap> 16
# gap> "(C4 x C2) : C2"


Group(U,Zp) = Group(U,Ep);
# false


G:=Group(U,Vp);
Order(G);
StructureDescription(G);
# gap> 96
# gap> "(A4 : C4) : C2"


Group(U,Tp) = Group(U,Vp);
# false

Group(U,Yp) = Group(U,Vp);
# true

Group(U,Tp) = Group(U,Fp);
# true

G:=Group(U,Jap);
Order(G);
StructureDescription(G);
# gap> 24
# gap> "S4"

Group(U,Jap) = Group(U,Jbp);
# false

G:=Group(U,Gap);
Order(G);
StructureDescription(G);
# 96
# gap> "((C2 x C2 x C2 x C2) : C3) : C2"

Group(U,Gap) = Group(U,Gcp);
# false

Group(U,Nap) = Group(U,Nbp);
# false

# gap> Up in Group(U,Tp);
# false
# gap> Ap in Group(U,Tp);
# true
