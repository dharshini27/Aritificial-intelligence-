/*
domains
  name=symbol

predicates
  mother(name,name)
  father(name,name)
  parent(name,name)
  brother(name,name)
  sister(name,name)
  haschild(name)
  female(name)
  male(name)

clauses
*/
  female(pam).
  female(liz).
  female(pat).
  female(ann).

  male(jim).
  male(bob).
  male(tom).
  male(peter).

  parent(pam,bob).
  parent(tom,bob).
  parent(tom,liz).
  parent(bob,ann).
  parent(bob,pat).
  parent(pat,jim).
  parent(bob,peter).
  parent(peter,jim).

  mother(X,Y):-parent(X,Y),female(X).
  father(X,Y):-parent(X,Y),male(X).
  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X);X\==Y.
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X);X\==Y.
  haschild(X):-parent(X,_).



