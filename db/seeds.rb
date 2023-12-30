puts 'gerando purposes...'
5.times do
  Purpose.create(decision: ['criar e-books', 'ler livros', 'fazer cursos'].sample, why: 'melhorar as habilidades')
end
puts 'purpose gerados!'