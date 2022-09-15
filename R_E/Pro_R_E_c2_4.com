%nprocshared=12
%mem=24GB
%chk=Pro_R_E_c2_4.chk
#opt=(MaxCycles=500) freq=noraman bp86/gen pseudo=read integral=ultrafine temperature=308 scrf=(read)

Title Card Required

0 4
C        2.072412000     -2.299804000      3.321334000
C        1.123832000     -1.817269000      4.222386000
C       -0.062138000     -1.193918000      3.736635000
C       -0.192657000     -1.036997000      2.305077000
C        1.839830000     -2.144851000      1.933414000
H       -1.060199000     -0.824559000      5.651655000
H        2.977976000     -2.820931000      3.661986000
H        1.265440000     -1.940333000      5.307248000
C       -1.137056000     -0.735545000      4.557312000
C       -2.344895000     -0.133193000      2.549865000
C       -2.289758000     -0.227904000      3.959529000
H       -3.159852000      0.080076000      4.557253000
N       -1.291101000     -0.456253000      1.743789000
N        0.755499000     -1.495093000      1.447891000
C        2.685071000     -2.742163000      0.895627000
C       -3.521512000      0.214735000      1.768915000
N        2.420448000     -2.669843000     -0.374487000
N       -3.525932000      0.042781000      0.470175000
Ni      -1.613967000     -0.278245000     -0.213832000
C        1.695101000      0.400804000     -0.576177000
C        2.409459000      1.009405000      0.406744000
C       -1.073137000      0.342384000     -2.107445000
H       -1.861787000     -0.039610000     -2.779313000
C       -1.342932000      1.494509000     -1.318696000
H       -0.504695000      1.933846000     -0.748596000
C        0.271872000     -0.231434000     -2.261715000
H        0.350473000     -0.992372000     -3.059218000
C        1.482923000      0.689352000     -2.029573000
H        1.296919000      1.761292000     -2.286537000
H        2.325940000      0.605478000      1.432936000
C       -5.585618000      0.918089000      1.254232000
H       -5.736262000      2.014911000      1.197326000
H       -6.548400000      0.434153000      1.509709000
C        4.389804000     -3.948813000      0.076453000
H        4.533116000     -5.042763000      0.165963000
H        5.383908000     -3.459712000      0.003693000
C        3.411773000     -3.531773000     -1.064164000
H        2.855841000     -4.426478000     -1.430529000
C       -4.888484000      0.338607000     -0.015369000
H       -4.822089000      1.116754000     -0.805412000
O        3.752841000     -3.475064000      1.296313000
O       -4.654674000      0.655231000      2.350552000
Ni       0.598301000     -1.159301000     -0.513044000
Cl      -1.238937000     -2.692376000     -0.769859000
C        4.093026000     -2.895680000     -2.316208000
C        4.780017000     -1.562230000     -1.956919000
H        4.059718000     -0.847322000     -1.509156000
H        5.610915000     -1.700773000     -1.232971000
H        5.216276000     -1.096704000     -2.865306000
C        5.134602000     -3.897862000     -2.865168000
H        4.668170000     -4.877901000     -3.103079000
H        5.586459000     -3.505742000     -3.800252000
H        5.965821000     -4.077560000     -2.150882000
C        3.011950000     -2.662349000     -3.391091000
H        2.212849000     -1.998647000     -3.009722000
H        3.452815000     -2.196662000     -4.297360000
H        2.537250000     -3.619203000     -3.695827000
C       -5.584760000     -0.913427000     -0.654884000
C       -5.659801000     -2.078559000      0.353555000
H       -4.644773000     -2.398456000      0.666949000
H       -6.238324000     -1.812717000      1.263966000
H       -6.161447000     -2.954632000     -0.108036000
C       -4.775894000     -1.355991000     -1.893064000
H       -4.715032000     -0.538017000     -2.641933000
H       -3.743301000     -1.656727000     -1.620089000
H       -5.267383000     -2.223451000     -2.382280000
C       -7.004883000     -0.501941000     -1.104074000
H       -6.972396000      0.352752000     -1.813165000
H       -7.502603000     -1.349196000     -1.620452000
H       -7.654632000     -0.212693000     -0.251053000
C        3.305391000      2.177713000      0.314193000
C        3.807180000      2.750234000      1.511525000
C        3.724959000      2.784061000     -0.905108000
C        4.661226000      3.865325000      1.516753000
H        3.512740000      2.304880000      2.476705000
C        4.575017000      3.893534000     -0.916777000
H        3.391791000      2.371752000     -1.867599000
C        5.052070000      4.452334000      0.292817000
H        5.015387000      4.266712000      2.477117000
H        4.894723000      4.351107000     -1.866107000
C        6.386584000      6.130377000      1.361795000
H        5.571718000      6.516174000      2.015071000
H        7.008577000      5.417204000      1.948493000
H        7.019921000      6.978117000      1.039058000
O        5.876490000      5.535566000      0.175034000
H        2.349412000      0.353872000     -2.644180000
C       -2.491202000      2.404615000     -1.488436000
C       -3.372525000      2.336736000     -2.600250000
C       -2.705618000      3.442710000     -0.542134000
C       -4.425577000      3.254950000     -2.749116000
H       -3.211879000      1.570784000     -3.374786000
C       -3.759880000      4.356364000     -0.688270000
H       -2.025382000      3.524573000      0.321695000
C       -4.629712000      4.267558000     -1.793250000
H       -5.086399000      3.185342000     -3.628254000
H       -3.900640000      5.151667000      0.061529000
H       -5.452116000      4.990238000     -1.914502000

H C N O Cl 0
def2SVP
****
Ni 0
LANL2DZ
****

Ni 0
LANL2DZ

Eps=4.5

