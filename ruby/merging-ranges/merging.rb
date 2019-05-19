def merge_ranges(meetings)
  # Merge meeting ranges.
  sorted_meetings = meetings.sort
  merged_meetings = sorted_meetings.first

  sorted_meetings[1..].each do |current_meeting_start, current_meeting_end|
    last_meeting = merged_meetings.pop
    meeting_start, meeting_end = last_meeting
    puts meeting_start
    puts meeting_end
    puts last_meeting.each(&:to_s).join(', ')
    if last_meeting[1] >= current_meeting_start
      merged_meetings.push([last_meeting[0], [last_meeting[1], current_meeting_end].max])
    else
      merged_meetings.push(last_meeting, [current_meeting_start, current_meeting_end])
    end
  end

  merged_meetings
end


meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
puts merge_ranges(meetings)