# breadth-first search algorithm
class BFS
  def criterium_check(name)
    name.include? 'nn'
  end

  def search(graph, start)
    queue = graph[start]
    searched = []
    until queue.empty?
      name = queue.shift
      unless searched.include?(name)
        return name if criterium_check name
        searched.push name
        unless graph[name].empty?
          queue = [queue, graph[name]].reduce(:concat)
        end
      end
    end
    nil
  end
end

# test

graph = {}
graph['you'] = %w[alice bob claire]
graph['bob'] = %w[anuj peggy]
graph['alice'] = ['peggy']
graph['claire'] = %w[tom jonny]
graph['anuj'] = []
graph['peggy'] = []
graph['tom'] = []
graph['jonny'] = []

bfs = BFS.new
puts bfs.search(graph, 'you')
