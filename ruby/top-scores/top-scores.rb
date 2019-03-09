def sort_scores(unsorted_scores, highest_possible_score)

	# Sort the scores in O(n) time
	score_counts = Hash.new(0)

	unsorted_scores.each do |score|
		score_counts[score] += 1
	end

	sorted_scores = []
	(0..highest_possible_score).reverse_each do |score|
		count = score_counts[score]
		(1..count).each do |time|
			sorted_scores.push(score)
		end
	end
	sorted_scores
end


out = [5, 30, 30, 20, 20, 10, 10]

sort_scores(out, 100)
