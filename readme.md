NOTE 10.02.2021
The project is accessible on the Heroku platform. However due to the Heroku deploying policies, after 1-hour of not using, the app is put into the "asleep mode". It makes it necessary to rebuild the app after it is in asleep mode and hence - all posts added after the deploy (which were not in the original database stored in GitHub) are purged.

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

Apka wystawiona jest we flasku korzystając z paczek z requirements.txt i serwisu Heroku.

Running:

python app.py -> localhost:5000

