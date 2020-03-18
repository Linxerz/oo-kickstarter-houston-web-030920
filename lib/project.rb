class Project
    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        if self.backers.include?(backer)
            nil
        else
        self.backers << backer
        backer.back_project(self)
        end
    end

    
end