class MapReader
  def find_treasures(instructions)
    treasures = []
    xx = 0
    yy = 0
    instructions = instructions.split("|")
    mapa = instructions.map { |line| line.split("").map(&:to_i) }
    (0..mapa.size-1).each do |x|
      treasures << [mapa[x][0], mapa[x][1]]
      treasures << [mapa[x][2], mapa[x][3]]
    end
    if mapa.size == 2
      return [treasures.uniq.max]
    end
    vvv = 0
    intervalo = []
    (0..mapa.size-1).each do |x|
      if mapa[x][0] == mapa[x][2]
        xx = -mapa[x][1]+mapa[x][3]
        intervalo << [x, "xx", xx, mapa[x][0], mapa[x][1], mapa[x][3]]
      end
      if mapa[x][1] == mapa[x][3]
        yy = -mapa[x][0]+mapa[x][2]
        intervalo << [x, "yy", yy, mapa[x][1], mapa[x][0], mapa[x][2]]
      end
    end
    
    repetido = []

    intervalo.each_with_index do |line, index|
      case
        when line[1] == "yy"
          case
            when line[3] == 0 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                xx << [line[4]+x, line[3]]
                treasures << [line[4]+x, line[3]]
              end
            when line[3] == 1 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[4]+x, line[3]]
              end
            when line[3] == 2 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[4]+x, line[3]]
              end
            when line[3] == 3 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[4]+x, line[3]]
              end
            when line[3] == 4 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[4]+x, line[3]]
              end
          end
        when line[1] == "xx" 
          case
            when line[3] == 0 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[3], line[4]+x]
              end
            when line[3] == 1 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[3], line[4]+x]              
              end
            when line[3] == 2 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[3], line[4]+x]
              end
            when line[3] == 3 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[3], line[4]+x]
              end
            when line[3] == 4 && line[2] > 1
              (1..(line[2]-1)).each do |x|
                treasures << [line[3], line[4]+x]
                end
            end
        end
      end

      repetido = treasures.select { |x| treasures.count(x) > 1 }

      def final(repetido)
        x = repetido.tally
        qde = []
        final = []
        x.each do |k, q|
          qde << q
        end
        x.each do |k, quant|
          if x[k] == qde.max
            final << k
          end
        end
        final.sort
      end
      final(repetido) 
  end
end