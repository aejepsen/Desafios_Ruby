class ElementSwap
  def switch(letters, instructions)
    array_instructions = []

    instructions.each_line do |line|
      array_instructions << line
    end

    instructions_size = []
    instructions_index_2p = []
    instruction_A = []
    instruction_B = []

    array_instructions.each do |instruction|
      instructions_size << instruction.size
    end
    
    while instruction_A.size < instructions_size.size
      array_instructions.each do |instruction|
        instructions_index_2p << instruction.index(':')
        if instruction.include?('^v')
          instruction_A << instruction[0..(instruction.index(':')-1)]
          instruction_B << instruction[(instruction.index(':')+1)..(instruction.size-2)].to_i
        else
          instruction_A << instruction[0..(instruction.index(':')-1)].to_i
          instruction_B << instruction[(instruction.index(':')+1)..(instruction.size-2)]
        end  
      end
    end

    array_instructions.each do |instruction|
      if instruction.include?('<>')
        xx = instruction[0].to_i
        yyy = instruction[2].to_i
        syyy = letters[xx][yyy]
        xxx = instruction[5].to_i
        sxxx = letters[xx][xxx]
        letters[xx][yyy] = sxxx
        letters[xx][xxx] = syyy
      else
        v = instruction[3].to_i
        vv0 = letters[0][v]
        vv1 = letters[1][v]
        letters[0][v] = vv1
        letters[1][v] = vv0
      end
    end
    letters
  end
end
