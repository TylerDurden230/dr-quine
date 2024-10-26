#include <stdio.h>

// Commento fuori dalla funzione main

void helper_function() {
    char *source = "#include <stdio.h>%c%c// Commento fuori dalla funzione main%c%cvoid helper_function() {%c    char *source = %c%s%c;%c    printf(source, 10, 10, 10, 10, 10, 34, source, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main() {%c    // Commento all'interno della funzione main%c    helper_function();%c    return 0;%c}%c";
    printf(source, 10, 10, 10, 10, 10, 34, source, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main() {
    // Commento all'interno della funzione main
    helper_function();
    return 0;
}
