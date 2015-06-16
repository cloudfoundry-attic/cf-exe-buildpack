function verify
{
  $output=$(TestApps\ConsoleApplicationTest.exe)

  if ( $output -ne "Hello World!" ) {
    throw "Output is not 'Hello World!'"
  }

  exit 0
}

function compile
{

  mkdir TestApps\cache

  TestApps\compile.bat TestApps TestApps\cache

  if ($LastExitCode -ne 0) {
    throw "Compile failed with exit code $LastExitCode."
  }

  exit 0
}

function detect
{
  bin\detect.bat TestApps

  if ($LastExitCode -ne 0) {
    throw "Detect failed with exit code $LastExitCode."
  }

  exit 0
}

function release
{
  $output=$(bin\release.bat)

  echo $output

  if ($LastExitCode -ne 0) {
    throw "Release failed with exit code $LastExitCode."
  }

  exit 0
}
