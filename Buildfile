require 'buildr/scala'

VERSION_NUMBER='1.0.0.001-SNAPSHOT'

define('scalamain', :group => 'io.tmio', :version => VERSION_NUMBER) do
  package(:jar).with :manifest=>manifest.merge('Main-Class'=>'io.tmio.scalamain.Main')
  test.using(:scalatest)
end