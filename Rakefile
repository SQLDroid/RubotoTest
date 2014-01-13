# Write your own rake tasks here.
# You can find the Ruboto rake tasks in rakelib/ruboto.rake

task :test => :update_sqldroid

task :update_sqldroid do
  FileUtils.mkdir_p 'libs'
  FileUtils.rm_f Dir['libs/sqldroid-*.jar']
  Dir.chdir '../SQLDroid' do
    sh 'rake clean jar'
    FileUtils.cp Dir['pkg/*.jar'], '../SQLDroidRubotoTest/libs/'
  end
end
