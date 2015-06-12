$output=$(TestApps\ConsoleApplicationTest.exe)

if ( $output -ne "Hello World!" ) {
  throw "Output is not 'Hello World!'"
}
