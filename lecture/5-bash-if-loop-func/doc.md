### Операторы проверки файлов

**-d** - существует ли каталог

**-e** - существует ли файл

**-r** - существует ли файл и доступел ли он для чтения

**-w** - существует ли файл и доступел ли он для записи

**-x** -  существует ли файл и является ли он исполняемым

### Числовые тестовые операторы. [[]]

**-eq** - равно

**-gt** - больше

**-lt** - меньше

Синтакс

    let arg [arg ...]


Список некоторых арифметических операторов.

** var++ var-- ++var --var ** - сложение, вычитание, причем с пред и пост интерпретацией.

**!** - логическое отрицание

** *, /, % ** - умножение, деление, модуль

**<<, >>** - побитовое смещение

3 подстановочных символа * ? [].

Например 

*.txt - соответствует любому файлу с расширением txt.

/usr/bin/g\**- соответствует всем файлам в /usr/bin , которые начинаются с буквы g

source.? 


Так, шаблон x[^abc]y соответствует любому или всем файлам с именами xay , xby или xcy при условии, что они существуют. 

Вы можете указать диапазон в квадратных скобках, например: [0–9] для всех цифр.


### Таблица классов символов.

**[:alnum:]** Алфавитно-цифровой

**[:alpha:]** Буквенный

**[:ascii:]** ASCII (американский стандартный код для обмена информацией)

**[:blank:]** Пробел и символ табуляции

**[:ctrl:]**  Управляющий символ

**[:digit:]** Число

**[:graph:]** Все что угодно, кроме управляющих символов и пробела

**[:lower:]** Символы в нижнем регистре

**[:print:]** Все, кроме управляющих символов

**[:punct:]** Символы пунктуации

**[:space:]** Пробелы, включая разрывы строк

**[:upper:]** Символы в верхнем регистре

**[:word:]** Буквы, цифры и символ подчеркивания

**[:xdigit:]** Шестнадцатеричный символ



    *[[:punct:]]jpg

Cоответствует любому имени файла, имеющему любое количество любых
символов, за которыми следуют знаки пунктуации, а за ними — буквы jpg.

this.is.myjpg



Сигнатура:

    typesearch.sh [-c dir] [-i] [-R|r] <pattern> <path>

-c Копировать найденные файлы в каталог

-i Игнорировать регистр

-R|r Рекурсивный поиск подкаталогов

<pattern>  - Шаблон типа файла для

<path>  - Путь для начала поиска

