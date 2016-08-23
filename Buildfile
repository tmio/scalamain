require 'buildr/scala'
require 'buildr/gpg'
require 'buildr/custom_pom'

VERSION_NUMBER='1.0.0-SNAPSHOT'

define('scalamain', :group => 'io.tmio', :version => VERSION_NUMBER) do
  package(:jar).with :manifest=>manifest.merge('Main-Class'=>'io.tmio.scalamain.Main')
  package(:sources)
  package(:javadoc)

  test.using(:scalatest)

  pom.add_apache_v2_license
  pom.add_github_project('tmio/scalamain')
  pom.add_developer('atoulme', 'Antoine Toulme')
end
