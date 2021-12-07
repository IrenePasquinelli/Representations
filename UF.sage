from sage.structure.list_clone_demo import IncreasingLists

def factors(p,n):
    aux=(p.degree())-len(SR(p).roots(ring=CyclotomicField(n)))
    if aux==0:
        print('The polynomial factors in the CyclotomicField ',n)
    else:
        print('The polynomial does not factor')
    return aux

def orbits(P,G):
    Orbits=list()
    x=IncreasingLists()(range(len(P)))
    n=0;
    while len(x)>0:
        obaux=list()
        j=x[0];
        k=0;
        while j<(len(P)):
            while k<len(G):
                aux0=(G[k])(P[j][0])
                aux1=(G[k])(P[j][1])
                aux2=(G[k])(P[j][2])
                if aux0-G[0](P[x[0]][0])==0 and aux1-G[0](P[x[0]][1])==0 and aux2-G[0](P[x[0]][2])==0:
                    obaux.append(j)
                    k=len(G)
                else:
                    k=k+1
            k=0;
            j=j+1;
        n=n+1;
        print('Orbit',n,':',obaux)
        Orbits.append(obaux)
        with x.clone() as xaux:
            for i in range(len(obaux)):
                xaux.remove(obaux[i])
            xaux
        x=IncreasingLists()(xaux)
    return Orbits

def ispartition(O,n):
    k=0
    for i in range(len(O)):
        k=k+len(O[i])
    if n-k==0:
        print('The orbits induce a partition on the solutions')
    else:
        print('The orbits does not induce a partition')
        
def solutions(roots,G,Pol):
    SB=[];
    for i in range(len(roots)):
        auxbasis=list();
        for j in range(len(G)):
            aux=G[j].substitute(r2=roots[i])
            if aux==0:
                continue
            else:
                auxbasis.append(aux);
         
        Jaux=Pol.ideal(auxbasis)
        Gaux=Jaux.groebner_basis(Jaux)
        SB.append(Gaux)
    return SB
    
def polrel(A):
    aux=[A[0,1],A[0,2],A[1,0],A[1,2],A[2,0],A[2,1],A[0,0]-A[1,1],A[1,1]-A[2,2]]
    return aux

def R1pob(ob,sol,F):
    R1aux=list()
    for i in range(len(ob)):
        aux=matrix(F,[[1,-sol[ob[i]][1],sol[ob[i]][1]],[0,1-sol[ob[i]][2],sol[ob[i]][2]],[0,1-sol[ob[i]][2]-sol[ob[i]][0],sol[ob[i]][2]+sol[ob[i]][0]]]);
        R1aux.append(aux)
    return R1aux
   
def RepDM(p,k,J,R,Pol):
    System=list();
    aux0=R^p;
    eqaux0=polrel(aux0)
    aux1=(R*J)^(2*k);
    eqaux1=polrel(aux1)
    aux=R^(p-1)
    aux2=R*J*R*J*J*R*J*aux*J*J*aux*J*aux*J*J
    eqaux2=polrel(aux2)
    for i in range(8):
        System.append(eqaux0[i])
        System.append(eqaux1[i])
        System.append(eqaux2[i])
    auxl=(1/2-1/p-1/k);
    auxd=(1/2-3/p);
    if auxl>0:
        l=1/auxl;
        aux3=(R*J*J)^(2*l)
        eqaux3=polrel(aux3)
        for i in range(8):
            System.append(eqaux3[i]);
   
    if auxd>0:
        d=auxd;
        aux4=(R*J*R*J*J)^(3*d)
        eqaux4=polrel(aux4)
        for i in range(8):
            System.append(eqaux4[i])
    
    Jaux=Pol.ideal(System)
    Gaux=Jaux.groebner_basis(prot='singular:stdfglm')
    return Gaux
    
def ypol(G,Pol):
    Auxideal=Pol.ideal(G)
    yideal=Auxideal.elimination_ideal([r1,r2])
    ydp=yideal.gens();
    print('Polynomial describing y:', ydp[0])
    return ydp