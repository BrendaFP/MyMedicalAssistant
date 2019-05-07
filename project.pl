%Brenda Flores Parada
%A01206527
%Project
%Medical diagnostic

% This is the list of diseases and their symptoms
disease(Patient,cold):-
				symptom(Patient,cough),
				symptom(Patient,sore_throat),
        symptom(Patient,sneezing),
        symptom(Patient,runny_nose),
        symptom(Patient,headache).

disease(Patient,asthma):-
        symptom(Patient,cough),
        symptom(Patient,shortness_of_breath),
        symptom(Patient,wheezing),
        symptom(Patient,chest_tightness).

disease(Patient,influenza):-
        symptom(Patient,cough),
        symptom(Patient,fever),
        symptom(Patient,chills),
        symptom(Patient,sore_thoat),
        symptom(Patient,headache),
        symptom(Patient,muscle_aches),
        symptom(Patient,fatigue).

disease(Patient,bronchitis):-
				symptom(Patient,cough),
				symptom(Patient,wheezing),
				symptom(Patient,shortness_of_breath),
				symptom(Patient,fever),
				symptom(Patient,throat_sore),
				symptom(Patient,night_sweat),
				symptom(Patient,labored_breathing),
				symptom(Patient,snuffle),
				symptom(Patient,chill).

disease(Patient,gastritis):-
				symptom(Patient,pain_abdominal),
				symptom(Patient,vomiting),
				symptom(Patient,nausea),
				symptom(Patient,decreased_body_weight),
				symptom(Patient,sore_to_touch),
				symptom(Patient,dizziness).

disease(Patient,colitis):-
				symptom(Patient,fever),
				symptom(Patient,thicken),
				symptom(Patient,vomiting),
				symptom(Patient,nausea),
				symptom(Patient,awakening_early),
				symptom(Patient,pain),
				symptom(Patient,pain_abdominal).

disease(Patient,sinusitis):-
        symptom(Patient,sinus_headache),
        symptom(Patient,facial_tenderness),
        symptom(Patient,preassure_in_the_ears),
        symptom(Patient,fever),
        symptom(Patient,cloudly_discolored_nasal),
        symptom(Patient,sore_thoroat),
        symptom(Patient,cough).

disease(Patient,pneumonia):-
        symptom(Patient,fever),
        symptom(Patient,chills),
        symptom(Patient,cough),
        symptom(Patient,shortness_of_breath),
        symptom(Patient,fatigue),
				symptom(Patient,breath_sounds_decreased),
				symptom(Patient,wheezing).

disease(Patient,arthritis):-
        symptom(Patient,joint_stiffness),
        symptom(Patient,swelling),
        symptom(Patient,redness),
        symptom(Patient,pain),
        symptom(Patient,warmth).

disease(Patient,lupus):-
        symptom(Patient,appetite_loss),
        symptom(Patient,joint_pain),
        symptom(Patient,hair_loss),
        symptom(Patient,fever),
        symptom(Patient,fatigue),
        symptom(Patient,photosensitivity),
        symptom(Patient,pleuritis),
        symptom(Patient,pericarditis).

disease(Patient,depression):-
        symptom(Patient,suicidal_feeling),
        symptom(Patient,hopelessness),
        symptom(Patient,lack_of_interest_in_daily_activities),
        symptom(Patient,irritability),
        symptom(Patient,loss_of_energy),
        symptom(Patient,sleep_problems),
        symptom(Patient,loss_of_apetite),
				symptom(Patient,sleeplessness),
				symptom(Patient,unable_to_concetrate).

disease(Patient,hypertension):-
				symptom(Patient,pain_chest),
				symptom(Patient,shortness_of_breath),
				symptom(Patient,dizziness),
				symptom(Patient,asthenia),
				symptom(Patient,fall),
				symptom(Patient,syncope),
				symptom(Patient,vertigo),
				symptom(Patient,sweating_increased),
				symptom(Patient,nausea),
				symptom(Patient,pressure_chest).

disease(Patient,diabetes):-
				symptom(Patient,vomiting),
				symptom(Patient,shortness_of_breath),
				symptom(Patient,pain_chest),
				symptom(Patient,labored_breathing),
				symptom(Patient,nausea),
				symptom(Patient,sweating_increased),
				symptom(Patient,unresponsiveness),
				symptom(Patient,sweating_increased),
				symptom(Patient,mental_status_changes),
				symptom(Patient,vertigo).

disease(Patient,anxiety_state):-
				symptom(Patient,worry),
				symptom(Patient,irritable_mood),
				symptom(Patient,sleeplessness),
				symptom(Patient,hopeless_feelings),
				symptom(Patient,blackout),
				symptom(Patient,nervousness),
				symptom(Patient,hallucinations_visual),
				symptom(Patient,formication),
				symptom(Patient,agitation),
				symptom(Patient,depressed_mood).

% This is some information about the disease
info(cold,'The common cold is a viral infection of your nose and throat (upper respiratory tract). Its usually harmless, although it might not feel that way. Many types of viruses can cause a common cold.').
info(asthma,'Asthma is a chronic disease of the airways that transport air to and from the lungs. No full cure is available, but management methods can help a person with asthma lead a full and active life.').
info(influenza,'Influenza, commonly called "the flu," is caused by viruses that infect the respiratory tract. Compared with most other respiratory infections, such as the common cold, the flu often causes a more severe illness.').
info(bronchitis,'Bronchitis is an inflammation of the lining of your bronchial tubes, which carry air to and from your lungs.').
info(gastritis,'Gastritis is a general term for a group of conditions with one thing in common: inflammation of the lining of the stomach. The inflammation of gastritis is most often the result of infection with the same bacterium that causes most stomach ulcers').
info(colitis,'Colitis refers to inflammation of the inner lining of the colon.').
info(sinusitis,'Sinusitis is a common condition in which the lining of the sinuses becomes inflamed. Its usually caused by a viral infection and often improves within two or three weeks.').
info(pneumonia,'Pneumonia is an infection in one or both lungs. It can be caused by bacteria, viruses, or fungi. Bacterial pneumonia is the most common type in adults.').
info(arthritis,'Arthritis is an inflammation of the joints. It can affect one joint or multiple joints. ').
info(lupus,'Lupus is a long-term autoimmune disease in which the bodys immune system becomes hyperactive and attacks normal, healthy tissue.').
info(depression,'Depression is a common and serious medical illness that negatively affects how you feel, the way you think and how you act. ').
info(hypertensive_disease,'Hypertension is another name for high blood pressure. It can lead to severe complications and increases the risk of heart disease, stroke, and death.').
info(diabetes,'Diabetes is a disease that occurs when your blood glucose, also called blood sugar, is too high. ').
info(anxiety_state,'Anxiety state is  an episode of usually intense anxiety, a temporary condition during which a person experiences significant levels of anxiety').


% I declared a dynamic predicate to informs the interpreter that the definition
% of the predicate can change during the execution of the program.
% I used ans to save the answer for the symptoms questions.
:- dynamic ans/3.

% This method receives the name of the Patient, and return the Disease if it exist.
% This method call all the questions to ask.
symptom(_Patient, Disease):-ask('Do you have ',Disease).

% It recieves all the symptoms and ask them to the user.
% If the user enter 'y' then it ask for the next symptom, otherwise if ask for
% the symptoms to the next disease.
ask(Question, Disease):-ans(Question, Disease, true),!.
ask(Question, Disease):-ans(Question, Disease, false),!, fail.
ask(Question, Disease):-nl,write(Question),
												write(Disease),
                        write('?(y/n)'),
                        read(Answer),!,
									((Answer=y, assert(ans(Question, Disease, true)));
                        (assert(ans(Question, Disease, false)),fail)).

% This is the principal method, it ask for your name and then call the
% method to start with the questions, it also saves patients prescription
% on a file.
diagnose:-nl,write('------------------------------------------------'),nl,
				write('Welcome to your medical assistant'),nl,
				write('------------------------------------------------'),nl,
        nl,write('What is your name? (in lowercase)'),nl,nl,
        read(Patient),nl,
        write('Hi '),
        write(Patient),nl,
				write('Please answer the next questions...'),nl,nl,
        disease(Patient,Disease) ,!,nl,nl,
				write('-----Your Disease-----'),nl,nl,
        write(Patient),
        write(' you have '),
        write(Disease),nl,
        nl,info(Disease,Inf),
        write(Inf),nl,nl,nl,
				write('Do you want to save your information? (y/n)'),
				read(Res),
				\+ Res=n,nl,
				write('Enter the path of file where you want to save your information'),nl,
				write("For example: 'C:/Users/brend/Documents/my_information.txt'."),nl,nl,
				read(File),
				tell(File),
				write('Patient: '),write(Patient),nl,
				write('Disease: '),write(Disease),nl,
				write('Information: '),write(Inf),nl,nl,nl,
				write(''),nl,
				nl,told,
				nl,write("Your information is saved").

% An auxiliar when the program can not diagnose any disease.
diagnose:- nl, write('We are not able to diagnose the disease.').

% When you enter 'start.' in the console, it runs the program.
start:-repeat,abolish(ans/3),dynamic(ans/3),
				diagnose,nl,
        nl,nl,write('Do you want to try again ? (y/n)'),
        read(Resp),
        \+ Resp=y,nl.

% The symtoms and diseases are from
% https://www.medicinenet.com/diseases_and_conditions/article.htm
% https://www.mayoclinic.org/diseases-conditions/common-cold/symptoms-causes/syc-20351605
% https://www.medicalnewstoday.com/articles/323523.php
% https://www.webmd.com/cold-and-flu/qa/what-is-influenza
% http://people.dbmi.columbia.edu/~friedma/Projects/DiseaseSymptomKB/index.html
% https://www.medicinenet.com/colitis/article.htm
% https://www.mayoclinic.org/diseases-conditions/gastritis/symptoms-causes/syc-20355807
% https://www.nhsinform.scot/illnesses-and-conditions/ears-nose-and-throat/sinusitis
% https://www.healthline.com/health/pneumonia
% https://www.healthline.com/health/arthritis
% https://www.medicalnewstoday.com/articles/323653.php
% https://www.psychiatry.org/patients-families/depression/what-is-depression
% https://www.medicalnewstoday.com/articles/150109.php
% https://www.niddk.nih.gov/health-information/diabetes/overview/what-is-diabetes
% https://www.merriam-webster.com/dictionary/anxiety%20state
