//
// We need two of those
//

$fn = 64;

$in     = 25.4; // everything in inches

$length = 4.675 * $in;
$width  = 0.5   * $in;
$thick  = 0.5   * $in;
$extent = 1.25  * $in;

union() {
    cube( [ $length, $width, $thick ] );
    cube( [ $thick, $width, $extent ] );
}
