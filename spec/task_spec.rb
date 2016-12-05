require('rspec')
require('task')

describe(Task) do
  describe('#description') do
    it('return the description of the task') do
      new_task = Task.new({:description => "scrub the zebra"})
      expect(new_task.description()).to(eq("scrub the zebra"))
    end
  end
end
