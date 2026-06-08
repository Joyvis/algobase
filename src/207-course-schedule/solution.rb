# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  graph = Array.new(num_courses) { [] }
  in_degree = Array.new(num_courses, 0)

  prerequisites.each do |course, pr|
    graph[pr] << course
    in_degree[course] += 1
  end

  queue = (0..num_courses).select { in_degree[_1] == 0 }

  completed = 0
  until queue.empty?
    course = queue.shift
    completed += 1
    graph[course].each do |nxt|
      in_degree[nxt] -= 1
      queue << nxt if in_degree[nxt].zero?
    end
  end

  completed == num_courses
 end
