# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# unless user.find(first_name: 'Frank', last_name: 'Mock')
# current_user = User.where(first_name: 'Collin').first

# mock_user = User.where(:first_name.in => ['Collin', 'Jake']).first

user1 = User.create(
  first_name: 'Jake',
  last_name: 'Fake',
  email: 'fake@email.com',
  agree_terms: true,
  password: 'qwerty',
  password_confirmation: 'qwerty'
)
user2 = User.create(
  first_name: 'Jane',
  last_name: 'Sane',
  email: 'jane@email.com',
  agree_terms: true,
  password: 'qwerty',
  password_confirmation: 'qwerty'
)

Question.create(
  question_user: user2,
  question_text: 'How much wood could a woodchuck chuck, if a woodchuck could chuck wood?',
  answers: [
    QuestionAnswer.new(answer_text: 'NOT THIS AGAIN!'),
    QuestionAnswer.new(answer_text: 'Why Why WHY??'),
    QuestionAnswer.new(answer_text: 'He could chuck all the wood a woodchuck could chuck if a woodchuch could chuck wood!')
  ],
  question_reveal_text: 'It\'s over, you can go home now!',
  correct_answer_index: '2'
)

Question.create(
  question_user: user1,
  question_text: 'What part did Adam West play in the 1986 zombie film "Zombie Nightmare"?',
  answers: [
    QuestionAnswer.new(answer_text: 'Slasher'),
    QuestionAnswer.new(answer_text: 'Jack'),
    QuestionAnswer.new(answer_text: 'Tom'),
    QuestionAnswer.new(answer_text: 'Mr. Rogers')
  ],
  question_reveal_text: 'Tony (Jon Mikl Thor) disrupted an attempted robbery and was run over by a gang of teenagers (Bob, Amy, Jim, Peter, and Susie). His mother, Louise, contacted a voodoo priestess, Molly, who resurrected Tony as a zombie. Tony killed Peter and Susie at the gym. Police investigated and told Capt. Tom Churchman (Adam West) that Molly might have had something to do with it. Churchman called Molly a "batty voodoo palm reader" and nothing to worry about. As the murders continued, Capt. Churchman knew more about what was happening than he told anyone.',
  correct_answer_index: '3'
)
Question.create(
  question_user: user1,
  question_text: 'Who played the zombie who shot someone in "Day of the Dead" (1985)?',
  answers: [
    QuestionAnswer.new(answer_text: 'Sherman Howard'),
    QuestionAnswer.new(answer_text: 'Jack'),
    QuestionAnswer.new(answer_text: 'Tom'),
    QuestionAnswer.new(answer_text: 'Mr. Rogers')
  ],
  question_reveal_text: 'Unrecognizable under the zombie makeup, Sherman Howard (Lex Luthor in "Superboy") played Bub, a zombie trained by Dr. Logan (Richard Liberty) in the movie "Day of the Dead" (1985). When the man in charge of the underground installation found out that Dr. Logan used military casualties to feed and train zombies, he shot Dr. Logan. Then the zombie shot him, leaving him to be attacked by other zombies. Sherman Howard appeared in various movies and TV shows, including the comedy soap "Good and Evil".',
  correct_answer_index: '2'
)
Question.create(
  question_user: user2,
  question_text: 'Let\'s go back to 1932 for this first flick, a grainy black-and-white entry which was produced and directed by Victor and Edward Halperin. Starring Bela Lugosi, Madge Bellamy and Robert W. Frazer and set in Haiti, it is unlike the zombie flicks of today. These original zombies could be trained to serve you, not just mindlessly try to make you the serving. What is the name of this acknowledged "first" zombie movie?',
  answers: [
    QuestionAnswer.new(answer_text: 'Wosadsadot!'),
    QuestionAnswer.new(answer_text: 'Whysadsad Not?'),
    QuestionAnswer.new(answer_text: 'White Zombie')
  ],
  question_reveal_text: '"White Zombie" is really a "frustrated love" story. Madeleine and Neil are in love, but Charles loves her too. Charles loves her so much he is willing to turn her into a zombie so she\'ll forget all about Neil. Murder (I kid you not, that\'s his name), played by Bela Lugosi, is the go-to guy for all things zombie, even operating a sugar mill with all-zombie labor. Eventually, Charles gets religion, and pushes Murder off a cliff, but conveniently ties up the love story by falling off it himself. "White Zombie" opened to mostly bad reviews: "New York World-Telegram" critic William Boehnel said "The plot... is really ridiculous, but not so startlingly so as the acting." [Quote from "White Zombie: Anatomy of a Horror Film" by Gary Don Rhodes.]',
  correct_answer_index: '2'
)
