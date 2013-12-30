require 'sinatra'

get '/' do
	erb :home
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

__END__

@@layout
<% title = "Songs by sinatra" %>
<!doctype html>
<html lang="en">
<head>
	<title>Songs By Sinatra</title>
	<meta charset="utf-8">
</head>
<body>
	<header>
		<h1><%= title %></h1>
		<nav>
			<ul>
				<li><a href="/" title="Home">Home</a></li>
				<li><a href="/about" title="About">About</a></li>
				<li><a href="/contact" title="Contact">Contact</a></li>
			</ul>
		</nav>
	</header>
	<%=yield%>
	
	</body>
	</html>


@@home 
<section>
		<p>Welcome to this website all about the songs of the Great Frank Sinatra</P>
</section>

@@about
<p>This site is a demonstration of how to build website using Sinatra</p>


@@contact
<p>You can contact me by sending an email at john@appleseed.com</p>
