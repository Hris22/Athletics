:- use_rendering(table,[header(d('Име', 'Троен скок',
'Хвърляне на копие','Бягане на 100 метра'))]).
athletes(At):-
    length(At,4),
    member(d(bobi,_,_,3),At),
    member(d(angel,4,_,_),At),
    member(d(valio,_,3,_),At),
    member(d(mitko,_,_,_),At),
    (member(d(valio,_,3,_),At),member(d(mitko,_,4,_),At)),
    member(d(_,2,1,_),At),
    member(d(_,_,2,1),At),
    not(member(d(bobi,_,2,1),At)),
    not(member(d(valio,_,2,1),At)),
    not(member(d(mitko,_,2,1),At)),
    not(member(d(angel,2,1,_),At)),     
    not(member(d(valio,2,1,_),At)), 
    not(member(d(mitko,2,1,_),At)), 
    (member(d(valio,1,3,_),At),member(d(mitko,3,4,_),At)),
    (member(d(valio,1,3,2),At),member(d(mitko,3,4,4),At)),
     At=[d(bobi,_,_,_),d(angel,_,_,_),d(valio,_,_,_),d(mitko,_,_,_)]. 

