class Task
  attr_reader(:description)

  define_method(:initialize) do |attributes|
    @description = attributes.fetch(:description)
  end

  define_singleton_method(:all) do
    []
  end

  define_method(:==) do |another_task|
    self.description().==(another_task.description())
  end
end
