# translit-Case-Sensitivity
salut_translit.bat 
                  Transforma litere rusesti (Cyrillic) in litere Latine si invers
                  in plus pastreaza(!!!) litere Mari si mici la locul lor: 
                              Case Sensitivity / Чувствительность к регистру символов
                  poate fi folosit in mai multe feluri

                  Pentru a transforma din Latina in Cyrillic textu tre sa inceapa cu: -ru-
                  Ex: salut_translit -ru-Mama
                  Rezultat: Мама
                  
                  Textul nu tre sa contina spatii, daca el este introdus ca parametru
                  Ex: salut_translit -ru-Mama_Papa
                  Rezultat: Мама Папа
                  Ex: salut_translit -ru-mama papa <-[contine spatii]
                  Rezultat: o sa apara mesaj de ajutor cu explicatii

                  Daca vrem sa transformam un fisier *.txt il putem scrie ca parametrul la programa
                  Ex: salut_translit mama.txt
                  Rezultat: vom avea un fisier nou creat mama_l.txt (din Cyrillic in Latina)
                  sau
                  Rezultat: vom avea un fisier nou creat mama_c.txt (din Latina in Cyrillic)
                  in acest caz fiecare rind din fisier tre sa inceapa tot cu: -ru-

                  Daca pornim programa fara parametri, 
                  o sa apara posibilitatea de a introduce text de la tastatura
                  daca transformam text din Latina el tot tre sa inceapa cu -ru-
                  Ex: salut_translit [Enter]
                      Gu: -ru-Mama
                      Emi: Мама
