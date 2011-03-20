# More info at https://github.com/guard/guard#readme

guard 'sass' do
  watch(%r{sass/.+\.(scss|sass)})
end

guard 'shell' do
  watch(%r{haml/(.+)\.haml}) do |m|
    `haml -f html5 #{File.join("haml", m[1])}.haml #{m[1]}.html`
    puts "Rebuilt #{m[1]}.html"
  end
end

guard 'webrick', :port => 3000 do
end

guard 'livereload' do
  watch(%r{.+\.(html|htm)})
  watch(%r{css/.+\.(css)})
  watch(%r{sass/.+\.(scss|sass)})
  watch(%r{img/.+\.(png|jpeg|jpg)})
  watch(%r{js/.+\.(js)})
end
