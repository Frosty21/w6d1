# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# Task 2: experience candidates check
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

# Task 3: Finding by :id
# return a candidate via id else return null if not found
def find(id)
  if @candidates.find { |candidate| candidate[:id] == id }
    @candidates.find { |candidate| candidate[:id] == id }
  end
end

# Sub task: check if knows all languages for candidate
def knows_all_these_lngs?(candidate, lng_arr)
  (lng_arr - candidate[:languages]).empty?
end

# Sub task: check certain languages of candidate
def knows_of_these_lngs?(candidate, lng_arr)
  lng_arr.each { |lng| return true if candidate[:languages].include? lng }
  false
end

# Task 4: return all qualified candidates
def qualified_candidates(candidates)
  qualified = candidates.find_all do |candidate|
    experienced?(candidate) &&
      candidate[:github_points] >= 100 &&
      knows_of_these_lngs?(candidate, %w(Python Ruby)) &&
      candidate[:age] > 17 &&
      (Date.today - candidate[:date_applied]).to_i <= 15
  end
end

# Task 5: order all candidates by :years_of_experience then :github_points
def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }.reverse
end
