require('spec_helper')

  describe(Task) do
    before do
      @new_task = Task.new({:description => "scrub the zebra", :list_id => 1, :due_date => "2016-12-12"})
    end

    describe('#description') do
      it('return the description of the task') do
        expect(@new_task.description()).to(eq("scrub the zebra"))
      end
    end

  describe(".all") do
      it("is empty at first") do
        expect(Task.all()).to(eq([]))
      end
    end

    describe("#save") do
      it("add a task to the array of saved tasks") do
        @new_task.save()
        expect(Task.all()).to(eq([@new_task]))
      end
    end

    describe('#==') do
      it('is the same task if it has the same description') do
        task2 = Task.new({:description => "scrub the zebra", :list_id => 1, :due_date => "2016-12-12"})
          expect(@new_task).to(eq(task2))
      end
    end

    describe("#list_id") do
      it('lets you read the list ID out') do
        expect(@new_task.list_id()).to(eq(1))
      end
    end

    describe("#sort") do
      it('let you sort the tasks by their due date') do

      end
    end

end
