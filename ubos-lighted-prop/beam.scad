//
// We need two of those
//

$fn = 64;

$in     = 25.4; // everything in inches

$length = 9.0   * $in;
$height = 0.128 * $in;
$width  = 1.75  * $in;

module quarter( height, radius ) {
     intersection() {
        cylinder( h = height, r = radius );
        cube( [ radius, radius, height ] );
    }
}
union() {
    translate( [ 0, $height, 0 ] ) {
        cube( [ $length, $width - 2 * $height, $height ] );
    }

    translate( [ $length, $width-$height, 0 ] )
    rotate( [ 0, -90, 0 ] ) {
        quarter( height = $length, radius = $height );
    }
    translate( [ $length, $height, 0 ] )
    rotate( [ 90, 0, 0 ] )
    rotate( [ 0, -90, 0 ] ) {
        quarter( height = $length, radius = $height );
    }
}
