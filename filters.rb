# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

require "./candidates"

def find(id)
  # Your code Here
  candidates.each do |candidate| 
    if candidates[:id] == id
      return candidate
    end
  end
end
  
def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
    return true
  else 
    return false
  end
end
  
def qualified_candidates(candidates)
  # Your code Here
  qualified_candidates_arr = []
  candidates.each do |candidate|
    if experienced? candidate
      if candidate[:github_points] >= 100
        if candidate[:languages].include?("Ruby") ||  candidate[:languages].include?("Python")
          if candidate[:age] >= 18
            qualified_candidates_arr << candidate
          end
        end
      end
    end
  end
  qualified_candidates_arr
end
  
  
puts qualified_candidates @candidates
  # More methods will go below