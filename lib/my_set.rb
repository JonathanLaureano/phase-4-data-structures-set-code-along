# your code here
class MySet
    def initialize (enumerable = [])
        @hash = {}
        enumerable.each do |value|
        @hash[value] = true
        end
    end
    def include?(value)
        @hash.has_key?(value)
    end
    def add(value)
        @hash[value] = true # add a value as a key on the hash
        self                # return the updated set
    end
    def delete(value)
        @hash.delete(value)
        self
    end
    def size
        @hash.size
    end
    def self.[](*args)
        new(args)
      end
    
      def clear
        hash.clear
        self
      end
    
      def each(&block)
        self.hash.keys.each(&block)
        self
      end
    
      def inspect
        "#<#{self.class.name}: {#{self.hash.keys.join(', ')}}>"
      end
    
      private
    
      attr_reader :hash
      
      
      
end
  