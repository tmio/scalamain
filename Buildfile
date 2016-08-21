THIS_VERSION='1.0.0.001-SNAPSHOT'

define('scalamain', :group => 'io.tmio', :version => THIS_VERSION) do
  package(:jar).with :manifest=>manifest.merge('Main-Class'=>'io.tmio.scalamain.Main')
  test.using(:scalatest)
end