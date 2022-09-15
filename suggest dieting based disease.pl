go:-
hypothesis(disease),
write('i belive that the patient have : '),
write(disease),
nl,
write('Take care'),
undo.

/*hypothesis that should be treated */
hypothesis(cold):-cold,!.
hypothesis(flu):- flu,!.
hypothesis(typhoid):-typhoid,!.
hypothesis(malarie):-maleria,!.
hypothesis(unknown):- not_diagnosis.

/*hypothesis identification rules*/
cold:-
verify(headache),
verify(sneezing),
verify(running_nose),
verify(high_temperature),
write('advise and suggestion'),
nl,
write('1. tylenol/tab'),
nl,
write('2. panadol/tab'),
nl,
write('3. nasal spray/tab'),
n1,
write('please wear warm cloth'),
n1.


flu:-
verify(fever),
verify(headache),
verify(chillness),
verify(body_pain),
write('advise and suggestions'),
nl,
write('1. tamiflu/tab'),
nl,
write('2.panadol/tab'),
nl,
write('3.zanamivir.tab'),
nl.

typhoid:-
verify(headache),
verify(abnormal_pain),
verify(fever),
verify(poor_appetite),
write('advise and suggestons'),
nl,
write('1.chloramphenicol/tab'),
nl,
write('2.ciprofloxacin/tab'),
nl,
write('3.amoxicillin/rab'),
nl.


maleria:-
verify(fever),
verify(sweating),
verify(headache),
verify(vomiting),
verify(diarrhea),
write('advise and suggestions '),
nl,
write('aralen/tab'),
nl,
write('plaquenil/tab'),
n1,
write('mefloquine/tab'),
n1.

/*how to ask question*/
ask(question):-
write('does the patient have following symptoms : '),
write(question),
write('?'),
read(response),
n1,
((response == yes ; response == y)
->
assert(yes(question));
assert(no(question)), fail).

:-dynamic yes/1,no/1.
/*how to verify something */
verify(s):-
(yes(s)
->
true;
(no(s)
->
fail;
ask(s))).

/* undo all yes:no assertions*/
undo:-retract(yes(_)),fail.
undo:-retract(no(_)),fail.
undo.










