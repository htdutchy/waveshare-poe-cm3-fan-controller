#include <bcm2835.h>
#include <stdio.h>
#define PIN 34
int main(int argc, char **argv)
{
    if (!bcm2835_init())
    {
      return 1;
    }
   
    // Set the pin to be an output
    bcm2835_gpio_fsel(PIN, BCM2835_GPIO_FSEL_OUTP);
 
    // Turn it on
    bcm2835_gpio_write(PIN, HIGH);

    bcm2835_close();
    return 0;
}
