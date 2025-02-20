# Experimental!

|Face {Pos Tex Norm}
|Vert {Pos Tex Norm}

LookupVerts! ← ≡(⋕get⍤"backwards indexes not yet supported">0.) ⊙(¤map≡◇(⊃(⊡0|⊡1)) °□get ^0)
  
# Face[] ? String
Parse ← (
  ≡⍚(SplitBy" " Trim) SplitBy"\n"
  ≡◇(⍣(1°"v"|2°"vt"|3°"vn"|3°"f"|0) °□⊢).
  ⍜⊕□⍚(+₁⇡⧻).
  ≡(⊙(□⊂) :⊙⊃(◇⊢|⍚(↘1)))
  ≡(□ ≡⊡ ⊙(¤°□) ⊚≡◇≍) {"v" "vt" "vn" "f"} ∩¤
  map{"v" "vt" "vn" "f"}

  ⊙¤°□get"f".
  ≡(⍉≡◇(≡◇⋕ SplitBy"/")°□⊡1°□
    ⊃(LookupVerts!"v" ⊡0
    | LookupVerts!"vt" ⊡1
    | LookupVerts!"vn" ⊡2
  )
  Face
  )
)
  
# Vert[] ? Face
FaceToVerts ← (
  ⊃(Face~Pos|Face~Tex|Face~Norm)
  ≡Vert
)
