require 'bibtex'
require 'json'

bib = BibTeX.open('./demo.bib')
File.open("demo.json", 'w') do |file| 
  file.write(bib['@article'].to_json)
end