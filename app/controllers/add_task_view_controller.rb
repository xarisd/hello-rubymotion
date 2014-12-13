class AddTaskViewController < UIViewController
  attr_accessor :task

  def loadView
    self.view = AddTaskView.new
    view.layout_guide = self.topLayoutGuide
    view.layout_views
    # view.button.addTarget(self, action: :save_task, forControlEvents: UIControlEventTouchUpInside)
  end

  def viewDidLoad
    self.title = "Add Task"
  end

  def save_task
    # task.title = view.title_field.text
    # task.notes = view.notes_field.text
    navigationController.popViewControllerAnimated(true) if navigationController
  end
end