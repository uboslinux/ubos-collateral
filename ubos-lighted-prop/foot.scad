//
// We need two of those
//

$fn = 64;

$in     = 25.4; // everything in inches

$length = 6.25  * $in;
$width  = 0.5   * $in;
$thick  = 0.5   * $in;
$extent = 2     * $in;
$foot   = 0.25  * $in;
union() {
    cube( [ $length, $width, $thick ] );
    cube( [ $foot, $width*3, $extent ] );
}
