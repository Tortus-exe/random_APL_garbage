]COLOR OFF
DISP←{8⎕CR ⍵}
func←'(r⍨¨⍳∘.+(0J1×⍳))'
WHERE←{(,⍵)⌿,⍳⍴⍵}

∇R←K nest S 
	pairedArguments← (1-⍨K),¨S
	R← {(⊂⍣(↑⍵))⊃1↓⍵}¨pairedArguments
∇

∇R←arrow F
	segments← +\ '()'∊⍨F
	nestingKey← {⍵/⍨1,2≢⌿⍵} +\(F∊'(') - (F∊')')
	segdFWithoutZeros← 1↓¨ (0≠nestingKey)/segments⊂F
	nestingKey←(0≠nestingKey)/nestingKey
	segmented← ⊃,/nestingKey nest segdFWithoutZeros
	R←segmented
∇

∇R←A (F AT G) W
	bitmask← W∊W[G]
	data←W
	newVals← A F bitmask/data
	(bitmask/data)← newVals
	R←data
∇

∇R←(F ATB G) W
	bitmask← W∊W[G]
	data←W
	newVals← F bitmask/data
	(bitmask/data)← newVals
	R←data
∇

x←⍳⍴func
dyadicOperatorKey← func∊'∘.⍤⍣@⍥J'
jotKey← dyadicOperatorKey∧¯1⌽func∊'∘'
dyadicOperatorKey←dyadicOperatorKey-1⌽jotKey		⍝ remove jots that are next to dots for outer product
processedKey← dyadicOperatorKey + 2×¯1⌽dyadicOperatorKey
dyadicProcessedFunc←func⊂⍨x-processedKey
monadicOperatorKey← {+/⍵∊'¨⍨/⌿\⍀'}¨dyadicProcessedFunc
DISP monadicOperatorKey
DISP (0 1 1 0 0){0~⍨¨,/⍉(~⍺)/⍵,[1]1⌽1↓[1]⍺⊖⍵,[0.5]0}'abc' 'def' 'ghi' 'hij' 'klm'

)OFF

