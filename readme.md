Dune blog. Flask project for the Internet Technologies course.

Temat:
System rejestracji danych z wykorzystaniem trybu offline przeglądarki.

Założenia i wymagania:

Aplikacja działająca po stronie przeglądarki w trybie online+offline.
W offline - zapis do lokalnej bazy danych i przeglądanie w niej.
(Post, Get)

W online - przesłanie danych klienta do serwisu - może to działać automatycznie albo ręcznie, dane lokalne są po przesłaniu do klienta usuwane.
(Z czym mi się to kojarzy - Steam online/offline and saving the progress)

Walidacja wprowadzanych danych - po stronie przeglądarki by JavaScript i po stronie serwera przez aplikację.
UWAGA: POŁĄCZENIE Z SERWEREM PO UWIERZYTELNIENIU!!!
CZYLI MUSI BYĆ AUTENTYFIKACJA!!! :/
Logowanie itd - dostęp przez sesje.

Input musi mieć indeks - ID które je identyfikuje.

Program w trybie online powinien mieć możliwość analizy danych - histogram, wykres or sth like that.

Połączenie przez REST.


Koncepcje:
Coś z giełdą? Musiałbym pewnie pobierać indeksy, to bit complicated.


1. Learn basics of flask
https://www.youtube.com/c/Coreyms

2. Check how the hell save some stuff for client while he is online?
https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API/Using_IndexedDB

3. Check how to start/create a database and connect to backend
Probably also Corey

4. Check how the heck define REST API methods for a backend/database?
https://towardsdatascience.com/creating-restful-apis-using-flask-and-python-655bad51b24

UWAGA
Tu jest jakiś specjalny flask package do tego
https://flask-restful.readthedocs.io/en/latest/quickstart.html

Various useful commands:
- db.create_all() - makes the database

- db.drop_all() - drops the database

- user_1 = User(username=.....)

- db.session.add(user_1)

-db.session.commit() - adding finally all the changes to the real and created database

User.query.all() - queries all the users

User.query.filter_by(username='Corey').all() - gets all corey user


#corey notes


6: Logging in and registering - and storing it in the DB


Struktura projektu: - docs google/pdf

Podsumowanie na 04/02/2021
- Skończyłem Film 8 Correy'ego Schafera
- Mam działający blog online który ma następujące funkcjonalności:
-> Pozwala rejestrować nowych użytkowników i się logować (baza danych userów)
-> Pozwala im dodawać posty oraz updejtować i usuwać

Question: Is my web app stateless???

To do:
- ogarnąć API Rest do tego -
- ogarnąć IndexedDb - żeby user mógł sobie dodać post online :)
- wystawić to na jakimś serwie
- czy logowanie korzysta z sesji?


Notes:
- the current problem with registering users - you can register infinite number of them on any emails - you are not validating them in any way

Flask Notes and the folder structure:
- By default, Flask is looking into 2 important folders: templates and static.
First one contains our template pages while the second one - css, javascript files etc.

REST API wykorzystywane jest do komunikacji klienta Dockera z daemonem Dockera.

Apka wystawiona jest we flasku korzystając z Dockera.
Wszystkie potrzebne dependencje zawarte są w pliku Dockerfile.


IndexedDB important links:
https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API
https://www.freecodecamp.org/news/a-quick-but-complete-guide-to-indexeddb-25f030425501/
https://javascript.info/indexeddb
https://plnkr.co/edit/veG9pDMaRQvMnY4Y?p=preview&preview
https://javascript.info/article/indexeddb/books/
