a←⟨1,2,2,1,1,1,3,3,3,3,3⟩
b←"abcd"

MyLast←{⊑⌽𝕩}
MyButLast←{⌽2↑⌽𝕩}
ElementAt←⊐
NumElem←≠
Reverse←⌽
Palindrome←⌽≡⊢
Flatten←{(∾𝕊¨)⍟(1<≡)⥊𝕩}
Compress←{𝕩/˜(1⊸⌽≠⊢)𝕩}
Pack←{𝕩⊔˜1-˜(+`¯1⊸⌽≠⊢)𝕩}
RLE←{(≠∾⊏)¨Pack𝕩}

EncodeModified←{>1∘↑⍟{1=⊏𝕩}¨ RLE𝕩}
DecodeModified←{Flatten {(⊏𝕩)⥊1⊏𝕩}¨{1∾𝕩}⍟{1≠=}¨ 𝕩}
EncodeDirect←EncodeModified #just do this later lol
Dupli←{⥊⍉>⟨𝕩⋄𝕩⟩}
Repli←{⥊⍉>⟨𝕨,≠𝕩⟩⥊𝕩}
Drop←{𝕩/˜(𝕨-1)≠𝕨|↕≠𝕩}
Split←{⟨𝕨↑𝕩,𝕨↓𝕩⟩}
Slice←{⟨u,l⟩←𝕨⋄(u-1)↓l↑𝕩}
Rotate←⌽
RemoveAt←{𝕩/˜(𝕨-1)≠↕≠𝕩}

InsertAt←{⟨a,b⟩←⟨𝕨,𝕩⟩⋄{⟨a↑b,𝕩,a↓b⟩}}
Range←{𝕩∾˜𝕨↓↕𝕩}
Rand←{3↑𝕩⊏˜•rand.Deal≠𝕩}
Lotto←{F←•rand.Deal⋄⊏´F¨⟨𝕨,𝕩⟩}
RndPermu←{𝕩⊏˜•rand.Deal≠𝕩}
Combinations←{<˘𝕩⊏˜>((⍷≡⊢)¨/⊢)⥊↕𝕨⥊≠𝕩}
# do this problem later cuz it's fuckin hard bro -> 27
# this one too... it's really complicated haha

IsPrime←{⊑¬𝕩∊⥊×⌜˜2+↕𝕩-1}
GCD←{𝕨(|𝕊⍟(>⟜0)⊣)𝕩}
Coprime←{1=𝕨GCD𝕩}
TotientPhi←{a/˜𝕩⊸Coprime¨a←1+↕𝕩}
PrimeFactors←{⟨⟩{}𝕩}


•Out∘•Fmt PrimeFactors 10
