#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    // Initialise the random number generator
    srand(time(NULL));

    // Generate a random number between 1 and 100
    int secretNumber = rand() % 100 + 1;

    printf("Bienvenue dans le jeu de deviner le nombre!\n");
    printf("Trouvez le nombre mystère entre 1 et 100\n");

    int guess;
    int attempts = 0;

    do {
        printf("Votre proposition : ");
        // Read the user input and store it in the guess variable
        scanf("%d", &guess);

        attempts++;

        if (guess < secretNumber) {
            printf("Le nombre mystère est plus grand. Essayez encore.\n");
        } else if (guess > secretNumber) {
            printf("Le nombre mystère est plus petit. Essayez encore.\n");
        } else {
            printf("Félicitations ! Vous avez trouvé le nombre mystère en %d tentatives.\n", attempts);
        }

    } while (guess != secretNumber);

    return 0;
}