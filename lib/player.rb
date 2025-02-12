class Player

    attr_reader :full_name, :monthly_cost, :contract_length

    def initialize(full_name, monthly_cost, contract_length)
        @full_name = full_name
        @monthly_cost = 1000000
        @contract_length = 36
        
    end

    def first_name
        @full_name.split.first
    end

    def last_name
        @full_name.split.last
    end

    def total_cost
       @contract_length * @monthly_cost
    end
end