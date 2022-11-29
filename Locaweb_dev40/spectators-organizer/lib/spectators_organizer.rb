class SpectatorsOrganizer
  def evaluate(spectators)
    down_spectators = []
    down_spectators1 = []
    down_spectators2 = []
    down_spectators3 = []
    down_spectators4 = []
    down_spectators5 = []

    y = spectators[0].length - 1
    x = spectators.length - 1
    a = spectators.length - 1

    while y >= 0 do
      for i in 1..a
        x = spectators.length - 1
        if spectators[x][y] <= spectators[x - i][y] && (x-i) >= 0
          down_spectators1 << [x, y]
        end
        down_spectators1= down_spectators1.uniq()
      end
      for i in 1..a
        x = (spectators.length - 1)- 1
        if spectators[x][y] <= spectators[x-i][y] && (x-i) >= 0
          down_spectators2 << [x, y]
        end
        down_spectators2 = down_spectators2.uniq()
      end
      for i in 1..a
        x = (spectators.length - 1)- 2
        if spectators[x][y] <= spectators[x-i][y] && (x-i) >= 0
          down_spectators3 << [x, y]
        end
        down_spectators3 = down_spectators3.uniq()
      end
      for i in 1..a
        x = (spectators.length - 1)- 3
        if spectators[x][y] <= spectators[x-i][y] && (x-i) >= 0
          down_spectators4 << [x, y]
        end
        down_spectators4 = down_spectators4.uniq()
      end
      for i in 1..a
        x = (spectators.length - 1)- 4
        if spectators[x][y] <= spectators[x-i][y] && (x-i) >= 0
          down_spectators5 << [x, y]
        end
        down_spectators5 = down_spectators5.uniq()
      end
      y -= 1
    end
    down_spectators_finish = down_spectators1 + down_spectators2 + down_spectators3 + down_spectators4 + down_spectators5
    down_spectators_finish.sort()
  end
end