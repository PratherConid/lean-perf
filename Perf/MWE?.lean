import Auto

open Lean in
def test : MetaM Unit := do
  let startTime ← IO.monoMsNow
  let expr := Expr.app (.const ``Not []) (.const ``True [])
  let _ ← Meta.withDefault <| Meta.whnf expr
  IO.println s!"{(← IO.monoMsNow) - startTime}"

#eval test
