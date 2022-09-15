%nprocshared=12
%mem=24GB
#m06l/gen pseudo=read integral=ultrafine temperature=308 scrf=(read)

Title Card Required

0 4
C       -2.855608000      1.624690000     -2.696529000
C       -1.955720000      2.673896000     -2.930144000
C       -0.624700000      2.600902000     -2.429690000
C       -0.276680000      1.427223000     -1.654051000
C       -2.421710000      0.513341000     -1.947918000
H        0.163366000      4.490584000     -3.209024000
H       -3.879261000      1.648833000     -3.096578000
H       -2.263896000      3.553066000     -3.516890000
C        0.396104000      3.578472000     -2.638535000
C        1.955668000      2.165646000     -1.441611000
C        1.692158000      3.348944000     -2.159017000
H        2.509609000      4.057116000     -2.358831000
N        0.966890000      1.259608000     -1.137542000
N       -1.163391000      0.437994000     -1.431838000
C       -3.189149000     -0.700625000     -1.697288000
C        3.250184000      1.667665000     -1.025221000
N       -2.728503000     -1.669102000     -0.945562000
N        3.369736000      0.437208000     -0.561199000
Ni       1.536575000     -0.253312000     -0.011993000
C        0.194651000     -0.469788000      1.363808000
C       -0.928508000      0.108899000      1.913465000
C        1.872806000     -1.959113000      0.959651000
H        2.958977000     -2.086441000      1.116899000
C        0.971436000     -1.549478000      2.126506000
H        0.326548000     -2.385333000      2.501015000
C        1.240182000     -2.825605000     -0.025876000
H        1.823588000     -3.067909000     -0.930717000
C       -0.047705000     -3.353925000      0.058561000
H       -0.612420000     -3.338977000      1.003399000
H       -1.358057000     -0.473452000      2.760345000
C        5.405159000      1.612984000     -0.437681000
H        5.560860000      2.047265000      0.572253000
H        6.338181000      1.713591000     -1.022670000
C       -4.711099000     -2.294773000     -2.070375000
H       -4.527004000     -2.837011000     -3.020921000
H       -5.787035000     -2.357203000     -1.820443000
C       -3.750443000     -2.739440000     -0.930061000
H       -3.259476000     -3.701972000     -1.189846000
C        4.816623000      0.176251000     -0.387569000
H        4.990017000     -0.280941000      0.610350000
O       -4.384334000     -0.889576000     -2.294864000
O        4.372645000      2.406648000     -1.104010000
Ni      -0.634838000     -1.378807000     -0.679267000
Cl      -0.055019000     -2.034879000     -2.935487000
C       -4.445663000     -2.929022000      0.465640000
C       -5.206783000     -1.653313000      0.883190000
H       -4.524520000     -0.780234000      0.937197000
H       -6.030580000     -1.402692000      0.182662000
H       -5.661872000     -1.788672000      1.886775000
C       -5.425156000     -4.119629000      0.360040000
H       -4.898682000     -5.050486000      0.059093000
H       -5.907742000     -4.308013000      1.341791000
H       -6.237806000     -3.936069000     -0.374067000
C       -3.378972000     -3.256573000      1.529980000
H       -2.649457000     -2.427931000      1.631882000
H       -3.857473000     -3.419613000      2.518502000
H       -2.821066000     -4.180640000      1.269796000
C        5.406783000     -0.803651000     -1.466201000
C        5.277083000     -0.215962000     -2.888181000
H        4.215505000     -0.032270000     -3.153796000
H        5.836081000      0.735431000     -3.008536000
H        5.684775000     -0.930787000     -3.633038000
C        4.649888000     -2.145335000     -1.408384000
H        4.713824000     -2.605911000     -0.399803000
H        3.580810000     -2.008455000     -1.665533000
H        5.085429000     -2.864195000     -2.133367000
C        6.893993000     -1.050896000     -1.127304000
H        7.011011000     -1.479779000     -0.109057000
H        7.336563000     -1.769757000     -1.847857000
H        7.501205000     -0.122474000     -1.177589000
C       -1.629081000      1.374801000      1.691723000
C       -2.971184000      1.518663000      2.128722000
C       -0.992449000      2.535533000      1.171081000
C       -3.672593000      2.728257000      2.010065000
H       -3.481605000      0.652102000      2.579738000
C       -1.671372000      3.749179000      1.056071000
H        0.066719000      2.474883000      0.883895000
C       -3.024941000      3.858590000      1.460769000
H       -4.714708000      2.783501000      2.355186000
H       -1.169121000      4.646245000      0.662532000
C       -4.954997000      5.257842000      1.709583000
H       -5.644630000      4.589933000      1.146810000
H       -5.084211000      5.074295000      2.799535000
H       -5.212154000      6.310601000      1.488415000
O       -3.601696000      5.082524000      1.302261000
H       -0.399797000     -4.039770000     -0.725512000
C        1.720748000     -0.998062000      3.334761000
C        1.561623000     -1.597108000      4.603354000
C        2.592472000      0.111041000      3.226572000
C        2.249625000     -1.108567000      5.729662000
H        0.886206000     -2.462550000      4.709052000
C        3.280971000      0.602179000      4.348367000
H        2.722302000      0.595499000      2.243245000
C        3.112998000     -0.006371000      5.606880000
H        2.107997000     -1.593766000      6.708969000
H        3.952118000      1.469928000      4.241138000
H        3.651644000      0.379398000      6.487165000

H C N O Cl 0
def2TZVP
****
Ni 0
LANL2DZ
****

Ni 0
LANL2DZ

Eps=4.5

