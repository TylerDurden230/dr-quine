#include <stdio.h>

// Outside comment

void helper_function() {
    char *source = "#include <stdio.h>%c%c// Outside comment%c%cvoid helper_function() {%c    char *source = %c%s%c;%c    printf(source, 10, 10, 10, 10, 10, 34, source, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main() {%c    // Inside comment%c    helper_function();%c    return 0;%c}%c";
    printf(source, 10, 10, 10, 10, 10, 34, source, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main() {
    // Inside comment
    helper_function();
    return 0;
}
