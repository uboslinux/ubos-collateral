//
// Part 2 -- too big for the printer
//

include <ubos-letters-only-module.scad>

$in   = 25.4;
s     = 2.88;

difference() {
    translate( [ 0, -5.5 * $in, 0 ] ) {
        cube( [ 5.5 * $in, 4.65 * $in, 3 ] );
    };
    translate( [ -5 * $in, -5 * $in, -1 ] ) {
        cube( [ 4.5 * $in, 3 * $in, 5 ] );
    }
    translate( [ 0.5 * $in, -5 * $in, -1 ] ) {
        cube( [ 4.5 * $in, 3 * $in, 5 ] );
    }

    translate( [ 0, 0, -1 ] )
    linear_extrude( height=5 )
    rotate( [ 180, 0, 0 ] )
    scale( [ s, s, s ] ) {
        UbosLettersOnlyModule();
    };

    translate( [ 0, -5 * $in, -1 ] )
    linear_extrude( height=5 ) {
        $d = 0.25 * $in;
        polygon( points = [[ 0, 0 ], [ $d, $d ], [ 0, 2*$d ]] );
    };

    translate( [ 0, -2 * $in, -1 ] )
    linear_extrude( height=5 ) {
        $d = 0.25 * $in;
        polygon( points = [[ 0, 0 ], [ $d, $d ], [ 0, 2*$d ]] );
    };
};
