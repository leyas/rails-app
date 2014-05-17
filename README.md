== README

http://sl-gists.herokuapp.com/

- Użyłem 
ruby '2.1.1'
gem 'rails', '4.0.4'


- Jako bazy danych wykorzystałem
gem 'sqlite3', '1.3.8' (tryb development)
oraz
gem 'pg', '0.15.1' (tryb produkcyjny)


- Paginacja
Użyłem trzech gemów
gem 'will_paginate', '~> 3.0.5'
gem 'bootstrap-sass', '~> 3.0.3.0'
gem 'will_paginate-bootstrap'

Trzeba było dodać odpowiednią funkcję jquery w folderze assets. W kontrolerze ustawić liczbę wyświetlanych gistów na jednej stronie, a w widoku dodać przycisk paginacji.



- Wyszukiwanie
Spojrzałem jak to zrobił kolega (https://github.com/kaka2991/my_gists) tyle, że ulepszyłem nieco wyszukiwanie. U Damiana w momencie wpisania kryterium języka "c" to znajduje nam także "c#, c++, javascript" ponieważ wyszukuje języka w którym wystepuje litera "c". Poprawiłem to dodając jednego if'a oraz zmieniając zapytanie sql. W kontrolerze pobieramy parametry z url oraz tworzymy z nich condition. W widoku wprowadzamy dane do formularza.

Ukrywanie części kodu na stronie głównej.
Zrobiłem to w widoku, korzystając z .length, wyświetlma pierwsze 100 znaków, po czym dodaję "..." jeśli chodzi o description. W snippet, po prostu ucinam bez dodawania "..."



- Responsywność.
Wszystko napisałem sam w css korzystając z jednoski em, oraz @media. Ustawiłem dla body pewną wartość którą zmieniam w zależności od rozdzielczości. Wszystkie pozostałe wartości zmieniają się poprze em.



Dodatkowo zmieniłem pewną rzecz. Po dodanie gista, nie przechodzimy do show (uważam to za zbędny krok), tylko od razu przekierowuję naa stronę z wszytkimi gistami oraz wyświetlam odpowiedni komunikat.

 
