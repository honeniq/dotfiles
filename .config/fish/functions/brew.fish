## wrap 'brew' command on M1 Mac
function brew
  if test (uname -s) = "Darwin"
    and test (uname -m) = "arm64"
    command arch -x86_64 brew $argv
  else
    command brew $argv
  end
end
