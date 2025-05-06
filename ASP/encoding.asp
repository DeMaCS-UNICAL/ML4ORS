{x(ID,P,OR,DAY,SHIFT,TS): TS+DUR <= shift_duration} :- registration(ID,P,SP,DUR), mss(OR,SP,SHIFT,DAY), time(SHIFT,TS).
:- #count{P,OR,DAY,SHIFT,TS: x(ID,P,OR,DAY,SHIFT,TS)} > 1, registration(ID,_,_,_).
:- #count{ID: x(ID,_,OR,DAY,SHIFT,TS), registration(ID,_,_,DUR), T >= TS, T < TS+DUR} > 1, mss(OR,_,SHIFT,DAY), time(SHIFT,T).
:- not x(ID,_,_,_,_,_), registration(ID,1,_,_).
:~ not x(ID,_,_,_,_,_), registration(ID,P,_,_). [1@7-P, ID]
:- #count{ID: x(ID,_,_,"OR A",_)} > 1.

sumConfidence(DAY, OR, N) :- mss(OR, _, _, DAY), #sum{L, ID: confidence(ID, L), x(ID, _, OR, DAY, _, _)} = N.
maxConfidenceDay(N) :- #max{L: sumConfidence(_, _, L)} = N.
minConfidenceDay(N) :- #min{L: sumConfidence(_, _, L)} = N.
:~ maxConfidenceDay(N). [N@2]
:~ maxConfidenceDay(MAX), minConfidenceDay(MIN), MAX-MIN > 0. [MAX-MIN@1]