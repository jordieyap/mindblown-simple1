class Task < ActiveRecord::Base
    # provide some default values for any new task
    before_save :default_values
    def default_values
        self.status ||= 'new'
        self.priority ||= 'low'
    end
    validates :name, presence: true
    
end
