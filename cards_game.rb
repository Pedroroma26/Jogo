#Flash Card Game
#GITS 1º Git add e nome do ficheiro 2º Git commit -m "mensagem" 3º Git push
def cards_game()
    system "cls" #limpa o terminal
    puts "Hi! This is a mathematical app cards game"
    puts "Wich game do you whant to play? (add | subtract | multiply | divide)"
    game = gets.chomp.downcase

    if game == "add"
        #game add
        return add_game

    elsif game == "subtract"
        #game subtract
        return subtract_game

    elsif game == "multiply"
        #game multiply
        return multiply_game

    elsif game == "divide"
        #game divide
        return divide_game

    else
        puts "I dont know the game #{game}! Please chose one that I know! (hit enter)"
        gets
        cards_game
    end
end

#begin add game
def add_game()
    system "cls"
    puts "Hello this is the add game"
    #gera um numero aleatório entre 1 e 10
    numb1 = Random.rand(1 .. 10)
    numb2 = Random.rand(1 .. 10)
    correct_answer = numb1 + numb2
    
    puts "What is #{numb1} + #{numb2}?"
    #regista a resposta do utilizador
    user_answer = gets.chomp.to_i

    if correct_answer == user_answer
        puts "Correct! #{numb1} + #{numb2} = #{correct_answer}"
    else
        puts "Wrong! #{numb1} + #{numb2} = #{correct_answer} NOT #{user_answer}"
    end

    #se queremos jogar de novo, ou não, ou escolher outro jogo
    puts "Do you whant to play again? (y | n | restart)"
    play_again = gets.chomp.downcase

    if play_again == "y"
        return add_game
    elsif play_again == "n"
        puts "Thanks for playing!"
        return exit
    else play_again =="restart"
        return cards_game
    end
end
#end add game

#begin subtract game 
def subtract_game()
    system "cls"
    puts "Hello this is the add game"
    #gera um numero aleatório entre 1 e 10
    numb1 = Random.rand(1 .. 10)
    numb2 = Random.rand(1 .. 10)
    correct_answer = numb1 - numb2

    puts "What is #{numb1} - #{numb2}?"
    #regista a resposta do utilizador
    user_answer = gets.chomp.to_i

    if correct_answer == user_answer
        puts "Correct! #{numb1} - #{numb2} = #{correct_answer}"
    else
        puts "Wrong! #{numb1} - #{numb2} = #{correct_answer} NOT #{user_answer}"
    end

    #se queremos jogar de novo, ou não, ou escolher outro jogo
    puts "Do you whant to play again? (y | n | restart)"
    play_again = gets.chomp.downcase

    if play_again == "y"
        return subtract_game
    elsif play_again == "n"
        puts "Thanks for playing!"
        return exit
    else play_again =="restart"
        return cards_game
    end
end
#end subtract game

#begin multiply game 
def multiply_game()
    system "cls"
    puts "Hello this is the add game"
    #gera um numero aleatório entre 1 e 10
    numb1 = Random.rand(1 .. 10)
    numb2 = Random.rand(1 .. 10)
    correct_answer = numb1 * numb2

    puts "What is #{numb1} * #{numb2}?"
    #regista a resposta do utilizador
    user_answer = gets.chomp.to_i

    if correct_answer == user_answer
        puts "Correct! #{numb1} * #{numb2} = #{correct_answer}"
    else
        puts "Wrong! #{numb1} * #{numb2} = #{correct_answer} NOT #{user_answer}"
    end

    #se queremos jogar de novo, ou não, ou escolher outro jogo
    puts "Do you whant to play again? (y | n | restart)"
    play_again = gets.chomp.downcase

    if play_again == "y"
        return multiply_game
    elsif play_again == "n"
        puts "Thanks for playing!"
        return exit
    else play_again =="restart"
        return cards_game
    end
end
#end multiply game

#begin devide game 
def divide_game()
    system "cls"
    puts "Hello this is the add game"
    #gera um numero aleatório entre 1 e 10
    numb1 = Random.rand(1 .. 100) #para ajudar na divisão
    numb2 = Random.rand(1 .. 10)
    correct_answer = numb1 / numb2

    puts "What is #{numb1} / #{numb2}?"
    #regista a resposta do utilizador
    user_answer = gets.chomp.to_i

    if correct_answer == user_answer
        puts "Correct! #{numb1} / #{numb2} = #{correct_answer}"
    else
        puts "Wrong! #{numb1} / #{numb2} = #{correct_answer} NOT #{user_answer}"
    end

    #se queremos jogar de novo, ou não, ou escolher outro jogo
    puts "Do you whant to play again? (y | n | restart)"
    play_again = gets.chomp.downcase

    if play_again == "y"
        return divide_game
    elsif play_again == "n"
        puts "Thanks for playing!"
        return exit
    else play_again =="restart"
        return cards_game
    end
end
#end divide game


#Starts the game
cards_game
