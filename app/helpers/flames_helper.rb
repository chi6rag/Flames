module FlamesHelper
  def findFLAME(your_name, crush_name)
      your_name = your_name.downcase
      crush_name = crush_name.downcase
      check_variable = ""
      
      (0..(your_name.length-1)).each do |i|
        check_variable = your_name[i]
        (0..(crush_name.length-1)).each do |j|
          if(check_variable == crush_name[j])
            # your_name[i] = "*"
            # crush_name[j] = "*"
            break;
          end
        end
      end
  #    puts(your_name)
  #   puts(crush_name)

      uncommon = 0
      (0..(your_name.length-1)).each do |i|
        if(your_name[i]=="*")
          #empty
        else
          uncommon+=1
        end
      end
      
      (0..(crush_name.length-1)).each do |i|
        if(crush_name[i]=="*")
          #empty
        else
          uncommon+=1
        end
      end
      # puts uncommon
    #   // console.log("Uncommon: " + uncommon);

      answer_number = (uncommon-1)%6
      answer_string = ""
      case(answer_number)
        when 0
          answer_string="Friends"
        when 1
          answer_string="Love"
        when 2
          answer_string="Affinity"
        when 3
          answer_string="Marriage"
        when 4
          answer_string="Enemies"
        when 5
          answer_string="Siblings"
        else
      end
      return answer_string
    end
end
