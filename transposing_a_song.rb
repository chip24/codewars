# My code was ranked 5 out of 49.  I retained and submitted transpose2, but it became 5 and the original code 6.

def transpose(song, interval)
  sharps = %w(A A# B C C# D D# E F F# G G#)
  equals = {"Bb"=>"A#", "Db"=>"C#", "Eb"=>"D#", "Gb"=>"F#", "Ab"=>"G#"}
  
  sharp_song = song.map do |str| 
    if str.include?("b")
      str = equals[str]
    else
      str
    end
  end

  transposed = sharp_song.map do |note|
    new_index =  (sharps.find_index(note) + interval) % sharps.length
    sharps[new_index]
  end

  transposed
end

transpose(['A'], 0)
transpose(['A'], 1)
transpose(['E'], 5)
transpose(['D#'] , 8)
transpose(['Ab', 'Gb'] , 2)
transpose(['Bb', 'C#', 'E'] , -4)
transpose([], 9)
transpose(['A'], -1)
transpose(['A#', 'C#', 'D', 'D#', 'A#', 'F#', 'D#'] , -6)
transpose(['C', 'C', 'C#', 'D', 'F', 'D', 'F', 'D', 'D', 'C#', 'C', 'G', 'C', 'C'] , 4)

def transpose2(song, interval)
  sharps = %w(A A# B C C# D D# E F F# G G#)
  equals = {"Bb"=>"A#", "Db"=>"C#", "Eb"=>"D#", "Gb"=>"F#", "Ab"=>"G#"}

  song.map { |note| equals[note] || note }
      .map { |note| sharps[(sharps.index(note) + interval) % sharps.length] }
  
  end

p transpose2(['A'], 0)
p transpose2(['A'], 1)
p transpose2(['E'], 5)
p transpose2(['D#'] , 8)
p transpose2(['Ab', 'Gb'] , 2)
p transpose2(['Bb', 'C#', 'E'] , -4)
p transpose2([], 9)
p transpose2(['A'], -1)
p transpose2(['A#', 'C#', 'D', 'D#', 'A#', 'F#', 'D#'] , -6)
p transpose2(['C', 'C', 'C#', 'D', 'F', 'D', 'F', 'D', 'D', 'C#', 'C', 'G', 'C', 'C'] , 4)
