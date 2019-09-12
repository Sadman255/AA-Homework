class GraphNode

attr_accessor :val, :neighbors

    def initialize(val)

        self.val = val 
        self.neighbors = [] 
    end

    def bfs(starting_node,target_value)
        visited = Set.new()
        arr = [starting_node]

        until arr.empty
            node= arr.shift

            unless visited.include?(node)

                return node.val if node.val == target_value 
                visited.add(node)
                arr += node.neighbors 
            end
        end

    end

    return nil

end



end