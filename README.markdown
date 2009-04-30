* Quick, simple, easy captcha for Sinatra apps

<pre><code>
require 'rubygems'
require 'sinatra'
require 'sinatra/captcha'

get '/' do
  erb :captcha
end

post '/' do
  if captcha_pass?
    halt 401, "invalid captcha"
  else
    "passed!"
  end
end

__END__

@@ captcha

<h1>Catcha Example</h1>
<form method="post" action="/">
  <p><%= captcha_image_tag %></p>
  <p><%= captcha_answer_tag %></div>
  <div><input type="submit" value="Submit" /></div>
</form>
</code></pre>

Thank you to ERR THE BLOG for inspiration:
http://errtheblog.com/posts/43-captchator-on-rails
