class Task
  attr_reader :description
  @@all_tasks = []
  define_method(:initialize) do |attributes|
    @description = attributes.fetch(:description)
  end

  define_singleton_method(:all) do
    @@all_tasks
  end

  define_method(:save) do
    @@all_tasks.push(self)
  end

  define_singleton_method(:clear) do
    @@all_tasks = []
  end

  define_method(:==) do |another_task|
    self.description().==(another_task.description())
  end
end
