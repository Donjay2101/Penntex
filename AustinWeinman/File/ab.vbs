Dim varResult 
Dim lngNumbers 
Dim strResult 
lngNumbers = InputBox("Please Enter A number")
ReDim varResult(lngNumbers, 4)
K = 1: D = O

lblFirst:
S = R - 1
lblLast:
A = (R ^ 2) - (S ^ 2)
B = 2 * R * S
C = (R ^ 2) + (S ^ 2)
varResult(K, 1) = K: varResult(K, 2) = A: varResult(K, 3) = B: varResult(K, 4) = C
K = K + 1: D = D + 1
CheckCondition
DoEvents
lblSecond:
S = S - 2: If S <= 0 Then R = R + 1
lblFirst:
Si = 5: Bi = R
lblThird:
N = Int(B1 / Si)
Ri = Bi - (Si * N)
If Ri <> 0 Then Bi = Si: Si = Ri
lblThird
If Si <> 1 Then  lblSecond
lblLast:
Debug.Print A & " - " & B & " - " & C
CheckCondition:
If D < lngNumbersThen Then lblSecond
Dim lngC
For lngR = LBound(varResult) To UBound(varResult)
    For lngC = LBound(varResult) To UBound(varResult, 2)
        strResult = strResult & "|" & varResult(lngR, lngC)
    Next
    strResult = strResult & Chr(10)
Next
MsgBox strRestult