┌─╴Obj
  |Face {Pos Tex Norm}
  |Vert {Pos Tex Norm}

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
      ⊃(≡(⋕get) ⊙(¤map≡◇(⊃(⊡0|⊡1)) °□get"v") ⊡0
      | ≡(⋕get) ⊙(¤map≡◇(⊃(⊡0|⊡1)) °□get"vt") ⊡1
      | ≡(⋕get) ⊙(¤map≡◇(⊃(⊡0|⊡1)) °□get"vn") ⊡2
      )
      Face
    )
  )

  # Vert[] ? Face
  FaceToVerts ← (
    ⊃(Face~Pos|Face~Tex|Face~Norm)
    ≡Vert
  )
└─╴
