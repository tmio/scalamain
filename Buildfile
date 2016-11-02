require 'buildr/scala'
require 'buildr/gpg'
require 'buildr/custom_pom'

repositories.remote << "http://repo1.maven.org/maven2"

repositories.release_to[:url] = 'https://oss.sonatype.org/service/local/staging/deploy/maven2/'
repositories.release_to[:username] = ENV['USERNAME']
repositories.release_to[:password] = ENV['PASSWORD']

VERSION_NUMBER="1.0.2-SNAPSHOT"

define('scalamain', :group => 'io.tmio', :version => VERSION_NUMBER) do
  compile.options.source = '1.7'
  compile.options.target = '1.7'
  package(:jar).with :manifest=>manifest.merge('Main-Class'=>'io.tmio.scalamain.Main')
  package(:sources)
  package(:javadoc)

  test.using(:scalatest)

  pom.add_apache_v2_license
  pom.add_github_project('tmio/scalamain')
  pom.add_developer('atoulme', 'Antoine Toulme')
end
