% Medical Diagnosis Expert System

symptom(fever, flu).
symptom(cough, flu).
symptom(headache, flu).

symptom(fever, malaria).
symptom(chills, malaria).
symptom(sweating, malaria).

symptom(cough, cold).
symptom(sneezing, cold).
symptom(runny_nose, cold).

symptom(fever, pneumonia).
symptom(cough, pneumonia).
symptom(chest_pain, pneumonia).

diagnosis(Fever, Cough, Headache, Chills, Sweating,
          Sneezing, RunnyNose, ChestPain, Disease) :-
    ( Fever = yes, Cough = yes, Headache = yes ->
        Disease = flu
    ; Fever = yes, Chills = yes, Sweating = yes ->
        Disease = malaria
    ; Cough = yes, Sneezing = yes, RunnyNose = yes ->
        Disease = cold
    ; Fever = yes, Cough = yes, ChestPain = yes ->
        Disease = pneumonia
    ; Disease = unknown
    ).

start :-
    write('MEDICAL EXPERT SYSTEM'), nl,
    write('Enter yes/no for the following symptoms.'), nl, nl,

    write('Fever: '), read(Fever),
    write('Cough: '), read(Cough),
    write('Headache: '), read(Headache),
    write('Chills: '), read(Chills),
    write('Sweating: '), read(Sweating),
    write('Sneezing: '), read(Sneezing),
    write('Runny nose: '), read(RunnyNose),
    write('Chest pain: '), read(ChestPain),

    diagnosis(Fever, Cough, Headache, Chills, Sweating,
              Sneezing, RunnyNose, ChestPain, Disease),
    nl,
    write('Possible Diagnosis: '), write(Disease), nl.
