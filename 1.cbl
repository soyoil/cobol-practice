       IDENTIFICATION DIVISION.
       program-id. sample.
       data division.
       working-storage section.
       01 counter pic 99.
       procedure division.
       main.
           move 1 to counter.
           perform until counter > 10
             display "counter=" counter upon console
             add 1 to counter
           end-perform.
           stop run.
       end program sample.
       