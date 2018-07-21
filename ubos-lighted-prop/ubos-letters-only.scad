//
//
//

include <ubos-letters-only-module.scad>

s     = 2.88;
h     = 4;

linear_extrude( height=h )
scale( [ s, s, s ] ) {
    UbosLettersOnlyModule();
};
