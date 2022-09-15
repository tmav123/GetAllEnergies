%nprocshared=12
%mem=20GB
%chk=Pro_R_E_TS.chk
#opt=(calcfc,ts,noeigen) freq=noraman bp86/gen pseudo=read integral=ultrafine temperature=308 scrf=(read)

Title Card Required

0 2
C 2.38586000 -2.69579400 2.62636700
C 1.41979200 -2.53676100 3.61743200
C 0.21083600 -1.87237000 3.32477800
C 0.03815900 -1.34263800 1.99260000
C 2.15122900 -2.16632200 1.35137800
H -0.72605200 -2.10813400 5.27976100
H 3.32056600 -3.22368300 2.81402200
H 1.57739800 -2.94033500 4.62090600
C -0.85808100 -1.72896300 4.26394300
C -2.18969800 -0.72771300 2.53255900
C -2.06365400 -1.18506600 3.85396100
H -2.92969700 -1.13469100 4.51638400
N -1.12569600 -0.71241500 1.63881600
N 1.00303500 -1.49774600 1.04237900
C 3.13672700 -2.34733400 0.27379200
C -3.41350800 -0.36919300 1.88559700
N 3.30208700 -1.58757300 -0.75278300
N -3.43616700 -0.15782000 0.57945200
Ni -1.56795900 0.25144000 -0.00246100
C 0.26549400 0.81315700 -0.00315800
C 0.68701800 1.77193500 0.85805700
C -1.48509600 0.38114400 -2.11231800
H -2.24637100 -0.28216700 -2.53439800
C -1.90781800 1.59866700 -1.52144300
H -1.14383600 2.35812600 -1.32522800
C -0.09833700 0.02582100 -2.40900300
H 0.08522500 -0.69532400 -3.20683600
C 0.96392800 0.84512700 -1.87044100
H 0.85318000 1.93286600 -1.82257800
H -0.04879400 2.10111300 1.60729400
C -5.55137200 0.17354000 1.54213800
H -5.68716800 1.25598800 1.70050100
H -6.49911500 -0.35047600 1.71931000
C 4.77746400 -3.47925000 -0.77523100
H 4.62009100 -4.43910800 -1.28634300
H 5.82153900 -3.41631700 -0.42916000
C 4.31592300 -2.24654800 -1.60997100
H 3.78784600 -2.58559400 -2.52183700
C -4.87153900 -0.13997900 0.19084000
H -5.05015700 0.67035300 -0.53125400
O 3.91821600 -3.46587000 0.40398000
O -4.59446500 -0.30613500 2.54920800
Ni 0.55922300 -0.86034000 -0.75192900
Cl 0.25587600 -2.91488200 -1.56839700
C 5.46236000 -1.29438400 -2.07072400
C 6.21268000 -0.69843900 -0.86267300
H 5.51910400 -0.16266900 -0.19600500
H 6.72685000 -1.47049800 -0.26633900
H 6.98210100 0.01319400 -1.20487300
C 6.43874300 -2.09930800 -2.95699700
H 5.91906000 -2.53879800 -3.82541000
H 7.23783700 -1.44373400 -3.34049500
H 6.92535300 -2.91829900 -2.40103800
C 4.85683700 -0.15092400 -2.91026100
H 4.18368200 0.47211200 -2.30286300
H 5.65360500 0.49877600 -3.30936300
H 4.28181100 -0.54583500 -3.76477100
C -5.33759500 -1.49251400 -0.46087800
C -5.22350200 -2.67445100 0.52565000
H -4.18082600 -2.82660500 0.84566100
H -5.84593800 -2.53782600 1.42472000
H -5.55466300 -3.60296500 0.03246400
C -4.47014100 -1.80030200 -1.69729400
H -4.53917900 -0.98920000 -2.44052900
H -3.41473900 -1.93876500 -1.41821800
H -4.81468800 -2.72907200 -2.18085400
C -6.80583600 -1.32162400 -0.91055200
H -6.91134000 -0.47888200 -1.61426500
H -7.15348600 -2.23420900 -1.42157200
H -7.48810300 -1.14395000 -0.06222400
C 1.95829100 2.49385000 0.90292400
C 2.03947200 3.72021800 1.59779500
C 3.14424500 2.01120700 0.29289900
C 3.22648500 4.45837000 1.66722400
H 1.14456800 4.10935100 2.09362400
C 4.33023500 2.73486800 0.35541500
H 3.13213400 1.03145300 -0.19289200
C 4.38306200 3.96943400 1.03456500
H 3.23876900 5.40323000 2.21285200
H 5.24705400 2.35908700 -0.10447800
C 5.70239800 5.84899900 1.71757500
H 5.02516400 6.60722700 1.28426800
H 5.48439900 5.73705900 2.79521300
H 6.74239600 6.17523500 1.58938700
O 5.60174800 4.60029300 1.02897800
H 1.98626500 0.55101500 -2.12880200
C -3.25954900 2.18324800 -1.68027400
C -4.10774000 1.84152300 -2.75594900
C -3.70361900 3.17673800 -0.77823800
C -5.36143000 2.44837000 -2.90671200
H -3.76531300 1.11880200 -3.50072100
C -4.95533700 3.78073100 -0.92616700
H -3.05243100 3.46466600 0.05240500
C -5.79556200 3.41453700 -1.98958000
H -5.99506700 2.17564700 -3.75510800
H -5.27643800 4.54591400 -0.21396900
H -6.77161400 3.89107600 -2.11080100

H C N O Cl 0
def2SVP
****
Ni 0
LANL2DZ
****

Ni 0
LANL2DZ

Eps=4.5

