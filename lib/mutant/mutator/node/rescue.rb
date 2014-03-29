# encoding: utf-8

module Mutant
  class Mutator
    class Node
      # Mutator for rescue nodes
      class Rescue < Generic

        handle :rescue

        # Return identity
        #
        # @param [Parser::AST::Node] node
        #
        # @return [String]
        #
        # @api private
        #
        def self.identity(node)
          super(NodeHelpers.s(:kwbegin, node))
        end

      end # Rescue
    end # Node
  end # Mutator
end # Mutant
