# Hangman Game

def hangman(right_answer,chance)

    user_answer = Array.new(right_answer.length,"__")          # user input will be stored
    
    while (chance > 0)  && (right_answer != user_answer)

        50.times{print "-"}
        
        # prints remaining chance
        puts "\n\nremaining chance : #{chance} " 

        # Prints the updated values in user answer
        print "GAME : "
        user_answer.each {|ele| print ele + "  "}
        
        #taking input key from user
        print "\n\nEnter the key : "      
        key = gets.chomp.upcase              

        #it updates the user_answer array if key is right
        if right_answer.include?(key)
        right_answer.each_with_index do |value,index|
            if value == key
                user_answer[index] = key
            end
        end 
        else 
            chance -= 1         # if user enters wrong key then the chance will be -1
        end
    end

    print "GAME : "
    user_answer.each do |ele|
        print ele+"  "
    end
    
    #compares both the array 
    if right_answer == user_answer
        puts "\n\n---YOU WON---"
    else
        puts "\n\n---YOU LOST---"
    end
    
end

games = ["CRICKET","FOOTBALL","CHESS","CARROM","GOLF","TENNIS","BASKETBALL","KABADDI"] 

#right answer is stored in the array
right_answer = games.sample.split("")                   
chance = right_answer.length 
#calling the function                                       
hangman(right_answer,chance)


