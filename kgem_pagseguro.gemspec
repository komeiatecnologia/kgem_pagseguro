Gem::Specification.new do |s|
	s.name 				  = 'kgem_pagseguro'
	s.version 		  = '0.0.3'
	s.summary 		  = 'PagSeguro Integration'
	s.description   = 'PagSeguro API Integration'
	s.author 			  = 'Komeia Interativa'
	s.email 			  = 'ti@komeia.com'
	s.homepage 		  = 'https://pagseguro.uol.com.br'
	s.files 			  = Dir["{lib/**/*.rb,README.rdoc,test/**/*.rb,Rakefile,*.gemspec}"]
  s.requirements << 'nokogiri, 1.5.11'
  s.post_install_message = "    **************************************************\n    Para funcionar corretamente, esta GEM depende do nokogiri 1.5.11 ou superior\n    **************************************************"
end