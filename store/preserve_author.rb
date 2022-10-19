require 'json'

module AuthorPreserve
    def save_author(author)
        authorstore = { id: author.id, first_name: author.first_name, last_name: author.last_name }
    
        file = File.size('./json/author.json').zero? ? [] : JSON.parse(File.read('./json/author.json'))
        file.push(authorstore)
        File.write('./json/author.json', JSON.pretty_generate(file))
    end
end