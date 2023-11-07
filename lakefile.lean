import Lake
open Lake DSL

require Duper from git "https://github.com/leanprover-community/duper.git"@"main"

package «Perf» where
  -- add package configuration options here

@[default_target]
lean_lib «Perf» where

lean_exe «perf» where
  root := `Main
  -- Enables the use of the Lean interpreter by the executable (e.g.,
  -- `runFrontend`) at the expense of increased binary size on Linux.
  -- Remove this line if you do not need such functionality.
  supportInterpreter := true
